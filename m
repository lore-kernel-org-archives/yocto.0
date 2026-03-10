Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A6AEB106B
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 15:09:50 +0000 (UTC)
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42341.1773155386822431744
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 08:09:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GVqmX2am;
 spf=pass (domain: gmail.com, ip: 74.125.82.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2bdcf5970cdso8749193eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 08:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773155386; cv=none;
        d=google.com; s=arc-20240605;
        b=KfPZasPT/oHx3fJMiGUFbwF4g44TuyaGl5K2JrCtzlAFrfbt6NDcy45pRP3DH+9m/l
         3MsHQyoj4S+AJtemSPR+M6tNvCXLR8lhgDBm46OqHTDS9inoJp23LMZSmer/qJt5x3dh
         D/5LNHAvJh+k1qzGp7dPGQF4/etRxz8yK5Wnw75Nnx9sjdAvpOZKR0YRj5x5f5e1FVex
         pAhv0lldrhAW1Iu8bfxeuLTK2pR8zD4/W6TqxR546GJ9MgKmV0Kb+pJBLzauVeCvPZBS
         G7i0HX1esnqOj6MsXvQNCbHQqk7VtOEVJjnSueMl+ZlHn9rRKIlghX9yiaGKB1NNcKdQ
         Ba+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3pryul0dIqWEbhxtA1j4UOzEGPK4yjpfI3mmSz0ErM8=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=EmZ1ALLuSCNUT9vgr5XUJkDHG0RLUwzeE2Zj9cQ55ozJ1OunON0ED29WV2w3xN8P8p
         VYsEYOh5sZUUs5ZbG6f8OHZj3ppQyI9rzti+L73RwTprjrNBZWrRTK0XbBLuWZnlzrD7
         kpjymfQER7oirxb5w7o3HA9NJZkBsJJlGgOnzUiaYJqFq+A0tOnOtYhYk1Y8H6qwl0j3
         zy30tdZikNzNPFGM8kmpSmDQTqU6CqS4ZUQ1Iad9/PuL1fPt+HTpE88GwfajwmXKYD5y
         91FAHqk9NA7a/u4ZtOKzHIpeTKGraM5OF7CeQ06otZrvs/UogoDPXCXYCUaG6Yx+dumS
         i6nw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773155386; x=1773760186; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3pryul0dIqWEbhxtA1j4UOzEGPK4yjpfI3mmSz0ErM8=;
        b=GVqmX2amD6dZdI1WocTp19YsVUZd7ti07MbmWmVDIpkpfH6y08+kkgWhXKzfH9mF8p
         kahXXqfo1pJmZYld6fA6XzaksT65+SETK6/cWBeqBUmeo9y4KaqmqUr4yf0REC7EkNWB
         cdmqz1hGWsFGK/RfFdZoboLmrl/bBmC+IqwdgMtGq0lMCFoqy9EgKknkLo5OxJhl1/yP
         PwIhb827wXXAVLVLrifvhp0nFg9ntNovT3DsgqM+l+Lj3PcHvuC0NfvlnijhLI6AS33a
         lCkRg4A2LqQRxikh621oFGkCoNoeP7mgg6erQmqBqHiRQkK83gm8vGkHvVOu+LLtCceU
         7UgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773155386; x=1773760186;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3pryul0dIqWEbhxtA1j4UOzEGPK4yjpfI3mmSz0ErM8=;
        b=lewItkQG8YTpS121hIcB13pYzNBJQhdwgwNc5miu0TZmGwr3tvE3b8G9IL4RVJ9v3F
         Bf23jIxw05g7Mbt3Yc7+wFW+rrqBPI8nh0Bga31sta5G4bxAtuzqMCz8gxt4zkZFcf+n
         IcMfff6Lh3oLmJsG8vV7Ko5aw8BZAPsesn0tv4Y0cDI2w9cxuShLM7CJtqiXkObMqphK
         fMqtZo1jMkiJdbVMxo3CLYf/N7XBfXfH5Ih7M1Zx7E33emhCoS2kFdsSg/CCDyrhmnyj
         MmxiWgcDBLD9ktxvVfIBTo1nKJFxoPGwxnB7/Mqv+FzUMJ5Ro5i2g7oM3VM0e19GKGHw
         WnlA==
X-Gm-Message-State: AOJu0Yw/oion5VETp97YrOPiiQT3XkyHixMiIsf8NVxuf6qiVOq5DJAN
	j75t7fOPlkDvslukNpV4ZcHs8wET4c1nDtJzVB7GPZ42LilBXj+6EE3BG2uWSY7aFs3358yrOy9
	EY5MlG7Z5AZb8i813P/snfUO+th5Ei3/b/GlP
X-Gm-Gg: ATEYQzzXsT4Nhg5y9fFjLgbpZgSiQyg8qa9Eky5KbIoEaqAOjpfiMvas7Jf4VvO712I
	czziNyEMXmmJ0aZT4C9Yeyovf2AHGrQHQOgVCvOxXQ7912+nfn7We1VhFrPUJXOk9/xXFlJIyRd
	Z5US9qJGpJeYLOmkmJJcKdmV42Ajn2tyLEyR86PrLp4Y3j7861mbJnXiUyEh8yJ7u0zg3D8gPV2
	HINXCbGhOXn/pF4miCtIbCruwlN46mUyoJgBLiAYfNq+6Ld/5d+czV0YAisy2nME+OU9ABtsYmU
	/sV7vPIEoe8cZ1V93v1PW7HZdZW6Ttd0Tiw1HSQrNH7AZ3ky9oe7SuAXssVbYyRq0aZNt4V1JKd
	oZ0wodJZxkkKCJUmmd3l2l6V5AuY=
X-Received: by 2002:a05:7300:3215:b0:2be:514:3697 with SMTP id
 5a478bee46e88-2be7a25f162mr1384382eec.13.1773155385914; Tue, 10 Mar 2026
 08:09:45 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Mar 2026 08:09:34 -0700
X-Gm-Features: AaiRm53mtTOu2_Zs-yt3l7aY0RDTf_FcbnMKq_e2ASBuRgGUCK8nDpWpWhGeTOM
Message-ID: <CAK5yBb8+N8DCGASjaDz3F-FBWgMJy3V__WGjUcYHVzmprP4=tg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW10!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e8b944064cace8b3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 15:09:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66318

--000000000000e8b944064cace8b3
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 12
yoann.congal@smile.fr 1
tim.orling@konsulko.com 1
richard.purdie@linuxfoundation.org 1
Grand Total 15

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e8b944064cace8b3
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">12</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoan=
n.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></t=
r><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com=
">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@=
linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">15</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--000000000000e8b944064cace8b3--

