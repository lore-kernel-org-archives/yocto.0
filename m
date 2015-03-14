Return-Path: <padam.singh@inventum.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB39E00754; Sat, 14 Mar 2015 00:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [108.166.43.110 listed in list.dnswl.org]
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Sat, 14 Mar 2015 00:26:45 PDT
Received: from smtp110.ord1c.emailsrvr.com (smtp110.ord1c.emailsrvr.com
	[108.166.43.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3263E003A8
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 00:26:45 -0700 (PDT)
Received: from smtp14.relay.ord1c.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp14.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id
	157AD380137
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 03:21:36 -0400 (EDT)
Received: by smtp14.relay.ord1c.emailsrvr.com (Authenticated sender:
	padam.singh-AT-inventum.net) with ESMTPSA id 6E7CF380125
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 03:21:35 -0400 (EDT)
X-Sender-Id: padam.singh@inventum.net
Received: from [172.16.1.231] ([UNAVAILABLE]. [103.25.205.2])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA)
	by 0.0.0.0:25 (trex/5.4.2); Sat, 14 Mar 2015 07:21:36 GMT
From: Padam Jeet Singh <padam.singh@inventum.net>
Message-Id: <37E841B8-5482-4E95-8A2E-08140957E3BF@inventum.net>
Date: Sat, 14 Mar 2015 12:51:31 +0530
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Subject: Automatically include all recipes/packages in a custom layer
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
X-List-Received-Date: Sat, 14 Mar 2015 07:26:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to build a custom layer on top of core-image-full-cmdline. =
Basically I did this:

1. Created a new general layer using the yocto-layer command. This also =
generated a simple hello world recipe.
2. Added that layer in the conf/bblayers.conf BBLAYERS variable.=20

Then I do a bitbake -v core-image-full-cmdline, and I don=E2=80=99t see =
/usr/bin/helloworld in the final rootfs.

Then I edit the conf/local.conf and add the following:

IMAGE_INSTALL_append =3D " example=E2=80=9D

and then I can see the helloworld in the rootfs.

Since I will be adding close to 50 recipes in this layer, isn=E2=80=99t =
there an option where all recipes in that layer are included by default? =
Even if I have to declare each recipe to be included, is there a place =
where I can define those in my own layer configuration (layer.conf) =
rather than local.conf?

Thanks,
Padam=

