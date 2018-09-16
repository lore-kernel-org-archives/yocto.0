Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5417E00A39; Sun, 16 Sep 2018 03:50:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Sep 2018 03:50:03 PDT
Received: from resqmta-ch2-07v.sys.comcast.net
	(resqmta-ch2-07v.sys.comcast.net [69.252.207.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218A9E00724
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 03:50:03 -0700 (PDT)
Received: from resomta-ch2-15v.sys.comcast.net ([69.252.207.111])
	by resqmta-ch2-07v.sys.comcast.net with ESMTP
	id 1UaogiFFiUrSz1Ubug7QkE; Sun, 16 Sep 2018 10:49:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1537094942;
	bh=9PzcR6mfqLdkVkjHuWBXfelPtQRJOc+9JUbSHDM6+QI=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=fogo/TanZeBZZZAuh8km86bTNA9CQt+rEaPeS76VJAad1tPdEy1vFsuJeU6j4y283
	rkzmFhxKrHN18qnJP9sHOLaHvSb066LuTMBV55PegjM78178fqSgt82ZM2YH2C6BxR
	JjWL7oqopC8WmWxW5gCqEhl4MZCSVQzD2LmJsy1bWAR/r0nyua3Jqdky2I30Dl9lnm
	8R0k7zggqNU6jwROFuHEGrqgkOjiIPMYFfqrtvnh7FDHa5m1iJik7JvJE5ps9jilvh
	P6/u6yZPQck3boJnBkSqeC09SDtixdiazvfegkOigf7ZLeXAmFL3JzPeE2VLLBV+cv
	/tdwhynHX4c+g==
Received: from [IPv6:2601:18f:880:9aeb:14b9:c3b7:6b6d:c0c0]
	([IPv6:2601:18f:880:9aeb:14b9:c3b7:6b6d:c0c0])
	by resomta-ch2-15v.sys.comcast.net with ESMTPSA
	id 1UbsgNc3WWkQQ1UbtgWbrk; Sun, 16 Sep 2018 10:49:02 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.4 \(3445.8.2\))
Message-Id: <327CC523-F9EB-42C2-8392-6F252F15702F@comcast.net>
Date: Sun, 16 Sep 2018 06:52:52 -0400
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.8.2)
X-CMAE-Envelope: MS4wfO9Je4h9IwzteFdoAqrCGSo+pWR7klLsGUzlf3iH48E9u7ppx77ghqmBCTxnVCnSRbRwSl8t2nrB8iuqrnapBtU10WfUKlfDdI6Lyf2Y8Dq/1hO0ZHv9
	l1bSRL8dtCgL73xZNJvmrgh3p5BIL0pn+h34I7a7wI87ap9auRC3sLxbFYElelgwcmwNQ7PPr9GmlEZ4BfSZypUlu6MY9zxA8rIUoFrGenXmEbnxgt1CC6v2
	TrajyV0GJByUzw0v0k/kxcaLI13XZwNhFTqsebCmT/15Qi8SvKH1vBMfxQsWM5kd
Subject: TUNE_PKGARCH vs MACHINE_ARCH
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
X-List-Received-Date: Sun, 16 Sep 2018 10:50:03 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m trying to understand what the =E2=80=9Cnormal=E2=80=9D =
package arch should be when using yocto to build for a specific SoC.
In my local.conf file I set my MACHINE value to =E2=80=9CxSoc=E2=80=9D.  =
Because of that I see RPM files being generated with arch =E2=80=9CxSoC=E2=
=80=9D (as well as =E2=80=9Caarch64=E2=80=9D).
I forgot to mention in my machine/xSoC.conf file I include the aarch64 =
tune file (Rocko).  To me, I can=E2=80=99t quite understand what a rpm =
arch of xSoC is since the cores on this SoC are simply Arm A72 cores and =
I thought RPM arch meant micro-arch, no?  If I override =
PACKAGE_ARCH_xSoC =3D =E2=80=9Caarch64=E2=80=9D that sort of works but =
then all I see aarch64 rpm files (no allarch/noarch).  I also see some =
errors with PACKAGE_ARCH being set before inherit package group when I =
try override.

What=E2=80=99s the expected behavior here?  Everything seems to work =
except I get a few warning messages regarding staging files for =
kernel-devsrc when I build the eSDK.

Thanks,

Russell


