Return-Path: <philipp_subx@redfish-solutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2C19E00BBC; Sat, 23 Feb 2019 13:17:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 202 seconds by postgrey-1.32 at yocto-www;
	Sat, 23 Feb 2019 13:17:41 PST
Received: from mail.redfish-solutions.com (mail.redfish-solutions.com
	[66.232.79.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4222CE009AA
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 13:17:41 -0800 (PST)
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
	[192.168.1.38]) (authenticated bits=0)
	by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id
	x1NLEIbG030520
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 14:14:18 -0700
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <3DFF1337-2E58-45DF-80D6-303934B303B8@redfish-solutions.com>
Date: Sat, 23 Feb 2019 14:14:18 -0700
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.102.3)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
Subject: Newbie questions on cross-building packages for PPC
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
X-List-Received-Date: Sat, 23 Feb 2019 21:17:41 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi.

I=E2=80=99ve worked on a lot of embedded projects involving =
cross-building (like AstLinux and OpenWrt), but I=E2=80=99m new to Yocto =
so please bear with the noob questions.

I=E2=80=99d like to build packages (mostly RPM=E2=80=99s, plus a Linux =
kernel or three) on an x86_64 (AMD64) Linux (CentOS 7.6) platform, but =
for e500v2 and 85xxDP PPC targets.

What do I need to do to set up a toolchain and environment to be able to =
do that?

Ideally, I=E2=80=99d also like to set up an RPM target so I could use =
=E2=80=9Crpmbuild --target e500v2-unknown-linux=E2=80=9D (or whatever) =
and it would use the correct compiler, linker, archiver, sysheaders, =
etc.

Advice on both of these, or just pointers to instructions on how to set =
it all up, would be great.

For instance, do I need one compiler only that can handle multiple =
processor variants via the --march=3D flag, or is this not the right way =
to go?  And similarly, since the linker can rewrite code (shortening =
branch offsets, peep-hole optimization, unreachable code removal, etc.) =
do I need different linker versions for the 2 PPC variants?

Thanks,

-Philip


