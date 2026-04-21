Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A411F8FA8C
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 14:50:16 +0000 (UTC)
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32997.1776783008069252840
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 07:50:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=KuWjBbvU;
 spf=pass (domain: gmail.com, ip: 74.125.82.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-1279eced0b9so6238637c88.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 07:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776783007; cv=none;
        d=google.com; s=arc-20240605;
        b=bljGVxuKxvIxmrBuZxjLvebywj43qpspo7+iDe0BxURh7vmQHhzauwPv0EYsyGOAAv
         5Nk8JnH0cjvNyf87f7B7XNTto2rDX/cMXcRP8XAJLcgE+umTmrqGiG/2Y6B4rqQq7ZXG
         J/YYC7jLzi6riEqB3sekJt/ONJ5981/S8qDNgQMoBPZllbOymGBCIU26voxxKPw0aB/p
         xh6E4Vn9d37qg0300HtZl7uvFchatyzDDUuz+6geH6VqtRREbEn47nXMxyZZe0IjU3Gu
         DdqKDObRj0lGIdWZl63b9CW7nhb6ZMxFZtx5RBehS+rZ04rdr1UJyR0rFHLkOdBvUOJn
         441g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=aggtmS8YWMVpAHG2mqQHHJe/LWFPEueumF/IoVLd8Z0=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=M2pDjG0eC2tYBgHUf9nvUJn5OkSVMTNiPgMZZyGNu19eic9sEzk3KKxwfYTS84AsUY
         flmUuwlAjYqi9tL0+SkwkVLbwbUg7kaB9KD8jr8BfCl5WyV9IS2Vab3K+QbLruCUWoDr
         T5mSskIoZhEQD5MeE6h9AZpJfnJqrXRQWGqXSlbOvmBCEzZ1E02VmgmJdb0goFLXjxRJ
         DTa/T4dooe+/a3F04RWN79soxw7gNW4yNhXtJ10kWBITve+YwRQP7c3ymqOTMvvq4aI+
         HxUbs3S+6sTOwB+XLlfjFXgjyKqZrjKGrEy/8GpXlL/TLMq4Hy18FQTS7BD+Cf3Qbcy0
         55SA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776783007; x=1777387807; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aggtmS8YWMVpAHG2mqQHHJe/LWFPEueumF/IoVLd8Z0=;
        b=KuWjBbvUi0CxWANM7FePrtdfBKHsT+HOVyol2v3mQinT0mDtlWfbwe6BUdPLFI1Kvb
         23BQQPvsg6aHLvYKqYA9f+A3ifkZyMfCPaSI97qVbm5BN7Su6r4QengdCGU47vH2lVnV
         Va1fDDcpU9wjnWFAoYFrjiuf5Ci1hT5PbvL8E995nOLSz+lS3z3O3JLBUANDoODLetMn
         om9hK7JrcWL9N12rXtejqdSKrM5Gd9svEajSgOcuaOVeNEIKq2hozlE0EvDLKUULoXYw
         JZBg5JQLpL2FDbdk+dclOEIukYPCeOygaNTmqa/3slup+ss5L7xlP/4qJirZz+bEdkvs
         engg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776783007; x=1777387807;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aggtmS8YWMVpAHG2mqQHHJe/LWFPEueumF/IoVLd8Z0=;
        b=XqS71WlRiuz5Zc5LYcgA4Qo6fHiop4KkO2FJjyfJirNRpWTbHOPD1h3wW2AFXMJyLG
         W3hrOl8AckktnTLCcey00ZnWaXrXUPT13eEfgSpbX4cfjZZjw+JF4ZRdwLPAPkadmtIC
         8yJRCbjb6JJ8GzhVPrXfEMywGnTDPPO6CoRt4tDUcXSACS+itQoK+Z+nu44dfHqds0eX
         IfsdJpQ+xhg/h1q5cDfgknTjMDyJA3CXa77ienh8DmCkymAPIFspGfWJh3+6jb/P3zsA
         DRzraXvdCIFrti9Fkxewl+y+sGSQ+knaxxPBVFVI79sLNbyo2CfMzjX+jtWOahrEWdnC
         e7rA==
X-Gm-Message-State: AOJu0Yz00RYPX4jq8PWG9qws8q5OgqH/z/pG9i4WPle0PTmCusuHfeVf
	UgAjW4gN0mFJdoEd4FThsZ7e9+/gl2x9Y8kV3zsHRD8X+Z1ab/Bp5ujdcnhoLd8HexLp5hIZsEL
	Ru9Rk7/8F+hEDBe1kaHSMM9pLMHFhBx9NdxiZ
X-Gm-Gg: AeBDietjGZZLbhPG1lKpS+sJRnKKRZSMPK3GL/u0R4oG/CpNXCIL/e+rtb2IbZBUrVu
	S3+i+kQBHNatT10k61tc7sBm98EXOJYgKwseZVuDKxrWcvHOR8nsuanlFj+LuQIy/dRtNeqBn/8
	tvVsvDkNKrLIEmzQ2p6GBSzHYfAdvnQDn4zGsO25tezhJZ8jR/5MrCXstCO16pu46hOCGEo0WE4
	ZyBGxZb7Z7VCz8QKwLUKxcLR2JD46SQeV9/yIPuCUOTXz7ooekrJv5z05QXkNaa0QGhMYaFtVH4
	P7KgbYJwkDEu4x+9PolAqxwkXvM0zC7gSG/s6P3b8vFWBCNObToVHQ6Aptt6r2t8on+fdFAiGhG
	QWcz+9KuMD7xdu+xeEozQZEyWvzXPxiffW2rLJMvBSnX54fuYiENMM/zWPLCw/JAseheutpXZ10
	vno+TsDhDUs+iMzK2g
X-Received: by 2002:a05:7300:ca4:b0:2e1:e5c0:7992 with SMTP id
 5a478bee46e88-2e477c9aa7fmr8353137eec.8.1776783006947; Tue, 21 Apr 2026
 07:50:06 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Apr 2026 07:49:54 -0700
X-Gm-Features: AQROBzA4rck5Jy_ZFQ81eLXlyihyYY_VGOJMYrsXFlx4yhHIod-nkMVPBjmC8kw
Message-ID: <CAK5yBb_Y2Q5k2_Q6x+AodKeFC4AzRTcr46kv0rCyy05yx2pWVA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f8db68064ff9876a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 14:50:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66427

--000000000000f8db68064ff9876a
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 24 bug owners as of the end of WW16 who have open
medium or higher bugs and enhancements against YP 6.0. There are 4 possible
work days left until the final release candidates for YP 6.0 needs to be
released.
Who Count
richard.purdie@linuxfoundation.org 22
ross.burton@arm.com 20
bruce.ashfield@gmail.com 14
tim.orling@konsulko.com 12
tgamblin@baylibre.com 9
randy.macleod@windriver.com 8
david.reyna@windriver.com 8
sundeep.kokkonda@windriver.com 4
paul@pbarker.dev 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Harish.Sadineni@windriver.com 3
twoerner@gmail.com 2
JPEWhacker@gmail.com 2
yoann.congal@smile.fr 1
sundeep.kokkonda@gmail.com 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
peter.kjellerstedt@gmail.com 1
mhalstead@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
bluelightning@bluelightning.org 1
Grand Total 126

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f8db68064ff9876a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 24 bug owners as of the end of WW1=
6 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 4 possible work days left until the final release candidates for YP=
 6.0 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"=
ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" st=
yle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bord=
er-collapse:collapse;border-width:medium;border-style:none;border-color:cur=
rentcolor"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody=
><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoun=
dation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bur=
ton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">20</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">br=
uce.ashfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">14</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsul=
ko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">12</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin=
@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">9</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rand=
y.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">8</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">8</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@wi=
ndriver.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarke=
r.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.n=
et</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:mingli.yu@windriver.com">mingli.yu@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com"=
>Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:twoerner@g=
mail.com">twoerner@gmail.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@g=
mail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">2</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.cong=
al@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundee=
p.kokkonda@gmail.com">sundeep.kokkonda@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:pokylinux@reliableembeddedsystems.com">pokylinux@reliableembedd=
edsystems.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.co=
m">peter.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead=
@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heig=
ht:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:bluelightning@bluelightning.or=
g">bluelightning@bluelightning.org</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,=
229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background=
-color:rgb(219,229,241);font-weight:bold;text-align:right">126</td></tr></t=
body></table><p class=3D"MsoNormal" style=3D"background-image:initial;backg=
round-position:initial;background-repeat:initial"><span style=3D"font-size:=
12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000f8db68064ff9876a--

