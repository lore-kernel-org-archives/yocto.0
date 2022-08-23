Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47A4BC28D13
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 00:41:38 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.26462.1661215293322844362
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 17:41:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BwhiOcwe;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id x19so11419102plc.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 17:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc;
        bh=GjP9sB5UFrX+l2cuCu2NBrzUTlriK+DqMLTwhVNK/qc=;
        b=BwhiOcweSb8dEd46PYXRzlAtX2HR+x44mdXpX3GjhSOIhR9w4Mcvv40/douvuzd9mk
         RovKSWI8yFLfwfsoK4nMpGdp41C1hSlSbIFWyiEYdWiwcf7lOQBFtAz0vamT44OLb6uK
         GiOji9i+XgLRFGfBvggD8/QFU/axDdzmvbmrniOtgypVNSDzIgqJDFEU1CEnl2sIfOQ5
         AzUbQeJHYTBve3njGSPnWfCpkt1HghIZ/EiTaGcmLBldUlkRM8OV5xSuYTm8fQmMMA9c
         MGQ/62x51JKxjxUAhW32jl5oPMVc7lpHabfbaya3eMTzVkFcUJaO+GRGRelT5wyJP+2N
         uQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc;
        bh=GjP9sB5UFrX+l2cuCu2NBrzUTlriK+DqMLTwhVNK/qc=;
        b=wfWY+O3rsREgbr7Dn3hDxy0BjDJr/hnNCrJd8HbDV0pwa6HCdCkxR97eK11JSlsZr9
         XNmmYvUG3JGteP7FhxB4UH5tZXX/ab7vMV2OXwx8xagS7j2d63I9fkfpW4wiHMaNHgEe
         q1lQn35wBCafcHTHJ8ixqdN3jN35epcJ9R0N3hlOKzmvcFLAGmsqxpR8JuPQnpE01Ok7
         lajtiRzvVlpMDe+EU727PCShIfRek2yUNp5Vn9qSjiQ5AqK0oaukm1ZLLHvlzXG6fBuW
         PacLAgtzgmHiI8QrBaOgh74X1cN6kUmHYCMlNP9yCflwNN9RlNd/LYvW4+f7pvfs0etQ
         qaAw==
X-Gm-Message-State: ACgBeo02MzKYMmiT+rY+l2/CzJMsKbUA6NKmTkQin4iHJr2xGk8yqfX6
	r6vtp0GVanVn9c6VR37Nngc=
X-Google-Smtp-Source: 
 AA6agR54rZ97EwudmDO+zE2jU6Ie7d8S8HDpZKXvtnrgDVPGuT42K293Pznh53V/xIEczCcm+bt/pg==
X-Received: by 2002:a17:902:7c05:b0:16e:e96c:e91e with SMTP id
 x5-20020a1709027c0500b0016ee96ce91emr22573171pll.89.1661215292582;
        Mon, 22 Aug 2022 17:41:32 -0700 (PDT)
Received: from skjolley ([2600:1011:a118:bb62:293c:e2d4:1418:7020])
        by smtp.gmail.com with ESMTPSA id
 68-20020a621747000000b0053651308a1csm5284966pfx.195.2022.08.22.17.41.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Aug 2022 17:41:32 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW34
Date: Mon, 22 Aug 2022 17:41:31 -0700
Message-ID: <016601d8b689$17501a50$45f04ef0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0167_01D8B64E.6AF5FD40"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adi2iPSLC7IPPQ4/R2i3T2kRfUjI7w==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 00:41:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57880

This is a multipart message in MIME format.

------=_NextPart_000_0167_01D8B64E.6AF5FD40
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW34 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125> 14125

busybox wget ssl is exposed to MitM attack due to CVE-2018-1000500

randy.macleod@windriver.com

shachar@vdoo.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14201> 14201

Bitbake server intermittent timeout

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14263> 14263

AB-INT PTEST: lttng-tools ptest intermittent failure

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14467> 14467

curl timeout while dnf is downloading package

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14486> 14486

qemu rootfs copy is taking too much time

randy.macleod@windriver.com

Aryaman.Gupta@windriver.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14522> 14522

qemuppc doesn't shutdown within timeout (serial console issues)

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14665> 14665

AB-INT: prservice.BitbakePrTests.test_import_export_replace_db failure

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14694> 14694

logrotate.LogrotateTest.test_logrotate_wtmp failure: =
/var/lib/logrotate.status is already locked

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.1 M2

4.1 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14705> 14705

weston.WestonTest.test_wayland_info intermittent failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.1

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14713> 14713

AB-INT-NET: TLS Handshake failure during gotoolchain

randy.macleod@windriver.com

bruce.ashfield@gmail.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14716> 14716

Add additional resolvers to autobuilder workers

randy.macleod@windriver.com

mhalstead@linuxfoundation.org

4.1 M2

4.1 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14789> 14789

ltp controllers test failure

randy.macleod@windriver.com

Aryaman.Gupta@windriver.com

4.1 M2

4.1 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14823> 14823

AB-INT-NET: network failure when fetching yocto-autobuilder-helper

randy.macleod@windriver.com

mhalstead@linuxfoundation.org

4.1 M2

4.1 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14857> 14857

AB-INT: Unable to connect to bitbake server, or start one

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.1 M2

4.1 M4

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0167_01D8B64E.6AF5FD40
Content-Type: text/html;
	boundary="----=_NextPart_000_0919_01D8B0B0.CFA1F4E0";
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
	font-size:10.0pt;}
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
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:black'>All,<br><br>YP M+ or high bugs which moved to a =
new milestone in WW34 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1265 =
style=3D'width:949.0pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom style=3D'width:33.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D569 nowrap valign=3Dbottom style=3D'width:427.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D236 nowrap =
valign=3Dbottom style=3D'width:177.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D243 nowrap valign=3Dbottom style=3D'width:182.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14125</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>busybox wget ssl is exposed to MitM attack due to =
CVE-2018-1000500<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>shachar@vdoo.com<o:p></o:p></span></p></td><td =
width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14201" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14201</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Bitbake server intermittent =
timeout<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14263" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14263</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT PTEST: lttng-tools ptest intermittent =
failure<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14467" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14467</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>curl timeout while dnf is downloading =
package<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14486" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14486</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>qemu rootfs copy is taking too much =
time<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Aryaman.Gupta@windriver.com<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14522" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14522</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>qemuppc doesn't shutdown within timeout (serial =
console issues)<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14665" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14665</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT: =
prservice.BitbakePrTests.test_import_export_replace_db =
failure<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14694" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14694</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>logrotate.LogrotateTest.test_logrotate_wtmp =
failure: /var/lib/logrotate.status is already =
locked<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14705" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14705</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>weston.WestonTest.test_wayland_info intermittent =
failure<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>4.1<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14713" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14713</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT-NET: TLS Handshake failure during =
gotoolchain<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bruce.ashfield@gmail.com<o:p></o:p></span></p></td>=
<td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14716" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14716</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Add additional resolvers to autobuilder =
workers<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mhalstead@linuxfoundation.org<o:p></o:p></span></p>=
</td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14789" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14789</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>ltp controllers test =
failure<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Aryaman.Gupta@windriver.com<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14823" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14823</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT-NET: network failure when fetching =
yocto-autobuilder-helper<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mhalstead@linuxfoundation.org<o:p></o:p></span></p>=
</td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14857" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14857</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D569 nowrap valign=3Dbottom =
style=3D'width:427.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT: Unable to connect to bitbake server, or =
start one<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.1 M4<o:p></o:p></span></p></td></tr></table><p =
class=3DMsoNormal><span style=3D'color:black'>Thanks,</span><span =
style=3D'color:white'> <o:p></o:p></span></p><p class=3DMsoNormal><span =
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
------=_NextPart_000_0167_01D8B64E.6AF5FD40--


