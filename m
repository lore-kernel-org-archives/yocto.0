Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC541CA1005
	for <webhook@archiver.kernel.org>; Tue,  2 Sep 2025 14:37:48 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.78980.1756823867525420007
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Sep 2025 07:37:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cHLHeJAZ;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b4c72e4f1b6so3057935a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 02 Sep 2025 07:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756823867; x=1757428667; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oPEHjETZh/lLrFQfgAreUlMwTqgBeZsbfywCZQ/DF4Y=;
        b=cHLHeJAZUKifPW6ivMPesc0UAsQq+5YZ/XC9mlSbJHahQ1m06s8p0+oyEVrMlTFoiD
         8+JsC+seg909D1QPZ9KUVq4lzdZCRQfIOTUjNdUjVZ+xvZd15B6Q8Ak8rmeBIfeDLIR9
         nt8JZl2E7Kvq4CWj9ICDXRwn419yWfgt6GN8nr2tqtABHBFcNL9zlnIQJrf2HL8o8/Wt
         SUByTk7vB0rYSqghfZuKtTjvBtzSz9KLGbk4hWWfMCdxhIKg0atUP6/OH2rL29S3y2LI
         9OSbmI+JIHD0sPMEzj0vHdSLIAYESaJlG2q34dcugYrsPodTchntJpP3eO1jU2TrfsM+
         zFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756823867; x=1757428667;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oPEHjETZh/lLrFQfgAreUlMwTqgBeZsbfywCZQ/DF4Y=;
        b=KwPVwL0I1c7ApVu+Rry/A0ASsFxJCpk5g2ajY9YrS05UySnD9QhGXJI0daE1rbB5NJ
         B93u5Z8EvoBjdgJmOXQSC/s5auVl/FLaI+l+hqmoC3chM3hVsp8NtHk5XJQ8TDIM9Mzg
         EZ4x3lwOKrqsqaSrhQ/E9+cb4TM4USblq6jH3nRKyqoXeB2DHcY++AbYD6tTAUp3DeBO
         0BJWQ76CT06i+E445HCCZ91xAWr6l+bL3CLe6HOMW60sc2nejLWrq90NCxJcMA/EhgbX
         OpEK2hXntMO0RxI1/tf72CclVsMtiUjqXfx1uLR2IpKpfXvY9jW6Hexnfqc5Ix/z0oLt
         eOYQ==
X-Gm-Message-State: AOJu0YyAiblmnJrZDKzP7u2orYkrVy5DW70QOVJv70TNbT9W6xL5BcRp
	XwI9avwG6dPQMAUN2eJjxsJj+48WjYDXHvxOoChGG8PzeAUtwsf9xL0KwWZ/pSnyafn8aVk+0+K
	s4mC3YV0r4CGUXxRIPvW1qS4jFYLKGbxozgHv
X-Gm-Gg: ASbGncsEKjrBjTh0UfnNBzdBxaud6krWTWW7p8ITuHPsWgKcXQXi8rXyjdtZ96bl7wq
	JOjLeI/BEc4U1wESS11C6/R9eOeAVWlBQzNoblbyIFPpd+cMhSnSJlholWg0Y1YNo0O2dz1kIVS
	+jpmSFGouoW4npXod7jh7F2j182uRJDVxELbWqWO6efADjyGP9kxWZQekNBJNnjdFMhtSq32nlm
	VxVjvIlaNfYxb2WpsCszM/0bQoUzYjnThc+gWxnt2tpVtmSuJ6wH6yCqmXqDA8x+8ocVRtqJVVf
	OvJ+
X-Google-Smtp-Source: AGHT+IFL9Vrib+kGCsd7trW7w7ZgUwuvbgBa+5/btShlumPkyAgHzqavdm4eyVSZWFaucUqTeD3L02npS3OGSZE4zI0=
X-Received: by 2002:a17:902:e80d:b0:246:571:4b51 with SMTP id
 d9443c01a7336-24944b38b8dmr168405925ad.29.1756823866493; Tue, 02 Sep 2025
 07:37:46 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 2 Sep 2025 07:37:34 -0700
X-Gm-Features: Ac12FXzuz8SRYAZrSpxHOJfE2IK9itAo1U2Vyf2u3wzLS6LXNQYjwTujlJbnSYo
Message-ID: <CAK5yBb8o20OpHLKgZvFd-U3SxP=RcMve235Sf7TD8b679sGvLw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW35
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007ecee1063dd26e14"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Sep 2025 14:37:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65812

--0000000000007ecee1063dd26e14
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW35 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15959 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15959> Exclude
rust failing tests in OE Self-Tests randy.macleod@windriver.com
Maganuru.Jayasurya@windriver.com 0.0.0 5.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000007ecee1063dd26e14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW35 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15959" target=3D"_b=
lank">15959</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">Exclude rust failing tests in OE=
 Self-Tests</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wind=
river.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:Maganuru.Jayasurya@windriver.com">Maganuru.Jayasurya@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4=
</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:=
initial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--0000000000007ecee1063dd26e14--

