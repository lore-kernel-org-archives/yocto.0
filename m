Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94408E009A0; Sun,  7 Apr 2019 16:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [83.102.40.152 listed in list.dnswl.org]
X-Greylist: delayed 495 seconds by postgrey-1.32 at yocto-www;
	Sun, 07 Apr 2019 16:21:21 PDT
Received: from sinikuusama2.dnainternet.net (sinikuusama2.dnainternet.net
	[83.102.40.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87BF1E009A0
	for <yocto@yoctoproject.org>; Sun,  7 Apr 2019 16:21:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id 03288F4B1
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 02:13:04 +0300 (EEST)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sinikuusama2.dnainternet.net ([83.102.40.152])
	by localhost (sinikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041) with ESMTP id bmM0GyPYPpmq for <yocto@yoctoproject.org>;
	Mon,  8 Apr 2019 02:13:03 +0300 (EEST)
Received: from omenapuu2.dnainternet.net (omenapuu2.dnainternet.net
	[83.102.40.54])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id BB35BF47D
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 02:13:03 +0300 (EEST)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by omenapuu2.dnainternet.net (Postfix) with ESMTPS id 8EEE628D
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 02:13:02 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Message-Id: <5B900DC4-965B-4569-A259-50F812B96B8B@iki.fi>
Date: Mon, 8 Apr 2019 02:13:01 +0300
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.8)
Subject: Building on non-x86 hosts, wic and syslinux
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
X-List-Received-Date: Sun, 07 Apr 2019 23:21:22 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I was experimenting with building on an AArch64 host, and ran into the =
issue that image_types_wic.bbclass unconditionally adds syslinux-native =
to the dependencies, while syslinux is only compatible with x86 hosts. I =
didn=E2=80=99t look further into this, but is it possible to make this =
dependency chain dependent on the actual image types you=E2=80=99re =
trying to build?

After working around the problem by manually removing the dependency =
from the class, the build completed without issues (though I did not =
test the results).

Regards,
Anders=

