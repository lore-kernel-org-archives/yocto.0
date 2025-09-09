Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52855CA0FED
	for <webhook@archiver.kernel.org>; Tue,  9 Sep 2025 14:21:24 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.14761.1757427681760236069
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Sep 2025 07:21:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jPPpYroB;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-24c8ef94e5dso46044205ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 07:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757427681; x=1758032481; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wmapae8MT6Qj0BvMlMpchvnJrWYF7/XQtvY6oJhjAy0=;
        b=jPPpYroBrGOwV9hySYpcf7vfA9CSFWXQpy0EyVyXqcs0j8VEexRpvlElPsZXj5tX+s
         Ac9Uh5ngF9YDA6AV6g+yXAwuZ19M73jtAQHs+W+zSZpW2hXbH0G4k563o5Rk2OmHGW5w
         GXOjEGLDKSHXtIHL4PgEu/ZKgyi3ZM42lZ91RQtFwK8iAPIiZZ/FTM3SG91UlDmxOa/U
         8mCaZYskiwRe15TAAZKSN4Sqh2ktE3aKiZIBkx8N2B2C7EipE/MjoUifcHVF67r9SaIX
         7Io6HGDPY8WTui0eIA5E0acxt1I6doAt3wYZxudoi+/bHMWgESd+9nYZewqxMBjaKigQ
         7VGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757427681; x=1758032481;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wmapae8MT6Qj0BvMlMpchvnJrWYF7/XQtvY6oJhjAy0=;
        b=ahFq26T6aNGQlX7t6em79N/47KCTpC5T38/Jmoyewr0z+mMH78cV6xbuUw1F8zKZVz
         sWmvin9cwnnGoN8dI/w+2kB6s82Vu5+fGoVA/xbgh93JobycI+hEkSpJHHSdS/U9t4Ar
         I2AHWME0JSwq78XoSO8gPP9oXAUyJl7jVPv4QklRWrClipowzFhBauhTWG30Y/ZTVWwI
         eZ2WIVjSDXwUjAKougzFeNhgLgeOYYgIpCB0nOu824uh+6KmWQEuQl0/sVli1vNyoTbp
         XjwkbbURG50BAr3CXLkqUXwiXK31fT/JD7Uaw69pTHulWsapgmvHqPvDWGV02cshTS5a
         T1Eg==
X-Gm-Message-State: AOJu0YwrJUgw5WWqDGjCoNaytIv+KTI8Cyk+Ww6JhRuOzrRnFcOidHfC
	r99pLo0I/fXasOYi0bHjAqcaOEoXIEVxbOzDCEWbo56kCXUAeked9ICp1V32+Glr5ufEf5DJBWZ
	4vgnrSIvmk9LNW2e++sk4nIG9L6dJaEtVnzkK
X-Gm-Gg: ASbGnct9KJXatn7NSb8Y+1lzQJxeWAeefTk9d4G+62VkiK2zYpx/pQQKGLbKKviiWWH
	cpu+XsvG+mL5+n4cSc1kfd1QKzAhEi2CrVtREPe/6GewhOc1CE0NB6ICZUDKKeilsKhtNEk4tUP
	FbfkJQAxNi7Ykf1yp3heAGs8aKd4TuZRUNEet0uLvhzMIm7+NPuVraEIQP+qLQ6pcqzGkgdpkEy
	1GZc2Kqhv9D/NluHjfNuvLydI+pNrHvl7EBwlUDbWyZ+nDZnceGXO1JQyhMPUNnbZF0zg==
X-Google-Smtp-Source: AGHT+IGh66A2rP/eduNmKTug47ANvOcWkHVuCUh5qD0CmatRSijdIo/TaTztO/iIXvPO4HUOq4ISC5KNAn9Qsu2ws9s=
X-Received: by 2002:a17:903:41c8:b0:249:1828:f4cf with SMTP id
 d9443c01a7336-24cef5278f9mr230639175ad.18.1757427680830; Tue, 09 Sep 2025
 07:21:20 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 9 Sep 2025 07:21:09 -0700
X-Gm-Features: AS18NWDfwcFNiM5sHfmRCkt2YBM4Hgu7ufO0GsIWCAjG5ITSloyNaMyL0HDtK6w
Message-ID: <CAK5yBb_FahKC9WyJMAWx_Sj=C-uChX95qQb-6KYzEHns516g8g@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a2699c063e5f046c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 14:21:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65822

--000000000000a2699c063e5f046c
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 21 bug owners as of the end of WW36 who have open
medium or higher bugs and enhancements against YP 5.3. There are 23
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 28
richard.purdie@linuxfoundation.org 25
tgamblin@baylibre.com 24
bruce.ashfield@gmail.com 20
randy.macleod@windriver.com 16
tim.orling@konsulko.com 10
david.reyna@windriver.com 10
yoann.congal@smile.fr 8
pavel@zhukoff.net 6
JPEWhacker@gmail.com 6
mingli.yu@windriver.com 5
sundeep.kokkonda@windriver.com 3
Yash.Shinde@windriver.com 2
raj.khem@gmail.com 2
mhalstead@linuxfoundation.org 2
Harish.Sadineni@windriver.com 2
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
sundeep.kokkonda@gmail.com 1
Qi.Chen@windriver.com 1
bbergquist@canogaperkins.net 1
Grand Total 174
Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a2699c063e5f046c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>Below is the list of top 21 bug owners as of the end of WW36 who=
 have open medium or higher bugs and enhancements against YP 5.3.   There a=
re 23 possible work days left until the final release candidates for YP 5.3=
 needs to be released.<br></span><table cellspacing=3D"0" cellpadding=3D"0"=
 dir=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-f=
amily:Calibri;width:0px;border-collapse:collapse;border:none"><colgroup><co=
l width=3D"249"><col width=3D"42"></colgroup><tbody><tr style=3D"height:20p=
x"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">=
Who</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0=
,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold"=
>Count</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burt=
on@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">28</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.=
purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">25</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">24</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">20</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy=
.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">16</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsul=
ko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">10</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.re=
yna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">10</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">8</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">6</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">6</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">5</td></tr><tr style=3D"height:20px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@windriv=
er.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Sh=
inde@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">ra=
j.khem@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundatio=
n.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">2</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Hari=
sh.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">2</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:tvgamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.fi</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:sundeep.kokkonda@gmail.com">sundeep.kokkonda@g=
mail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@canogaperkins.net=
">bbergquist@canogaperkins.net</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,=
241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold;text-align:right">174</td></tr></tbody=
></table><div><span style=3D"font-family:Arial,sans-serif;font-size:12pt">T=
hanks,</span></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr">

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

--000000000000a2699c063e5f046c--

