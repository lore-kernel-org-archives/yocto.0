Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4BDC369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 06:21:51 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.13901.1744698109107082558
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Apr 2025 23:21:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mRYew/RH;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-af28bc68846so4595974a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 23:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744698108; x=1745302908; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zNB4HvajU00lgCcMV+VAR5UR3BxRNOehcU7WAqdK8A4=;
        b=mRYew/RHPUxGA20E/edbuq7F6d6N2b2mmTKmVBENH1yt66oO/CF96mn4XCB6c4DKKy
         TPnRXCfakl1Kq/9DEB7+DxkyKBnXjjxWCTyH4V11xbUaS3wvufPRVazJqBq/qe/BD3lV
         akADVVgU7NvDAfmNnOF0eGSQVdpjlIWGHjgnQxP2l7oVRKBlfIwJ/6P1taaVRohChtjD
         vmBZK7gA0rg7A1TnpgQz6Anvs9Zqyj8+kU/ngF9FeYu93vlUncTbXqxJD8IEErlkaY6I
         oW9BJJwwLmnifyUUzYdRsibvybmKT7YHiAc2m3yx7VZEDeiVi/wzjZu99Ax3inTG9209
         PydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744698108; x=1745302908;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zNB4HvajU00lgCcMV+VAR5UR3BxRNOehcU7WAqdK8A4=;
        b=glUWCLkfct/TS1OZCIF/WjRsK3/wVeVYA9n+psQfVkgE8uHMWhd6lpLkiIC3uARG/q
         gH3KOw/IKPwV1vTeOpgKqhPj1Mp/w9NYTeShDY0mKfpWdaYdaJ5H0rqTwksRU6R183nu
         E6dR0xVhIkpsldHlfvKXN+hyrM7tMI417oO749o8ha482e5vQnTnxFt99FoE/5xkF00U
         l2XhqlO/3oBBb7AqbgWTiUdI5fU3dnm/r0+4lr9m9tvCUcxnKfP26p59PbdPfFmS5kid
         8/eYLcOZHlsz0Vi6R4KV2TXzPmwSttgSMsLYFaYP+mpiAzOrTVr8UfnnqKVVy2IxbtNx
         ik8Q==
X-Gm-Message-State: AOJu0YyKjq1JokFQDUQa/fh53j1xaBzgQU3bYdmewx4w9NMzoGbBSpkF
	GChii4rfDtyxNs3+TQA6O4uTHCzS2LaO1eKU77a4M9euTH98lFAcasYoUAABKkbgZZx0peZCjJ4
	pqMvJrTm3+LnEz9nczRmA5E3N9XFuSW35
X-Gm-Gg: ASbGncvgLtVuD5QL7osmz2cLK/6TahN8zF5SZp8Hj0JjR+VqpZHfARKbmmysjRyX5df
	YWtq9YGltZ5+XnXbTf+eXr2sRqHPwDcc9aj/1dl0cztZ8u2/jdpZPIIt0Y+EaV52G6YbdtwNO1M
	bopipM4Qk/dkw5Y9NrOZs+M37kZB34qZcqUCAV6YeCXTXmw1NEouQ2J9k=
X-Google-Smtp-Source: AGHT+IEPC/kk0XeWBOOBHB4vgoTf+bWhWZeXv6mO/I+bgCOOZuq3sGgiDRf6zqamZ7Hds9uMSWWI/DzOhiYafTYHgpI=
X-Received: by 2002:a17:90b:5445:b0:2ff:5cb7:5e73 with SMTP id
 98e67ed59e1d1-3082367ee62mr19112325a91.23.1744698108242; Mon, 14 Apr 2025
 23:21:48 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Apr 2025 23:21:36 -0700
X-Gm-Features: ATxdqUGV_j6M1SNd098Pm-aZSTRsNlpUgGEsL-2S_AYMNXied7X9MSIU0g-jaEk
Message-ID: <CAK5yBb86fSXsrO1sQs_TbT8vNXV_J2ihspm3xyqwRQeYGkhr6A@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Stephen K Jolley <sjolley.yp.pm@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fb77910632cb2ee3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 06:21:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65164

--000000000000fb77910632cb2ee3
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 30 bug owners as of the end of WW15 who have open
medium or higher bugs and enhancements against YP 5.3. There are 123
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 30
bruce.ashfield@gmail.com 27
richard.purdie@linuxfoundation.org 22
tgamblin@baylibre.com 21
randy.macleod@windriver.com 18
tim.orling@konsulko.com 11
pavel@zhukoff.net 9
david.reyna@windriver.com 9
yoann.congal@smile.fr 7
JPEWhacker@gmail.com 5
Yash.Shinde@windriver.com 4
sundeep.kokkonda@windriver.com 4
mingli.yu@windriver.com 4
william.lyu@windriver.com 2
mhalstead@linuxfoundation.org 2
yogesh.tyagi@intel.com 1
twoerner@gmail.com 1
tvgamblin@gmail.com 1
thomas.perrot@bootlin.com 1
rpjday@crashcourse.ca 1
raj.khem@gmail.com 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
pidge@pidge.org 1
nayakksanjay@gmail.com 1
jens.georg@desy.de 1
Harish.Sadineni@windriver.com 1
fathi.boudra@linaro.org 1
ecordonnier@snap.com 1
bbergquist@canogaperkins.net 1
Grand Total 190

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fb77910632cb2ee3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 30 bug owners as of the end of WW1=
5 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 123 possible work days left until the final release candidates for =
YP 5.3 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1=
" style=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;=
border-collapse:collapse;border:none"><colgroup><col width=3D"249"><col wid=
th=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1=
px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
background-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@=
arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">30</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.=
ashfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">27</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxf=
oundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">22</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">21</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">18</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kons=
ulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukof=
f.net</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">9</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.r=
eyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr"=
>yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.c=
om">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@wind=
river.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sund=
eep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:william.lyu@windriver.com">william.lyu@windriver.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D=
"height:20px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalst=
ead@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</=
td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yogesh.tyagi@inte=
l.com">yogesh.tyagi@intel.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:righ=
t">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:twoerner@gm=
ail.com">twoerner@gmail.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gma=
il.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:thomas.perrot=
@bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:r=
pjday@crashcourse.ca">rpjday@crashcourse.ca</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:pokylinux@reliableembeddedsystems.com">pokylinux@reliableembeddedsyste=
ms.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@pidge.org</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heig=
ht:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:nayakksanjay@gmail.com">nayakksanjay@gmail=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:jens.georg@desy.de">jens.georg@des=
y.de</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Har=
ish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:fathi.boudra@l=
inaro.org">fathi.boudra@linaro.org</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ecordo=
nnier@snap.com">ecordonnier@snap.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bber=
gquist@canogaperkins.net">bbergquist@canogaperkins.net</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">190</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgro=
und-image:initial;background-position:initial;background-repeat:initial"><s=
pan style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></sp=
an></span></p>

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

--000000000000fb77910632cb2ee3--

