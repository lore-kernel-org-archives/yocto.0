Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 350BDC001E0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 12:55:41 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.119615.1698065739221451287
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 05:55:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MgGSbFn+;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9ad8a822508so488509066b.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 05:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698065737; x=1698670537; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3fG/Mg6FhUZzPXeL+nkyT5mZB5TjC06P9oNuKm3Y5FQ=;
        b=MgGSbFn+eeOOjc+eFe9miF+tfqweV7BC628Se8dI8z8+Ha6lBqYRNClh6wMTACyRP7
         Fkrxtxp0K1bg5b0INLI/9EyPweivV6WSndJ1ZujMBqVWpJNkXb5OmSYryUMEcDyHFTQk
         EJuzZ5UIIs0ycFsw9P8/ZC58aFLF1vdHvIb7wJ0fhJ52XI9eV/IsC7uDtR8s6M/5S4kT
         pmSnJoLG1/0OgXElevTpprm4XOQ97i1IbTcKL0SgTXCV1OcUUrOBY1CSMo3ar74TTBMv
         HQn+cISfMh+lzFj9SeL1hitU45IFFepJ2UZl7g6d/GdwS/2q2lmRrgKHl6nxaXYn3ERP
         lxiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698065737; x=1698670537;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3fG/Mg6FhUZzPXeL+nkyT5mZB5TjC06P9oNuKm3Y5FQ=;
        b=TEgYAdus8GQMyCFOy4iry6nVrOoFDnRQAPPQfzTun6IcJvNGiAq0lxVULWMnT1augu
         KhaDhd56qTeSLSPdkuKTqZi+sX/uY+9Qu7o2TmlhbJLLVGbqyGmQotBujkMIfaTaTd9U
         PHGUu55jDET+EVZB5LqhpweB+ZVMP/UoPs89hrQJqUKJ6ezg1ZW+67zRF+ZbFUQzRs4a
         w+IAUGgsReNT8KFUYIX31o0bhfv1z4+6NJNKvwivekpnpeJRlj7LRjbqjwPGaND+q5h5
         t2klM8HVZylkySTdwBR5vMWs7lrLsDPU5Vz894e/mCJfuXL4zM6u6Bo0J7FrBHCiZwfP
         9MUw==
X-Gm-Message-State: AOJu0YxG+IXYBRiHUQVVyGzV3ymexAqqsY9NLw/QUzSt4byR1kiR4BjE
	PQ/2bJTqMxi+yvXbpRwEcQsrUpMgaZMuIeVEbAau5RlIUaw=
X-Google-Smtp-Source: AGHT+IHyM97J36OQPP+uFz24Vsd08h3jJ3F4Pt1ojOuMhJXBeqPBz2lubQisfzuQXrjTyCDZUk7cFPaqXUZMs2fM9Gk=
X-Received: by 2002:a17:907:2ce4:b0:9bd:a738:2bfe with SMTP id
 hz4-20020a1709072ce400b009bda7382bfemr7109727ejc.38.1698065737200; Mon, 23
 Oct 2023 05:55:37 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 23 Oct 2023 05:55:26 -0700
Message-ID: <CAK5yBb9eY1ca9G_2SSYXhP9E5_Aev6yPnSsnFZb=u5N0pboOFA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 4.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001237f9060861bda0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 12:55:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61451

--0000000000001237f9060861bda0
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 24 bug owners as of the end of WW42 who have open
medium or higher bugs and enhancements against YP 4.3. There are 1 possible
workday left until the final release candidates for YP 4.3 needs to be
released.
Who Count
michael.opdenacker@bootlin.com 34
ross.burton@arm.com 29
richard.purdie@linuxfoundation.org 22
randy.macleod@windriver.com 16
bruce.ashfield@gmail.com 13
david.reyna@windriver.com 12
JPEWhacker@gmail.com 10
pidge@pidge.org 7
Yash.Shinde@windriver.com 3
tim.orling@konsulko.com 2
jon.mason@arm.com 2
alexandre.belloni@bootlin.com 2
yoann.congal@smile.fr 1
tvgamblin@gmail.com 1
throos@amazon.de 1
thomas.perrot@bootlin.com 1
sundeep.kokkonda@windriver.com 1
sakib.sajal@windriver.com 1
p.lobacz@welotec.com 1
mark.asselstine@windriver.com 1
louis.rannou@syslinbit.com 1
jens.georg@desy.de 1
fathi.boudra@linaro.org 1
alexis.lothore@bootlin.com 1
Grand Total 164

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000001237f9060861bda0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>Below is the list of top 24 bug owners as of the end of WW42 who=
 have open medium or higher bugs and enhancements against YP 4.3.   There a=
re 1 possible workday left until the final release candidates for YP 4.3 ne=
eds to be released.<br></span><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table c=
ellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-=
layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:c=
ollapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgr=
oup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:r=
gb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:=
rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:michael.opdenacker@bootlin.com">michael.opdenacker=
@bootlin.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">34</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.b=
urton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">29</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfounda=
tion.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">22</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">16</td></tr><tr style=3D"height:20px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;text-align:right">13</td></tr><tr style=3D"heig=
ht:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">12</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhac=
ker@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@pid=
ge.org</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Sh=
inde@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.co=
m">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:jon.mason@arm.=
com">jon.mason@arm.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:alexandre.belloni@=
bootlin.com">alexandre.belloni@bootlin.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:tvgamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:throos@amazon.de">throos@amazon.de</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
thomas.perrot@bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"hei=
ght:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"><a href=3D"mailto:sakib.sajal@windriver.com">sakib.sajal@wi=
ndriver.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:p.lobacz@welotec.com">p.lobac=
z@welotec.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:mark.asselstine@windriver.c=
om">mark.asselstine@windriver.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:=
right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:louis.r=
annou@syslinbit.com">louis.rannou@syslinbit.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:jens.georg@desy.de">jens.georg@desy.de</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:fathi.boudra@linaro.org">fathi.boudra@linaro.org</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:alexis.lothore@bootlin.com">alexis.lothore@bootlin.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
;text-align:right">164</td></tr></tbody></table><p class=3D"MsoNormal" styl=
e=3D"background-image:initial;background-position:initial;background-repeat=
:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thank=
s,<span></span></span></p>

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

--0000000000001237f9060861bda0--

