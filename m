Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54C109B47A
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 14:31:02 +0000 (UTC)
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.21825.1774967461713295246
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 07:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=PGlWgnjb;
 spf=pass (domain: gmail.com, ip: 74.125.82.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2c54c68db4dso4359870eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 07:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774967461; cv=none;
        d=google.com; s=arc-20240605;
        b=TgTUtL+97nx4gdF3qWUJlodpXzkTspQTwsNbku1lZYJwUs+B1VzH4PctroXdq51ZoV
         HVBti3nARBlQnSryPM1ANE/N4O3p+w74fNmOey39QyQSRSJ1upgSU2dH9UWFRMlWJ+V4
         JYxfUuqFsd2eSZDNjGkSGwX5Y3JGiMBhboEuXxMoEcE4b4BxRWNZ4jj1MSqhCfunz7BC
         u7TDXI8xzEr+ML7prM2RVlb4cOWeEdVIKfcwNZfTAKTIZ9eIRU6wBfoQXtbpWIG9ZhJc
         Ui96aXnKd/FKCqKa8yvSO7AHB1oy6tsY+lo1Y4tI0m33VMUnAjnmffMm2mdAFEmvWDl7
         osqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=FkuknAaub/nAAZIM8OJNYgk/HYc6yfQ5z2htT+Iq2Mg=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=h1WtzAJmXicGpFtzH7fms1SCTcPRB3Qt3OsQuvmlRiL7MHET/RNoSKLi4eZF4PyHIn
         8rGEbfm7fTWL9yMb1KOdXO9Y7Bj0j+NCugBf/BKMP7bf1GzkYaSWp5mADcu/47lzTIPo
         mdcQHvCzmo9sROS3SFqkUbQ0G/veYGkOsSImh34n7S9Zux9Um8edD0SiXkx3OOQ9jAS9
         FKFvnZdWU5uGaN3a7KfcTLZr0Ti6SiopgetBHufR6fPdo7OuRmvNQTvfb2ZIaROcY0fJ
         WNUWGyr2qN9dw6LaJQdMa9C+8TduxLjx1t4FlrugRCC0o3atkbWWiQ9Pbs+0ErE218Dp
         6JgA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774967461; x=1775572261; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FkuknAaub/nAAZIM8OJNYgk/HYc6yfQ5z2htT+Iq2Mg=;
        b=PGlWgnjbnAw/IvxAJXHVIon3zZjg3O0ZR21QzECPN+zTsFeD2jCHv/sKQUhnlCrsTd
         JOBFfHlZSTw893CAyhtBlubQJlBfVHB8zE5McDY/9f4BMefF8UnSvaoYJSvEkAM0gKse
         Y7ukPQN5Hsfs5ZLnJPmpJaKt1/qOeqsF4VIHW9PKy+VWJiD5PEoInLGcT2p1okffVN5m
         2l/9gFD4c85OYMrVD40GeF2wfxLdwpu/HHxRLUjf6EMMywTy5w1rWKqrs4RrWgsw6KIy
         dGhgof5iK8dSbz0imtezL7dLRwFcvX7EUl7+WBEYaRumgwx/VKhvzYEKqabfoJrn7ZkE
         n/LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774967461; x=1775572261;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FkuknAaub/nAAZIM8OJNYgk/HYc6yfQ5z2htT+Iq2Mg=;
        b=BsLjNywM/Oaire/zUPuGwbP6QY3uWDMMA/4kwyHJDbona5NmoV8dzAt7P3/4n0X2Ky
         QRgyeKHiAVJQ9dOBHeUu+el6kAZMJ8Ygq9dt/hvbJz2iCvgLbz7G0+EWgSgxSG6pUdvW
         GTROmuDTmXpyESPPF4i+tkQ3IXeI4BklNMfTxNLpT6FBU6pUpQwPa5SL4i/DA9yyVwBq
         I7vMrdXhirY/qej3v4vXskdvd44vXLOBsH5hdUSWzt4br9wNlSFc5FZM5eIzii+oxAzU
         TJcZclwNY4oXi4vPKcktU8NlGQlPntk05C6PgDHq6lDqC54Y+pufltVypkG6nEwa7fyc
         U7sQ==
X-Gm-Message-State: AOJu0YyWvj8L8jQ1rf+2jCUcufsN1DAKmaVSKASQEogocKgtTpP6dysE
	UVuc7RyTFAc6645f55d6dNoRDbtQTEgUO5N6k6AtZa7rsoHmUXGI21Ez4tGKE8hTV2kWj3I4iIm
	ZkJx4P1e0z/w6ozmnQCMeam1YMIaSQvzBor5A
X-Gm-Gg: ATEYQzyh4Kkwg8AmyBc9VEoZaGHWTpqW99SB33bXX2FhMhH5saG5bFdfciTqurr+oDX
	D2/8yscPqyKNQxUUnbuG+Z94OBHICEI8jaRsC2Y5NTAAeq38rZQ7PZHQ2ztJFfBH3AGXDHDhZlb
	hBOYdc5ytXxRsHKLNR05LpUB4G2vCZsU/g5xuKiLNEnrloW8X1LiNSKxNKj2Su7KUZqaY8TXMSp
	1JeNB8m4O5U2IoO+zv5bCgJh2zHSdsFJxGVGqfsd9tFSE9cZYM+iXWKANqy609lvFY3SBwLjzfz
	l/z2/A3KnQ1Jp/zLSYpEmcGa6wLY9eZxk4Kjpov2fPSdc45RrYT9t1+v+42hz+fohydI7J3y9HE
	1UhgOEwefjx7DLbneOBvk78eZyg==
X-Received: by 2002:a05:7300:dc85:b0:2c5:ed1b:c8a with SMTP id
 5a478bee46e88-2c5ed1b0fddmr5309484eec.5.1774967460802; Tue, 31 Mar 2026
 07:31:00 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 31 Mar 2026 07:30:48 -0700
X-Gm-Features: AQROBzBL2E3QyOaIZB6WipbU1CtYzME2s8bebo7_4KVq-gbjXza4Xu2I1S1XmEE
Message-ID: <CAK5yBb-JnLVCdqMwaiY+S97ZZbo6Q_xFipU+mLz5vJo5c5HEog@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fd34c9064e52d084"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 14:31:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66368

--000000000000fd34c9064e52d084
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 25 bug owners as of the end of WW13 who have open
medium or higher bugs and enhancements against YP 6.0. There are 19
possible work days left until the final release candidates for YP 6.0 needs
to be released.
Who Count
richard.purdie@linuxfoundation.org 23
ross.burton@arm.com 20
bruce.ashfield@gmail.com 14
tim.orling@konsulko.com 11
randy.macleod@windriver.com 11
tgamblin@baylibre.com 10
david.reyna@windriver.com 9
yoann.congal@smile.fr 7
paul@pbarker.dev 6
JPEWhacker@gmail.com 5
sundeep.kokkonda@windriver.com 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Harish.Sadineni@windriver.com 3
twoerner@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
peter.kjellerstedt@gmail.com 1
mhalstead@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
denis@denix.org 1
bluelightning@bluelightning.org 1
ankur.tyagi85@gmail.com 1
Grand Total 142

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fd34c9064e52d084
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 25 bug owners as of the end of WW1=
3 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 19 possible work days left until the final release candidates for Y=
P 6.0 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" s=
tyle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bor=
der-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px=
 solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;bac=
kground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">23</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ros=
s.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">20</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:br=
uce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">14</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">11</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylib=
re.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.=
reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr=
">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev"=
>paul@pbarker.dev</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></t=
r><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">J=
PEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@wind=
river.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:p=
avel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mingl=
i.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:Harish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:21px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.fi</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heig=
ht:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"=
height:21px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.com">peter.kj=
ellerstedt@gmail.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfound=
ation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"hei=
ght:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.org</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:bluelightning@bluelightning.org">bluelightning@bl=
uelightning.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:ankur.tyagi85@gmail.com">=
ankur.tyagi85@gmail.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</=
td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);fo=
nt-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(=
219,229,241);font-weight:bold;text-align:right">142</td></tr></tbody></tabl=
e><p class=3D"MsoNormal" style=3D"background-image:initial;background-posit=
ion:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-f=
amily:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000fd34c9064e52d084--

