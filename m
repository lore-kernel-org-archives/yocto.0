Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 139EDE00E83; Thu, 24 Sep 2015 06:24:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0236.hostedemail.com
	[216.40.44.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0983E009EF
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 06:24:31 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id E77856B52B
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 13:24:24 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: peace18_956232ea0119
X-Filterd-Recvd-Size: 2099
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 13:24:24 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Sep 2015 14:24:20 +0100
Organization: SDC Systems Limited
Message-ID: <004101d0f6cc$52e3da90$f8ab8fb0$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdD2zFHE2gTC3L45SW+OgjOzWAze1A==
Subject: Setting root password
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 13:24:36 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Hello,

Looking around the web and reading the assorted documents it seems to be
that the defined way to set the root password is to remove "debug-tweaks"
from EXTRA_IMAGE_FEATURES and to add the following lines to local.conf:

require conf/distro/include/security_flags.inc
INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "usermod -P <encrypted_password> root;"

When I try to build core-image-minimal then the build fails with the
following:

| DEBUG: Executing shell function set_user_group
| NOTE: Performing usermod with [-R
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
1.0-r0/rootfs -P Hkw6rBJlcfhvM root] and 1 times of retry
| Server refused shutdown.  Remaining client fds: 2
| Client pids: 3878 16245
| Server will shut down after all clients exit.
| WARNING: usermod command did not succeed. Retrying...
| ERROR: Tried running usermod command 1 times without success, giving up
| WARNING:
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
1.0-r0/temp/run.set_user_group.3878:1 exit 1 from
|   exit 1
| DEBUG: Python function do_rootfs finished
| ERROR: Function failed: set_user_group (log file is located at
XXXXX/build/tmp/work/intel_core2_32-poky-linux/core-image-minimal-initramfs/
1.0-r0/temp/log.do_rootfs.3878)

Any ideas on how to make this work?

Thanks,

Andy.


