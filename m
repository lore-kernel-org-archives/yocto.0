Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D77BDEE49A0
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 00:23:05 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.6720.1692663779173794244
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 17:22:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=SxJdc8nJ;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99357737980so512961766b.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 17:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692663777; x=1693268577;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j1jJf82aWEit499r1LrAw2PNit+vRLtiTgUV7JoOj9I=;
        b=SxJdc8nJaMthQdh7nqFUnHp7RKtrKwV6pCx0nyifId2FVByfzHKqzMDkGpA6nUMk5T
         fhWJ35CpXtmZUB3lgKc+leLO33+o5iGYQhubJgaD/47pcYi7TmKwws8JXc38BYefxvFF
         cOGuztQqg9DDzLiRBsSmhjePX1qBeZ/j4rJa4esRgU1yiIwlYjHoxS5mRK8AWX7YFTiB
         hHhlBXJ2cgp9ken9lCITjcb2XzD8YIGcJiylViE75WwKxBP94CUJreQSOwSfIcZ1hhAW
         lKGVkBYanq3jb3GNTDUmWvnmYoStgdsYjLlSLXTItcrmQVMwGNY//HnRD18E16n2zjEe
         pjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692663777; x=1693268577;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j1jJf82aWEit499r1LrAw2PNit+vRLtiTgUV7JoOj9I=;
        b=gk4r2kXgVKir7CRnlNz8H8MyN6iSj93WKnjfucYLMZZ9YCogIabC/dYQfrR2xQqLd/
         RB7rOcO4Es9OCJxk1sm229faxP2H8J2rQDirtR7kn6chORkAA21Cl/Y7kdBuSkUCa0E+
         kDINGuplrypuddCsg+a5/elAvVf/NzadSz0xcyUp6jD1vnlgU4LBZ2s13yE76nN4enOf
         UNdY0yOFy9/gI2Ue6F+xDL0e4hXzLAQG8mf2IaFvmiJCrxYyeD5jPHcLNgaGllTEBfhb
         fgf1nEw2JtJSD7k3v1exp37i1WUJp6+aySnkqR5XxIyIEA2vcbAKEuFHAZwqgYeo3ZAD
         YnwQ==
X-Gm-Message-State: AOJu0Yw94YnhNlRJkMl1rOmtVsKO1XQb2Ct6Mt2K+6V5GL0zqbARpEso
	+pP3KDgV5ajV8nfgh187BZPWzk5XUlWzEDl4pLW4GIB/pBJNPg==
X-Google-Smtp-Source: AGHT+IFep548/YcYBybc0e8EbfIOm7/FpT02JelxLSysJ0/wtOTsBOxbR5TvlFlwfJwO8xS3R+5Iaoy6MTHJoyeb0/g=
X-Received: by 2002:a17:907:b1a:b0:99c:6692:7f76 with SMTP id
 h26-20020a1709070b1a00b0099c66927f76mr6886168ejl.16.1692663777171; Mon, 21
 Aug 2023 17:22:57 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Aug 2023 17:22:47 -0700
Message-ID: <CAK5yBb982aHF12ZH87ZxGMxA3H85vGnQZacFbt0EwW6VgLaDbA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW33
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000299c4c060377ff7d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 00:23:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60845

--000000000000299c4c060377ff7d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW33 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15194 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15194> AB-INT:
python3-numpy is not reproducible randy.macleod@windriver.com
tgamblin@baylibre.com 0.0.0 4.3 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000299c4c060377ff7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW33 are li=
sted below: <br></span><span class=3D"gmail_signature_prefix"> </span><tabl=
e cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"tab=
le-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collaps=
e:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col =
width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col =
width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"borde=
r:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Priority</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,=
0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom;background-color:rgb(219,229,241);font-weight:bold">Short Descr=
iption</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bo=
ld">Changer</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Owner</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-w=
eight:bold">Was</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bol=
d">Medium+</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:=
underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:/=
/bugzilla.yoctoproject.org/show_bug.cgi?id=3D15194" target=3D"_blank">15194=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">AB-INT: python3-numpy is not reproducible</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ra=
ndy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">4.3 M3</td></tr></tbody></table><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-ima=
ge:initial;background-position:initial;background-repeat:initial"><span sty=
le=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></sp=
an></p>

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
u></p><p class=3D"MsoNormal" style=3D"background-image:initial;background-p=
osition:initial;background-repeat:initial"><u><span lang=3D"FR" style=3D"fo=
nt-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:blue"><br></s=
pan></u></p></div></div></div></div>

--000000000000299c4c060377ff7d--

