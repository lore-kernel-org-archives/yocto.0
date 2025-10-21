Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B721CCD1A7
	for <webhook@archiver.kernel.org>; Tue, 21 Oct 2025 06:28:12 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.5133.1761028089663528756
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Oct 2025 23:28:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kXgPHxrk;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b6a0a7f3a47so4859767a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 20 Oct 2025 23:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761028089; x=1761632889; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iiLxo0UQtw5WD1gr6/DZLWEVd4xokyjw8BPSZeY2NiM=;
        b=kXgPHxrk7UKBggSHjTWAuDN+WmlGEe5hmyKTXm14xXkLXU056LAfJv7qyDBWM1nqhE
         4bStjjAygqcVRbf0gt7kAzxkWxDDoLupsd2S5Eb4VNujXYYTqNDzVCQTvXK2kQKD6opy
         4TDpvlNTsi9k7leeBn+RCRDcujjVSS+X6bYlz4xXHkBg5qGmx6TaPgdPSCXHBWhRyPey
         B4cLVSV9QlPVZXX2OJT2HKykLlOnKaa16fKDsNGjpAZp4CyGknUoLsmgnfnFGG9uo/47
         IH28IlW+ARa2u/SYF3P8hMp8CCycZ3xeDhr0hxfF5ws5nVSKQf4FYoMsJ9ozMd3ndARA
         0o8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761028089; x=1761632889;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iiLxo0UQtw5WD1gr6/DZLWEVd4xokyjw8BPSZeY2NiM=;
        b=MJdL/0c9LzMHceZA/admmcCaMUYn/VR4Z1B76jQdjxMgJfV02qcrV3ld5cA8ssznNz
         A5dFzaY1sl/1QfMVOvxbsK26tO9PEMiayMkVl40KPgkSx7eJitEv8NYPqxnkoRkkMivu
         NPIqi6fZbeUt4bx0np3Ff7bxCM9ym+QEveESpsOPnE9vm5Rmb/YM5Yo3DYI7PJHJuYn6
         n/d80npPyMHbN3Z4m5aHlTsfG+yNYAcy1eWne6BRO4yJ6iJ9Qoim/quhn3W4P7UupSOk
         etIDf/8PelNxCG00sca5jrDeIZS4KTWPPRiflhqzHxneB8R5CMJoXIaQ03aJZ+P22B8P
         pydQ==
X-Gm-Message-State: AOJu0Yydbwptvh5PVMtVIK2Cr95w56E1vCgAVB4VOQdjqBl5jCYcgg0Z
	FZBV7vIBM2voaqgf2JX73HqPyHzC2vSd/V+PY7+L+BvQWqZ7uyWnjutHK8hAr2evNoLq/gjw/Bl
	DpEWNfeb8kZJVHyHOB9LjtFwykhL3NU75gc8Q
X-Gm-Gg: ASbGnctIU1yMMkFfYx7/+/3XQdKFzTCSWemg/XtSRsYoAKVv3N+NTK64BWRgFvx3iVU
	LxHkdQAKVLH58FhUXra4G76icQctiaqr8DcDqXLl5lNa4F6+IIakZLHd1+DyAytB+iW+91KAzZL
	Vt6qJO2Q4CTX09MKYiqKJd+6C1aiObrjBLWlOE7zIkyii1Tu5wA/546MHAOt3lEExP9blDhMU5S
	uFkkceYcmhv6vhEXkom7VYvRY8nA1P0tgvZ+7anmdTRn4JW0anZbIJ3wfN/JGb+LqvYPzQX5+h5
	mhPHTG+eLC6k8Fsdg7Y=
X-Google-Smtp-Source: AGHT+IE97mySxCwqqMccA6KKr/CjcLJoD/HLnBBc+yETCCd7unjQ4CEui864MJ0gEXvQCw3pj+2qEiL1b62f9G4YiVU=
X-Received: by 2002:a17:903:19e5:b0:265:89c:251b with SMTP id
 d9443c01a7336-290caf8519dmr213763485ad.29.1761028088754; Mon, 20 Oct 2025
 23:28:08 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 20 Oct 2025 23:27:56 -0700
X-Gm-Features: AS18NWCQb28H5IZkp0kP4aJ-dxucO-j4DHzEaywoIJqCT_SdhKe-Dwrt4qt1Cds
Message-ID: <CAK5yBb8mKNfHvtHQUO7VKy-bDX1JPwP9_bJTLmoLRGXPm_eM9g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW42!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ab757a0641a54de2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 06:28:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65956

--000000000000ab757a0641a54de2
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
yoann.congal@smile.fr 1
ross.burton@arm.com 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ab757a0641a54de2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold;text-align:right">5</td></tr></tbody></table><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--000000000000ab757a0641a54de2--

