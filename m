Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77F7C7EE2E
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 00:18:12 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.2310.1686615491777663194
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 17:18:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=g0GfCiIe;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1b3a82c8887so23857805ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 17:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686615491; x=1689207491;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=obHwmEAI5oh5UXlCDaysyCEIqrGKVYpP+2XIX3fj5Cw=;
        b=g0GfCiIetA7zyc4yEYpnK4Dduo9OSqgvF5CnivfBDB7fwovGsBLLt4KuGUETg80ekR
         sOldksd3KgtIaUYFBdqa8jAa213IM2DPRID2TuZYW0Rh8qR2ZzY0D+AWxLTtscJLdg2n
         eTm6PW1aysr+v7ty/CrscgPapZRXhMm3fwF9pP9mdwUnjhmwGfhoY78jWtPcWrk2XZmD
         tu5OVnjE0DBdWdtq6lrMPkuvc43DHIthMSKNr3t6rtbKp2Y/6iBwu593RNEGNc373MMj
         EZBTaQaSUYGwKZl2XmyG1dunt6GJqxDXPnVm1pqp7RYUpGWd6VgOGI+Cr3HygYrlyL14
         jiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686615491; x=1689207491;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obHwmEAI5oh5UXlCDaysyCEIqrGKVYpP+2XIX3fj5Cw=;
        b=RU9QIdleBnyie0SyWL6Te+WobZZBqqjSAzo3gW1TstXYhQwiiCGBIBHPpwkeIk60na
         DTPzfjhXi3r66cr3c4T5MNVgar2mritZfULOsOW0lp9LXURqnsIxNFPG0QCvWCcIhpId
         OZT4orHAQT38mHJSiEPsa292ofO48oJD3T+UGf61EGcqs+4+vk4qzh5TJrLwn/+IfiKf
         Mr+2JixU9g4TkZ667fINQBK0lwmIHZ4358/rNEseYPsNdIfworsuKk+1mgyvNewLjM0U
         xG1buywuQyO9RG4/Pd6Fu2VE8r8t74ApmH/G6RcVREOQpqqsnqch0UMdMNXPVm+LI/c7
         33iA==
X-Gm-Message-State: AC+VfDzce04u0lVvUEY795j03uwwCSZB/IK1NdlWc501Ee+aXW5htP2q
	JfC7vJRl+lm4cmBOYkiT/Rs=
X-Google-Smtp-Source: ACHHUZ59AJ1u+pzw+95KeM/WwJJtAS5bSsFXngsIHuI5SUl04JIQjVfxwjnArsuIvhw53tg2+L+55Q==
X-Received: by 2002:a17:902:c102:b0:1ae:32d3:43b8 with SMTP id 2-20020a170902c10200b001ae32d343b8mr8457610pli.11.1686615491034;
        Mon, 12 Jun 2023 17:18:11 -0700 (PDT)
Received: from skjolley ([2600:1011:a122:34d2:3cf1:e67c:658a:607f])
        by smtp.gmail.com with ESMTPSA id j11-20020a170902690b00b001b02bd00c61sm8797260plk.237.2023.06.12.17.18.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jun 2023 17:18:10 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW23
Date: Mon, 12 Jun 2023 17:18:10 -0700
Message-ID: <0d0801d99d8c$89ab56b0$9d020410$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0D09_01D99D51.DD50EB80"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdmdjGuosyg15Zz3ROOChxafssiGKA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 00:18:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60267

This is a multipart message in MIME format.

------=_NextPart_000_0D09_01D99D51.DD50EB80
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW23 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


High

14901 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14901>=20

lttng: collect TAP output

randy.macleod@windriver.com

alexis.lothore@bootlin.com

4.3 M1

4.3 M2


Medium+

14125 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125>=20

busybox wget ssl is exposed to MitM attack due to CVE-2018-1000500

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M2

=09
14903 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14903>=20

SDK relocation can't be done for alternative SDK packaging

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3

4.3 M2

=09
15130 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15130>=20

bitbake should warn if a function is defined only for specific cases

randy.macleod@windriver.com

richard.purdie@linuxfoundation.org

4.3

4.3 M3

=09
15134 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15134>=20

systemd-networkd will remove unmanaged wlan configs on carrier loss

randy.macleod@windriver.com

cam@myfastmail.com

0.0.0

4.3 M2

=09
15138 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15138>=20

AB-INT: qemux86/x86-64 hangs intermittently

randy.macleod@windriver.com

unassigned@yoctoproject.org

0.0.0

4.3 M2

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0D09_01D99D51.DD50EB80
Content-Type: text/html;
	boundary="----=_NextPart_000_07EF_01D99252.6203CC90";
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW23 are listed below: <span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1056 style=3D'width:791.95pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DBE5F1;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority</span></b><b><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description</span><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner</span><o:p></o:p></b></p></td><td width=3D54 =
valign=3Dbottom style=3D'width:40.3pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was</span><o:p></o:p></b></p></td><td width=3D48 =
valign=3Dbottom style=3D'width:36.35pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became</span><o:p></o:p></b></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>High<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14901" =
target=3D"_blank">14901</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>lttng: =
collect TAP output<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>alexis.lothore@bootlin.com<o:p></o:p></p></td><td =
width=3D54 valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D48 valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>Medium+<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125" =
target=3D"_blank">14125</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>busybox wget =
ssl is exposed to MitM attack due to =
CVE-2018-1000500<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D54 valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D48 valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14903" =
target=3D"_blank">14903</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>SDK =
relocation can't be done for alternative SDK =
packaging<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D54 valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>4.3<o:p></o:p></p></td><td width=3D48 =
valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15130" =
target=3D"_blank">15130</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>bitbake =
should warn if a function is defined only for specific =
cases<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D54 valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'>4.3<o:p></o:p></p></td><td width=3D48 =
valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15134" =
target=3D"_blank">15134</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>systemd-networkd will remove unmanaged wlan configs on =
carrier loss<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>cam@myfastmail.com<o:p></o:p></p></td><td width=3D54 =
valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D48 =
valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15138" =
target=3D"_blank">15138</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
qemux86/x86-64 hangs intermittently<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D54 valign=3Dbottom =
style=3D'width:40.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D48 =
valign=3Dbottom =
style=3D'width:36.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'>Thanks,</span><span style=3D'color:white'> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:white'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0D09_01D99D51.DD50EB80--


