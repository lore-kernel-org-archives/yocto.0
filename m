Return-Path: <dave@synergy.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E391CD4851
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 14:00:35 +0000 (UTC)
Received: from mta-232a.oxsus-vadesecure.net (mta-232a.oxsus-vadesecure.net [15.204.3.6])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.76530.1778594428318720177
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 07:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oxsus-vadesecure.net header.s=dkim-202410-rsa2048 header.b=JqnXeaNC;
 spf=pass (domain: synergy.org, ip: 15.204.3.6, mailfrom: dave@synergy.org)
Authentication-Results: oxsus-vadesecure.net;
 auth=pass smtp.auth=4@316323 smtp.mailfrom=dave@synergy.org;
DKIM-Signature: v=1; a=rsa-sha256; bh=dHW+XVczjzSZOv6qD+qRovZE6OD7sYx8DoVeI4
 Qh8JY=; c=relaxed/relaxed; d=oxsus-vadesecure.net; h=from:reply-to:
 subject:date:to:cc:resent-date:resent-from:resent-to:resent-cc:
 in-reply-to:references:list-id:list-help:list-unsubscribe:
 list-unsubscribe-post:list-subscribe:list-post:list-owner:list-archive;
 q=dns/txt; s=dkim-202410-rsa2048; t=1778594423; x=1779199223; b=JqnXeaN
 Cls0jjtyMt637in8hzAMx1qhOdlHPvpLj2t2fUZ/YaA4vkkRAg21wNt1YpWRIwOwWEmnh0L
 tD5otCOQhybYhhH4A8j1UiAHzbnczXC3HIKHkpZziCqrzecOulYghlNIU+imLKYNBRTCxOR
 +/vlJypcwCVPHArjp5oojuiM5JG5kcF160iwElIDVPX3Fb14b4XpEwDOp8HJOgFHho+6b2Y
 nvpgkht2DIa284jUh7m2+IimoFP+8tv3ZaMcPZrEP9sYvdhJvBBnzHrKHPqPLe36E6GnXRf
 nsJiwOJzVkHXO4fuStJ11K1ahm9IbjXxh0jK0MN47FTNCkYDJ5w==
Received: from proxy-8.proxy.cloudus.mci.xion.oxcs.net ([174.165.77.67])
 by oxsus2nmtao02p.internal.vadesecure.com with ngmta
 id cdc5685f-18aed63365f48b4d; Tue, 12 May 2026 14:00:23 +0000
From: <dave@synergy.org>
To: <yocto@lists.yoctoproject.org>,
	<jdowd@slashdevslashnull.org>,
	<richard.purdie@linuxfoundation.org>
References: <001001dce188$4a8cde20$dfa69a60$@synergy.org> <c087189f913cfd64e1d835c4f96815a42c51eab2.camel@linuxfoundation.org> <CAHPfuSkiXX8qWuanH+sBOxXdPiDPM4-PLyf=JJ0tsUCUy95ixA@mail.gmail.com>
In-Reply-To: <CAHPfuSkiXX8qWuanH+sBOxXdPiDPM4-PLyf=JJ0tsUCUy95ixA@mail.gmail.com>
Subject: RE: [yocto] Looking for Yocto-supported Reference Design
Date: Tue, 12 May 2026 07:00:16 -0700
Message-ID: <002501dce217$ad461a10$07d24e30$@synergy.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0026_01DCE1DD.00E7B740"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQK01TAC+LW/lPgVND+je2/7tvxvjAJVUzmtApzvG0q0MvE8EA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 14:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66536

This is a multipart message in MIME format.

------=_NextPart_000_0026_01DCE1DD.00E7B740
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Raj, Richard, John,

               Thank you for the excellent suggestions! John, =
It=E2=80=99s good to know that you are working on a similar project. I =
will run these ideas down.

               David

=20

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On =
Behalf Of John
Sent: Tuesday, May 12, 2026 6:12 AM
To: yocto@lists.yoctoproject.org; richard.purdie@linuxfoundation.org
Subject: Re: [yocto] Looking for Yocto-supported Reference Design

=20

David,

=20

I've started on exactly the same kind of project for my own purposes. =
I've been using a Raspberry Pi 0 2W for my development. I needed the =
wifi and BT connectivity so I started with it. Please feel free to get =
in touch if you have any questions.

=20

Cheers!!

=20

On Tue, May 12, 2026 at 8:13=E2=80=AFAM Richard Purdie via =
lists.yoctoproject.org <http://lists.yoctoproject.org>  =
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org =
<mailto:linuxfoundation.org@lists.yoctoproject.org> > wrote:

Hi David,

On Mon, 2026-05-11 at 13:53 -0700, dave via lists.yoctoproject.org =
<http://lists.yoctoproject.org>  wrote:
>       My name is David Richards and I am blind. I am new to Yocto. I =
would
> like to build a portable talking e-book reader. The goal is to support
> DAISY, Audible, Kindle, and epub books. In addition, I would like to =
be able
> to stream MP3 content. To that end, I am looking for a reference =
design to
> base the project on. It does not require/use a display or touchpad. =
The user
> interface will utilize buttons and speech output. The design should =
have
> existing Yocto support, if possible.
>       Does anyone have any pointers for a reference design I could =
start
> with?

There are many boards with OE/Yocto Project support. You can get an
idea of them all from the layer index's list of machines which is
showing 22 pages of them!=20

https://layers.openembedded.org/layerindex/branch/master/machines/?q=3D =
<https://layers.openembedded.org/layerindex/branch/master/machines/?q=3D&=
browse=3D1> &browse=3D1

Some have better support than others, we've had the Beagle devices like
the BeaglePlay and earlier devices like the BeagleBone and BeagleBoard
supported as one of our test platforms for a long time. That has basic
support in meta-yocto with beaglebone-yocto and a full BSP from TI as
well. There are others like the various RaspberryPis and may more,
including more experimental ones with RISC-V processors.

It sounds like the audio output might be important to you and however
you plan to interface the buttons to the system so that may be
something to factor in. You might need USB? That might narrow down your
choice. I'd probably try and find a board which holds interest to you
as well.

Cheers,

Richard










=20

--=20

"To err is human, to forgive is not company policy."

=20

John Dowd

Contract - Software Developer

Cell: (613)316-7884


------=_NextPart_000_0026_01DCE1DD.00E7B740
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.gmailsignatureprefix
	{mso-style-name:gmail_signature_prefix;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt'>Raj, Richard, John,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thank you for the excellent =
suggestions! John, It=E2=80=99s good to know that you are working on a =
similar project. I will run these ideas down.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 David<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt; <b>On =
Behalf Of </b>John<br><b>Sent:</b> Tuesday, May 12, 2026 6:12 =
AM<br><b>To:</b> yocto@lists.yoctoproject.org; =
richard.purdie@linuxfoundation.org<br><b>Subject:</b> Re: [yocto] =
Looking for Yocto-supported Reference =
Design<o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>David,<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>I've started on exactly the same kind of project for =
my own purposes. I've been using a Raspberry Pi 0 2W for my development. =
I needed the wifi and BT connectivity so I started with it.&nbsp;Please =
feel free to get in touch if you have any =
questions.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Cheers!!<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Tue, May 12, 2026 at 8:13<span =
style=3D'font-family:"Arial",sans-serif'>=E2=80=AF</span>AM Richard =
Purdie via <a =
href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> =
&lt;richard.purdie=3D<a =
href=3D"mailto:linuxfoundation.org@lists.yoctoproject.org">linuxfoundatio=
n.org@lists.yoctoproject.org</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Hi David,<br><br>On Mon, 2026-05-11 at =
13:53 -0700, dave via <a href=3D"http://lists.yoctoproject.org" =
target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>&gt;&nbsp; &nbsp; =
&nbsp; &nbsp;My name is David Richards and I am blind. I am new to =
Yocto. I would<br>&gt; like to build a portable talking e-book reader. =
The goal is to support<br>&gt; DAISY, Audible, Kindle, and epub books. =
In addition, I would like to be able<br>&gt; to stream MP3 content. To =
that end, I am looking for a reference design to<br>&gt; base the =
project on. It does not require/use a display or touchpad. The =
user<br>&gt; interface will utilize buttons and speech output. The =
design should have<br>&gt; existing Yocto support, if =
possible.<br>&gt;&nbsp; &nbsp; &nbsp; &nbsp;Does anyone have any =
pointers for a reference design I could start<br>&gt; with?<br><br>There =
are many boards with OE/Yocto Project support. You can&nbsp;get =
an<br>idea of them all from the layer index's list of machines which =
is<br>showing 22 pages of them! <br><br><a =
href=3D"https://layers.openembedded.org/layerindex/branch/master/machines=
/?q=3D&amp;browse=3D1" =
target=3D"_blank">https://layers.openembedded.org/layerindex/branch/maste=
r/machines/?q=3D&amp;browse=3D1</a><br><br>Some have better support than =
others, we've had the Beagle devices like<br>the BeaglePlay and earlier =
devices like the BeagleBone and BeagleBoard<br>supported as one of our =
test platforms for a long time.&nbsp;That has basic<br>support in =
meta-yocto with beaglebone-yocto and a full BSP from TI as<br>well. =
There are others like the various RaspberryPis and may =
more,<br>including more experimental ones with RISC-V =
processors.<br><br>It sounds like the audio output might be important to =
you and however<br>you plan to interface the buttons to the system so =
that may be<br>something to factor in. You might need USB? That might =
narrow down your<br>choice. I'd probably try and find a board which =
holds interest to you<br>as =
well.<br><br>Cheers,<br><br>Richard<br><br><br><br><br><br><o:p></o:p></p=
></blockquote></div><div><p class=3DMsoNormal><br =
clear=3Dall><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal><span =
class=3Dgmailsignatureprefix>-- </span><o:p></o:p></p><div><div><p =
class=3DMsoNormal>&quot;To err is human, to forgive is not company =
policy.&quot;<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>John Dowd<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Contract - Software =
Developer<o:p></o:p></p></div><div><p class=3DMsoNormal>Cell: =
(613)316-7884<o:p></o:p></p></div></div></div></div></body></html>
------=_NextPart_000_0026_01DCE1DD.00E7B740--


