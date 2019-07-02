Return-Path: <alexander.stein@systec-electronic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CFA4E00D6C; Mon,  1 Jul 2019 23:02:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.118.221.216 listed in list.dnswl.org]
X-Greylist: delayed 343 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Jul 2019 23:02:01 PDT
Received: from s1.ox4u.de (ox4u.de [212.118.221.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E100AE00C09
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 23:02:01 -0700 (PDT)
Received: by s1.ox4u.de (Postfix, from userid 65534)
	id 56ED4260087; Tue,  2 Jul 2019 07:56:16 +0200 (CEST)
Received: from ws-140106.localnet (unknown [212.185.67.146])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by s1.ox4u.de (Postfix) with ESMTPSA id 281A7260084
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 07:56:16 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
To: yocto@yoctoproject.org
Date: Tue, 02 Jul 2019 07:56:15 +0200
Message-ID: <6621707.vr12PsKZiC@ws-140106>
MIME-Version: 1.0
Subject: useradd-staticids: problem with --user-group
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Jul 2019 06:02:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

I need to use useradd-staticids to have fixed UID/GID during update. For that I've set the following in my conf/local.conf:
> USERADD_ERROR_DYNAMIC = "1"
> USERADDEXTENSION = "useradd-staticids"
> USERADD_GID_TABLES = "files/group"
> USERADD_UID_TABLES = "files/passwd"

After deleting TMPDIR and rebuilding I get a build error in dbus package. In the log.do_prepare_recipe_sysroot logfile I have the following lines:
> [...]
> Running groupadd commands...
> NOTE: dbus: Performing groupadd with [--root $TMPDIR/work/cortexa7hf-neon-poky-linux-gnueabi/dbus/1.12.2-r0/recipe-sysroot --force --gid 999 --system netdev]
> NOTE: dbus: group netdev already exists, not re-creating it
> NOTE: dbus: Performing groupadd with [--root $TMPDIR/work/cortexa7hf-neon-poky-linux-gnueabi/dbus/1.12.2-r0/recipe-sysroot  --gid 998 messagebus]
> groupadd: GID '998' already exists

In $TMPDIR/work/cortexa7hf-neon-poky-linux-gnueabi/dbus/1.12.2-r0/recipe-sysroot/etc/group there the following entries:
> [...]
> nogroup:*:65534:
> systemd-journal:x:999:
> systemd-timesync:!:998:
> systemd-network:!:997:
> systemd-resolve:!:996:
> polkitd:!:995:
> systemd-bus-proxy:!:994:
> netdev:x:993:

So, ok. netdev is already there, but due to the --force parameter this is no error. But for adding the user-group using a fixed GID without --force fails as GID 998 is already used for systemd-timesync at this stage.

$ grep systemd-timesync files/group 
systemd-timesync:x:990:

So I wonder how to solve that. Should --force be added to the user-group step too? Or should the wanted GIDs for groups like systemd-timesync also be fixed before adding dbus specific users/groups?

I'm currently using sumo and without using useradd-staticids the build is fine, but the mapping user<->UID/GID might alter.

Best regards,
Alexander




