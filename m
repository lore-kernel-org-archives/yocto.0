Return-Path: <ambika@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C43CE00DD2; Fri, 25 Nov 2016 21:08:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Nov 2016 21:08:38 PST
Received: from sip2-98.nexcess.net (iwavesystems.com [207.32.180.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83229E00DC8
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 21:08:38 -0800 (PST)
Received: (qmail 21678 invoked by uid 108); 26 Nov 2016 00:01:57 -0500
Received: from unknown (HELO IWDTP166) (124.124.219.230)
	by sip2-98.nexcess.net with ESMTPS; 26 Nov 2016 00:01:57 -0500
Message-ID: <6C820335B2574F8C8DA65E0D4A6F4FF7@IWDTP166>
From: "Ambika" <ambika@iwavesystems.com>
To: "Khem Raj" <raj.khem@gmail.com>
References: <9CB0D1D1DC954DE9B86D53CCBE548085@IWDTP166>
	<953CCA51-8D96-4360-AB41-5784380EE549@gmail.com>
In-Reply-To: <953CCA51-8D96-4360-AB41-5784380EE549@gmail.com>
Date: Sat, 26 Nov 2016 10:35:47 +0530
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
Cc: yocto@yoctoproject.org
Subject: Re: Renderring image using QT + eglfs and OpenGL
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
X-List-Received-Date: Sat, 26 Nov 2016 05:08:41 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0082_01D247D0.D9AFEA40"

------=_NextPart_000_0082_01D247D0.D9AFEA40
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the guide and response.

Can you let know about how can I enable hardware acceleration in my =
application in yocto dizzy?

Regards,
Ambika


From: Khem Raj=20
Sent: Saturday, November 26, 2016 9:39 AM
To: Ambika=20
Cc: yocto@yoctoproject.org=20
Subject: Re: [yocto] Renderring image using QT + eglfs and OpenGL


  On Nov 25, 2016, at 2:00 AM, Ambika <ambika@iwavesystems.com> wrote:

  Hii,
  I'm running the application (yocto dizzy release) to display the =
sequence of the image using QT + eglfs as well as OpenGL, below are the =
observations.
  When using QT5 + eglfs:
  i. Frame rate is around 56fps with 800*480 resolution display.
  ii.Frame rate is around 23fps with 1280 *720 resolution display.
  iii.Frame rate is around 11fps with 1920*1080 resolution display.
  iv.CPU usage for above three cases is 99%.

it seems there is no h/w acceleration enabled here. You need to figure =
out why=20


  When using OpenGL:
  i. Frame rate is around 56fps with 800480 1280720 and 1920*1080 =
resolutions.
  ii.CPU usage slightly increases with resolution from around 10% to =
18%.
  Whats affecting Frame rate in QT5 and how can I increase the frame =
rate and improve CPU performance.
  I'm new to QT as well as image processing. Kindly let me know your =
thoughts on this to solve.


Its a question better suited for qt mailing lists. There are several =
optimizations that can affect this but you have to know
your load.


  Thanks in advance.
  Regards,
  Ambika
  --=20
  _______________________________________________
  yocto mailing list
  yocto@yoctoproject.org
  https://lists.yoctoproject.org/listinfo/yocto


------=_NextPart_000_0082_01D247D0.D9AFEA40
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html charset=3Dus-ascii" =
http-equiv=3DContent-Type></HEAD>
<BODY=20
style=3D"WORD-WRAP: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space"=20
dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR: #000000">
<DIV>Thanks for the guide and response.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Can you let know about how can I enable hardware acceleration in my =

application in yocto dizzy?</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards,</DIV>
<DIV>Ambika</DIV>
<DIV>&nbsp;</DIV>
<DIV=20
style=3D"FONT-SIZE: small; FONT-FAMILY: 'Calibri'; FONT-WEIGHT: normal; =
COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none; DISPLAY: =
inline">
<DIV style=3D"FONT: 10pt tahoma">
<DIV>&nbsp;</DIV>
<DIV style=3D"BACKGROUND: #f5f5f5">
<DIV style=3D"font-color: black"><B>From:</B> <A =
title=3Draj.khem@gmail.com=20
href=3D"mailto:raj.khem@gmail.com">Khem Raj</A> </DIV>
<DIV><B>Sent:</B> Saturday, November 26, 2016 9:39 AM</DIV>
<DIV><B>To:</B> <A title=3Dambika@iwavesystems.com=20
href=3D"mailto:ambika@iwavesystems.com">Ambika</A> </DIV>
<DIV><B>Cc:</B> <A title=3Dyocto@yoctoproject.org=20
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A> </DIV>
<DIV><B>Subject:</B> Re: [yocto] Renderring image using QT + eglfs and=20
OpenGL</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D"FONT-SIZE: small; FONT-FAMILY: 'Calibri'; FONT-WEIGHT: normal; =
COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none; DISPLAY: =
inline">
<DIV>&nbsp;</DIV>
<DIV>
<BLOCKQUOTE type=3D"cite">
  <DIV>On Nov 25, 2016, at 2:00 AM, Ambika &lt;<A=20
  =
href=3D"mailto:ambika@iwavesystems.com">ambika@iwavesystems.com</A>&gt;=20
  wrote:</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>
  <DIV dir=3Dltr>
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri">
  <DIV class=3Dcontent itemprop=3D"text" component=3D"post/content">
  <DIV><FONT face=3D"Times New Roman">Hii,</FONT></DIV>
  <DIV><FONT face=3D"Times New Roman">I'm running the application (yocto =
dizzy=20
  release) to display the sequence of the image using QT + eglfs as well =
as=20
  OpenGL, below are the observations.</FONT></DIV>
  <DIV><FONT face=3D"Times New Roman">When using QT5 + eglfs:<BR>i. =
Frame rate is=20
  around 56fps with 800*</FONT><FONT face=3D"Times New Roman"><EM>480 =
resolution=20
  display.<BR>ii.Frame rate is around 23fps with 1280 *</EM>720 =
resolution=20
  display.<BR>iii.Frame rate is around 11fps with 1920*1080 resolution=20
  display.<BR>iv.CPU usage for above three cases is=20
  99%.</FONT></DIV></DIV></DIV></DIV></DIV></DIV></BLOCKQUOTE>
<DIV>&nbsp;</DIV>
<DIV>it seems there is no h/w acceleration enabled here. You need to =
figure out=20
why </DIV><BR>
<BLOCKQUOTE type=3D"cite">
  <DIV>
  <DIV dir=3Dltr>
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri">
  <DIV class=3Dcontent itemprop=3D"text" component=3D"post/content">
  <DIV><FONT face=3D"Times New Roman">When using OpenGL:<BR>i. Frame =
rate is=20
  around 56fps with 800<EM>480 1280</EM>720 and 1920*1080 =
resolutions.<BR>ii.CPU=20
  usage slightly increases with resolution from around 10% to =
18%.</FONT></DIV>
  <DIV><FONT face=3D"Times New Roman">Whats affecting Frame rate in QT5 =
and how=20
  can I increase the frame rate and improve CPU =
performance.</FONT></DIV>
  <DIV><FONT face=3D"Times New Roman">I'm new to QT as well as image =
processing.=20
  Kindly let me know your thoughts on this to=20
  solve.<BR></FONT></DIV></DIV></DIV></DIV></DIV></DIV></BLOCKQUOTE>
<DIV>&nbsp;</DIV>
<DIV>Its a question better suited for qt mailing lists. There are =
several=20
optimizations that can affect this but you have to know</DIV>
<DIV>your load.</DIV><BR>
<BLOCKQUOTE type=3D"cite">
  <DIV>
  <DIV dir=3Dltr>
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: calibri">
  <DIV class=3Dcontent itemprop=3D"text" component=3D"post/content">
  <DIV><FONT face=3D"Times New Roman">Thanks in advance.</FONT></DIV>
  <DIV><FONT=20
  face=3D"Times New =
Roman">Regards,<BR>Ambika</FONT></DIV></DIV></DIV></DIV></DIV>--=20
  <BR>_______________________________________________<BR>yocto mailing=20
  list<BR><A=20
  =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A><BR>http=
s://lists.yoctoproject.org/listinfo/yocto<BR></DIV></BLOCKQUOTE></DIV>
<DIV>&nbsp;</DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0082_01D247D0.D9AFEA40--
