Return-Path: <btv1==3433b300ed1==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22E34E00873; Mon, 22 Sep 2014 19:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0832]
X-Greylist: delayed 760 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Sep 2014 19:09:48 PDT
Received: from barbvt11.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1700CE0086F
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 19:09:48 -0700 (PDT)
X-ASG-Debug-ID: 1411437424-04afd2135f999f30001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt11.planar.com with ESMTP id 78Fg4bOfgcfRwuHF for
	<yocto@yoctoproject.org>; Mon, 22 Sep 2014 18:57:04 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 22 Sep 2014 18:57:04 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 22 Sep 2014 18:57:03 -0700
Thread-Topic: How to include static library and headers in sdk
X-ASG-Orig-Subj: How to include static library and headers in sdk
Thread-Index: Ac/W0au7Q/+CX53YRbKYnaYzVIFDbA==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1411437424
X-Barracuda-URL: http://10.10.111.113:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.3618 1.0000 -0.1122
X-Barracuda-Spam-Score: -0.11
X-Barracuda-Spam-Status: No,
	SCORE=-0.11 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.9773
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 02:09:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've got a custom image and 2 custom recipes both very simple libraries tha=
t use cmake.=20
I included the libraries into my image by adding=20
EXTRA_IMAGEDEPENDS +=3D "simple1"
EXTRA_IMAGEDEPENDS +=3D "simple2"=20
To my image recipe.=20

When I build my image (i.e. bitbake custom-image ) I can see that the libra=
ry header files and .a files are placed in the correct place in the sysroot=
 directory.=20

However when I try to create an sdk (i.e. bitbake custom-image -c populate_=
sdk) and then install the SDK the headers and .a files are nowhere to be fo=
und in the installed sysroot.=20

What am I missing?=20

Thanks,
Matt S.=20


