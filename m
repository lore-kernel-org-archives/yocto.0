Return-Path: <ambika@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDE52E00C80; Fri, 25 Nov 2016 02:04:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 482 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Nov 2016 02:04:46 PST
Received: from smtp.iwavesystems.com (unknown [115.115.210.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FE44E00B3D
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 02:04:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp.iwavesystems.com (Postfix) with ESMTP id 0023D1E645D
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 15:28:10 +0530 (IST)
Received: from smtp.iwavesystems.com ([127.0.0.1])
	by localhost (smtp.iwavesystems.com [127.0.0.1]) (amavisd-new,
	port 10032) with ESMTP id Z3MjHYuUewHe for <yocto@yoctoproject.org>;
	Fri, 25 Nov 2016 15:28:10 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by smtp.iwavesystems.com (Postfix) with ESMTP id 1F1491E645B
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 15:28:10 +0530 (IST)
X-Virus-Scanned: amavisd-new at smtp.iwavesystems.com
Received: from smtp.iwavesystems.com ([127.0.0.1])
	by localhost (smtp.iwavesystems.com [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id gZvAfCQ50y9L for <yocto@yoctoproject.org>;
	Fri, 25 Nov 2016 15:28:10 +0530 (IST)
Received: from IWDTP166 (unknown [124.124.219.230])
	by smtp.iwavesystems.com (Postfix) with ESMTPSA id D2EF41E645A
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 15:28:09 +0530 (IST)
Message-ID: <9CB0D1D1DC954DE9B86D53CCBE548085@IWDTP166>
From: "Ambika" <ambika@iwavesystems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 25 Nov 2016 15:30:33 +0530
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
Subject: Renderring image using QT + eglfs and OpenGL
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
X-List-Received-Date: Fri, 25 Nov 2016 10:04:50 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00CE_01D24730.DD0DB0F0"

------=_NextPart_000_00CE_01D24730.DD0DB0F0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hii,

I'm running the application (yocto dizzy release) to display the =
sequence of the image using QT + eglfs as well as OpenGL, below are the =
observations.

When using QT5 + eglfs:
i. Frame rate is around 56fps with 800*480 resolution display.
ii.Frame rate is around 23fps with 1280 *720 resolution display.
iii.Frame rate is around 11fps with 1920*1080 resolution display.
iv.CPU usage for above three cases is 99%.

When using OpenGL:
i. Frame rate is around 56fps with 800480 1280720 and 1920*1080 =
resolutions.
ii.CPU usage slightly increases with resolution from around 10% to 18%.

Whats affecting Frame rate in QT5 and how can I increase the frame rate =
and improve CPU performance.

I'm new to QT as well as image processing. Kindly let me know your =
thoughts on this to solve.
Thanks in advance.

Regards,
Ambika

------=_NextPart_000_00CE_01D24730.DD0DB0F0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV class=3Dcontent component=3D"post/content" itemprop=3D"text">
<P><FONT face=3D"Times New Roman">Hii,</FONT></P>
<P><FONT face=3D"Times New Roman">I'm running the application (yocto =
dizzy=20
release) to display the sequence of the image using QT + eglfs as well =
as=20
OpenGL, below are the observations.</FONT></P>
<P><FONT face=3D"Times New Roman">When using QT5 + eglfs:<BR>i. Frame =
rate is=20
around 56fps with 800*</FONT><FONT face=3D"Times New Roman"><EM>480 =
resolution=20
display.<BR>ii.Frame rate is around 23fps with 1280 *</EM>720 resolution =

display.<BR>iii.Frame rate is around 11fps with 1920*1080 resolution=20
display.<BR>iv.CPU usage for above three cases is 99%.</FONT></P>
<P><FONT face=3D"Times New Roman">When using OpenGL:<BR>i. Frame rate is =
around=20
56fps with 800<EM>480 1280</EM>720 and 1920*1080 resolutions.<BR>ii.CPU =
usage=20
slightly increases with resolution from around 10% to 18%.</FONT></P>
<P><FONT face=3D"Times New Roman">Whats affecting Frame rate in QT5 and =
how can I=20
increase the frame rate and improve CPU performance.</FONT></P>
<P><FONT face=3D"Times New Roman">I'm new to QT as well as image =
processing.=20
Kindly let me know your thoughts on this to solve.<BR>Thanks in=20
advance.</FONT></P>
<P><FONT=20
face=3D"Times New =
Roman">Regards,<BR>Ambika</FONT></P></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_00CE_01D24730.DD0DB0F0--
