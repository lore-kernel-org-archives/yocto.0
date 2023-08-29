Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09361C83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 01:50:37 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.8534.1693273828553513623
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 18:50:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=SQdACyG5;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99cce6f7de2so495535266b.3
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 18:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693273827; x=1693878627;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5ETCjTkGmwn3r1Kx4JtGb6OwDrXkbHuCHW71E0YgPtg=;
        b=SQdACyG5Dw0sGCDWBI/mJgxnJEqLT5isuMLysMxbqyx6/mtpSTWbm1FeAD4mWuMo/M
         FvDdp9Dt9f18uO7BxNjNxDvLtoTBtUwSf48uHnU9h5GHRuJthAlPsdSl+MzJgJfWPjn/
         gq3el1QpFoqg95PSaiyNo5LhsvZN/phNpzxaCJdzu6AK+vtf4f39o9LFDlxTKGYBJARJ
         EPEMbpU78VPG1mbyszXxRDSFobncFE+fQ/NuKu8PK7L8jIggCeDmCdHX56vJVkZ+EYoq
         lLT5IgKT5cX6zqAjQX/nZHcGvotvssBoRAtQV59UAgCgSez567DGq151cwEvqWqjZ2al
         Otag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693273827; x=1693878627;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ETCjTkGmwn3r1Kx4JtGb6OwDrXkbHuCHW71E0YgPtg=;
        b=WqU5vqdSxupzzGp1ubMTWDtf0BMlnWocXL9On30oCIUMM/Rz5Qtp9CA9dSQIYs11Mj
         6BRmw0gjzP/22hhGbKF3agF2x+qrZWeFqhas6or0HRJGS8Y1uLBFl2d8Z5UvL1dL0yj3
         HBbz2F0CCNH1OdBn65s0Q/ENMYkcGszbZadCIrpiG0EK5kIriij4C2FBR6UlYCKRHN9w
         p9W51A/xknqhK1O/8Nqs/NPWk42ckA8dknc7Xrgz/qjvOT8A4D7ig0iiP9NT58j0SZ0h
         Mi9PAbHtJRtoNR4/lx+TqtCwI9pJ0dd/GgnzigfjQB/DlMYudqJkEG7rpLLg4kQ1UTnz
         cVOA==
X-Gm-Message-State: AOJu0Yzv4pg+G7uA0UK+URXu+PP3Sbzm+/R5Vsbd9oE3MxmGIlv5bvkp
	mXdmOIfMp3DdPV4jbZDB1MzlG5AMrAkJWCtboNRfD123AUj0Lg==
X-Google-Smtp-Source: AGHT+IF1t3fRbHUCECeQMTYBIP7G6GOc5Wo5OWyOoH7TYRUpb5QZFM3aOG26fJXNjy6a8W8gmLOIy2YRW9zXnymuPPE=
X-Received: by 2002:a17:906:2009:b0:994:54ff:10f6 with SMTP id
 9-20020a170906200900b0099454ff10f6mr20123601ejo.30.1693273826620; Mon, 28 Aug
 2023 18:50:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 28 Aug 2023 18:50:16 -0700
Message-ID: <CAK5yBb-+nbb+KzvLtMTq81Ex+PnSdF+JzH2pCjbSA6C_j92B3g@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW34
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f17ad70604060804"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 01:50:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60909

--000000000000f17ad70604060804
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW34 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15199 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15199> AB-INT:
qemu-pcc failures randy.macleod@windriver.com
richard.purdie@linuxfoundation.org 0.0.0 4.3 M3
Medium+ 15195 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15195>
Dunfell:
Grub CVE-2020-27749 fix randy.macleod@windriver.com steve@sakoman.com 0.0.0
3.1.28

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f17ad70604060804
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW34 are li=
sted below: <br></span><div><table cellspacing=3D"0" cellpadding=3D"0" dir=
=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-famil=
y:Calibri;width:0px;border-collapse:collapse;border:none"><colgroup><col wi=
dth=3D"63"><col width=3D"43"><col width=3D"543"><col width=3D"235"><col wid=
th=3D"242"><col width=3D"53"><col width=3D"53"></colgroup><tbody><tr style=
=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold">Priority</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold">Bug ID</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Short Description</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Changer</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Owner</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backg=
round-color:rgb(219,229,241);font-weight:bold">Was</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Became</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;font-weight:bold">High</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"g=
mail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D15199" target=3D"_blank">15199</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: q=
emu-pcc failures</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxf=
oundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">4.3 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D15195" target=3D"_blank">15195</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Dunfell: Grub CVE-2020-27749 fix</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriv=
er.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:steve@sakoman.com">=
steve@sakoman.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom">3.1.28</td></tr></tbody></table></div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--000000000000f17ad70604060804--

