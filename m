Return-Path: <ambika@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49595E009BF; Wed, 14 Sep 2016 01:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4996]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 580 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 01:33:11 PDT
Received: from smtp.iwavesystems.com (unknown [115.115.210.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC7D7E009B8
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 01:33:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.iwavesystems.com (Postfix) with ESMTP id 3EB8F1E606B
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 13:54:31 +0530 (IST)
Received: from smtp.iwavesystems.com ([127.0.0.1])
	by localhost (smtp.iwavesystems.com [127.0.0.1]) (amavisd-new,
	port 10032) with ESMTP id 6xVSz5X4Ws7p for <yocto@yoctoproject.org>;
	Wed, 14 Sep 2016 13:54:23 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by smtp.iwavesystems.com (Postfix) with ESMTP id 047201E63A4
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 13:54:23 +0530 (IST)
X-Virus-Scanned: amavisd-new at smtp.iwavesystems.com
Received: from smtp.iwavesystems.com ([127.0.0.1])
	by localhost (smtp.iwavesystems.com [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id jRTzLQP0jOtJ for <yocto@yoctoproject.org>;
	Wed, 14 Sep 2016 13:54:22 +0530 (IST)
Received: from IWDTP166 (unknown [124.124.219.230])
	by smtp.iwavesystems.com (Postfix) with ESMTPSA id A96A01E606B
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 13:54:22 +0530 (IST)
Message-ID: <4056CB01A9244322902DC79C31DCF14D@IWDTP166>
From: "Ambika" <ambika@iwavesystems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 14 Sep 2016 12:58:32 +0530
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
Subject: Adding mysql in bitbaking meta-toolchain-qt5
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
X-List-Received-Date: Wed, 14 Sep 2016 08:33:13 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00F3_01D20E87.B2972770"

------=_NextPart_000_00F3_01D20E87.B2972770
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m doing bitbake of meta-toolchain-qt5. When trying to use =
mysql, not able to find it in include/ directory.=20

mysql sources is located in the below path in my yocto setup,

sources/meta-openembedded/meta-oe/recipes-support/mysql=20

Tried to include mysql by adding the below to conf/local.conf under =
build directory but could not able to locate mysql under include/.
(Also not sure whether I=E2=80=99m doing it right.)

IMAGE_INSTALL_append =3D =E2=80=9Dmysql=E2=80=9D=20

Can anyone please let me know the procedure to include mysql to the =
meta-toolchain-qt5.

Thanks in Advance.

Regards,
Ambika.



------=_NextPart_000_00F3_01D20E87.B2972770
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Hello,</DIV>
<DIV>&nbsp;</DIV>
<DIV>I=E2=80=99m doing bitbake of meta-toolchain-qt5. When trying to use =
mysql, not able=20
to find it in include/ directory. </DIV>
<DIV>&nbsp;</DIV>
<DIV>mysql sources is located in the below path in my yocto setup,</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT face=3DArial><FONT color=3D#1f497d><FONT style=3D"FONT-SIZE: =
10pt"><FONT=20
face=3DCalibri><FONT style=3D"FONT-SIZE: 12pt"=20
color=3D#000000>sources/meta-openembedded/meta-oe/recipes-support/mysql</=
FONT></FONT></FONT></FONT></FONT><FONT=20
face=3DArial><FONT color=3D#1f497d><FONT=20
style=3D"FONT-SIZE: 10pt">&nbsp;</FONT></FONT></FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV>Tried to include mysql by adding the below to conf/local.conf under =
build=20
directory but could not able to locate mysql under include/.</DIV>
<DIV>(Also not sure whether I=E2=80=99m doing it right.)</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT face=3DArial><FONT style=3D"FONT-SIZE: 10pt"=20
color=3D#1f497d>IMAGE_INSTALL_append =3D </FONT></FONT><FONT =
face=3DArial><FONT=20
style=3D"FONT-SIZE: 10pt" color=3D#1f497d>=E2=80=9Dmysql=E2=80=9D =
</FONT></FONT></DIV>
<DIV><FONT color=3D#1f497d size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT color=3D#000000>Can anyone please let me know the procedure =
to include=20
mysql to the meta-toolchain-qt5.</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks in Advance.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>Ambika.</DIV>
<DIV><FONT color=3D#1f497d size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_00F3_01D20E87.B2972770--
