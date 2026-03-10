Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544A1EB106B
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 15:08:20 +0000 (UTC)
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42314.1773155299062240616
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 08:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z2NJuhRu;
 spf=pass (domain: gmail.com, ip: 74.125.82.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2be1c918173so14993894eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 08:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773155298; cv=none;
        d=google.com; s=arc-20240605;
        b=g062mqKaMmIYAJ5/khxbFajrHj/BbHKaKViv+aLovseM/g7pFuTm0MWafac1vkGK8+
         DI6HPyEp5smHQjJHYyWPowKOQVvXU4SzoAI1Z9zweGmRjqNt/XVIupt5Rt8fVly/woT9
         oxvg1j2ZFI8HSN+P22u+glhg81cwE1PHj4TUXh8jcMcZAjjWptSRE50J+Aa+/qbkyIX0
         AzUIio3/dCL6TTpGf0+ez/IOFApzYqoIyI8XAw4pgf91NJtf4ZiDF8sAqgw++VjkDO4U
         Y2II+b6EWh3Plhl88WKmU0dPZjsZB+DbOK1xHzd7KOuHal0n1dBp84Tyrx/C83y+VE62
         JBzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1yoH4i11ZE6lCHjYxnUgZa+3PfsKhdKW9pj9bTRYHAE=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=fULhjT43RzU94rCgAh+BcvNu4nU0yL6e1ifAP35ASowJtuwKtNugV4+ijdhf6e7QqR
         4Yt/XWlw1UssEpIMGaiPc3sj0qD+Nkq4rYfHLvMM5lIX/W8+wd5PlB4R1BiJsYj3eKnQ
         vqpUsh1rAhlKwpMXz2zKJoUAyCe7bCkQNTUGZWjPTLjeSnhFf1Rhr1gfOEegHQtAAI0V
         Lui41lYALpispBZE8/FW+GMe6vKMtVVWCYFn3QGuND3fXKTuZ+ByPH5dT30B4XnHTGEu
         vu0HYefF0IYI4yCcP/yBUKeUrXZ6Vo+yI6OkyzUAoNHSY34fjih4m3EC1rXS0H+8V55q
         30tg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773155298; x=1773760098; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1yoH4i11ZE6lCHjYxnUgZa+3PfsKhdKW9pj9bTRYHAE=;
        b=Z2NJuhRuOMXVNWqV3zGgcJg0KNQ9/9qNmPMpyMFBr6l4mXmP2/4Z7DReW5zL4NChTg
         +zzPTFuzd9YH+dZl8/5YiqGwKiBVYN+JXQTTUVYh30rdw23KfLcudCmZymL9xNJtQQCN
         hQxz0kZDQKUpD91IC5hkd0UfcwoVMvOqvwrT0LujckTFyX0/cZCv+UvLuNSbSjoSZvsd
         5rY6TzYPBcEQrHxRdphnywGUqvsvnZtgZ18EBrEYKDJDQrzesgVuBhB7rtlvs5Vd5Pxh
         rEKWXnMV47Cke5FwwHQcT1pHZisao+9WseH7tWHOb7GJk0c9fR+ajkggjXRXXDUqVpF1
         evcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773155298; x=1773760098;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1yoH4i11ZE6lCHjYxnUgZa+3PfsKhdKW9pj9bTRYHAE=;
        b=XAaUkx3ikaLur6lBVkU+EyFx5JTmBZr6v//tErAfqWghd8HHH+H3lxu+GmsmYnumhR
         Py62F4nrDD2KxeSUJww2NlVjbAyiWwFCNLp4+duzJjG7qiHOMedy3Kv70IcfZZ1UYjf1
         ctM85ScgmhEZy49BoqImrUXDKZs1nbKHukU3rC5sU/MjSZ4UMK8Kbo9+fJcgLUAAH350
         8gcL6Tot5zSz6s3Qkt4m0LStEkaw4mGKHyNtrqSjD89uJ5GKvSRaYSG9NdL9I1BOuEU/
         Wy+iHep/SU3wEOpIOGUcG1x2cJI13ICxIjx+7Yogcj+eBvDiHwNSsNEVO1lCBzrKlImt
         zllA==
X-Gm-Message-State: AOJu0YyMDwIc4ZWTqiSu1osrZQ/v9rT1GqJmK2CIwW83ljWf+okJ8rym
	6hhPlvJV6u9iujod/xttpWGyf3cZzTPXuL2esBhuZWYKP8a6gsBI9TX2BfKKYDjct2TqSnf124D
	2lEmFlj3M0lvZO5r+VT29+1k+BlGHN8h15Wox
X-Gm-Gg: ATEYQzxpnjcHlAb+HauiJSwNM4Oc75wyZvV3bLmxn3GLq9zEi/GIdkPQHOSgdpLzEt9
	I+8MfE0Ogg2Tfdd9DDDlD2mnykU1VRuPVfc+N0qzr/IQJVUh+P232NI6cG32C9TGWoJPeqhwXmB
	NMf+uH+QBHfydi2T8S6Tor7rDbsRC9IjI420TJ3+5k/bbl4pFZGqN0QDM/SJ5/ci0RNbj+IwrX/
	oHEon9ltsg+VUgB50L7TG5f8c/xUdf2VoILW/uGLux6Svw/Wc6Rppj2lY36uqN4XgXUEKkCqd0T
	7oZ9BKUy8E1Dy/LynrmWFTSG9kVpU0ONSRW2iXBpqNvZxAAZviI9QckVuKrNUIKkV3+29esUnuk
	GwH5hLvAeGX2JGzZKGNVnL3cJNSk=
X-Received: by 2002:a05:7300:7494:b0:2be:1544:5c40 with SMTP id
 5a478bee46e88-2be4e06454cmr6768252eec.31.1773155298021; Tue, 10 Mar 2026
 08:08:18 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Mar 2026 08:08:06 -0700
X-Gm-Features: AaiRm50z2xyL6PPH0vPKja2HIq9npWMDt8xk-oLm5rwYmVlCIJvT0mSxHnrxLgY
Message-ID: <CAK5yBb9SoVwCqRQ6vOBDCKxLqxmFO8+6i-_XEQCCpDs-HQaqaw@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ab964b064cace3ad"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 15:08:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66317

--000000000000ab964b064cace3ad
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 25 bug owners as of the end of WW10 who have open
medium or higher bugs and enhancements against YP 6.0. There are 34
possible work days left until the final release candidates for YP 6.0 needs
to be released.
Who Count
ross.burton@arm.com 27
richard.purdie@linuxfoundation.org 24
tgamblin@baylibre.com 20
bruce.ashfield@gmail.com 16
tim.orling@konsulko.com 11
yoann.congal@smile.fr 10
randy.macleod@windriver.com 10
JPEWhacker@gmail.com 9
david.reyna@windriver.com 9
sundeep.kokkonda@windriver.com 5
paul@pbarker.dev 5
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Qi.Chen@windriver.com 2
mhalstead@linuxfoundation.org 2
Harish.Sadineni@windriver.com 2
toni.lammi@tl-software.fi 1
peter.kjellerstedt@gmail.com 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
jon.mason@arm.com 1
denis@denix.org 1
changqing.li@windriver.com 1
ankur.tyagi85@gmail.com 1
Grand Total 169

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ab964b064cace3ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 25 bug owners as of the end of WW1=
0 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 34 possible work days left until the final release candidates for Y=
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
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">27</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">24</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tg=
amblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">20</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">16</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">11</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">10</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhac=
ker@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">9</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">=
david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkond=
a@windriver.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">5</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:paul@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">5</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
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
to:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">2</td></tr><tr style=3D"height:21px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:21p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Harish.Sadineni@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:toni.lammi@tl-software.fi">t=
oni.lammi@tl-software.fi</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:peter.kjellerste=
dt@gmail.com">peter.kjellerstedt@gmail.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:jon.mason@arm.com">jon.mason@arm.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heigh=
t:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.org</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:changqing.li@windriver.com">changqing.li@windriver.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D=
"height:21px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:ankur.tyagi85@gmail.com">ankur.tyagi8=
5@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bo=
ld">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold;text-align:right">169</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

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

--000000000000ab964b064cace3ad--

