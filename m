Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 318C4CD3434
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 04:02:27 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.132.1695096139499064173
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 21:02:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VGADej4J;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9adca291f99so479208766b.2
        for <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 21:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695096137; x=1695700937; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cPcZEw24QY6iH4kRupU7E3dI6zKw69Cnz8pK4Pr3Wwg=;
        b=VGADej4J2tUi9UHzDXRPKv1SxmrkjHqGJEUpqkp2wt/3g2TuS3QDqHjc+t+Qfk2+JE
         gCD12M+blFdMhv9f9C9ZObfqwCHsORRqA24GItGQH6xhnXlblFnvAWTZwRJMXJ5l6ZSd
         PcsMPBHQBpuCOHxzgdt1b0jsHCPh0w1aTwEcAHLWOTEMZKfzBKDZvp6/cBvtiBq1lTCc
         pjDy1BROYYgfrhmZder2HmTPZb7BZcmmLJjCai48v2E5zHdOvryF8EMWFcVc0XETcUG8
         KnRGHxsqo2zYqRKVaBlZtAxbms/G1FvgbiNFI0NV+84d6jftU73mGxAcjbtYLhwYXRpz
         n47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695096137; x=1695700937;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPcZEw24QY6iH4kRupU7E3dI6zKw69Cnz8pK4Pr3Wwg=;
        b=ndj/vzP6Ww/aMhENIeXTzZpfLBn3pfuM0EZH/krtSx9dTiHuBqCrdmGjpQHlc9zY+2
         YhirC2CyqdE2GPNlOMdJ1QCcDLuHFVD/6l4SCPy4G+OF+ch1uzO/8DWUuWrX4YsWG4IU
         VilV2fC0gPwckGicL2PAaJncYbE8NgqJvbN1Y4x8pwI+eFFg8SQ8oRb1R9NfOIhXoVnq
         chJ57CHo4tfr5S3uUw7H0xUZmpncv5UwOaAwT6o/c/VyvJsIhtpdxP5qPhtS9C+ZdJtL
         Q6H0W92VppcxmJ+m7648AQPdtIixrAcjnBafZb8xkfmEND3QZPTKEB5jHF4xkRylaDPV
         Tu7w==
X-Gm-Message-State: AOJu0YyPQbrvsAzStmk8olHALnr61nH7tOp+AkqQQMJQz0eVxd0CEDWP
	lkQ9nfvxSDogIP06DMZlAjlH1g3KR+FzwMg9LvruIpEXuc8=
X-Google-Smtp-Source: AGHT+IFfYkesguEZXXqVS85xbzK5ghQusROMbnBPf59a0OGJkeObgpfP7owmjM73a8LcXCywCtMgwLBoX7eEhcR6xNs=
X-Received: by 2002:a17:907:1de6:b0:9ad:e096:cee2 with SMTP id
 og38-20020a1709071de600b009ade096cee2mr7263197ejc.37.1695096137284; Mon, 18
 Sep 2023 21:02:17 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 18 Sep 2023 21:02:06 -0700
Message-ID: <CAK5yBb9gy3iwpCbz=CyjgTrY11+02YSawhDus-93tOVF89xiqA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 4.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001f7f9d0605ae5365"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 04:02:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61036

--0000000000001f7f9d0605ae5365
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 27 bug owners as of the end of WW37 who have open
medium or higher bugs and enhancements against YP 4.3. There are 28
possible work days left until the final release candidates for YP 4.3 needs
to be released.
Who Count
michael.opdenacker@bootlin.com 34
ross.burton@arm.com 33
richard.purdie@linuxfoundation.org 26
david.reyna@windriver.com 23
randy.macleod@windriver.com 22
bruce.ashfield@gmail.com 22
JPEWhacker@gmail.com 11
pidge@pidge.org 7
pavel@zhukoff.net 6
sakib.sajal@windriver.com 5
Yash.Shinde@windriver.com 4
tim.orling@konsulko.com 2
sundeep.kokkonda@windriver.com 2
jon.mason@arm.com 2
alexis.lothore@bootlin.com 2
alexandre.belloni@bootlin.com 2
tvgamblin@gmail.com 1
throos@amazon.de 1
thomas.perrot@bootlin.com 1
pokylinux@reliableembeddedsystems.com 1
p.lobacz@welotec.com 1
Martin.Jansa@gmail.com 1
mark.asselstine@windriver.com 1
louis.rannou@syslinbit.com 1
jens.georg@desy.de 1
fathi.boudra@linaro.org 1
alejandro@enedino.org 1
Grand Total 214

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000001f7f9d0605ae5365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>Below is the list of top 27 bug owners as of the end of WW37 who=
 have open medium or higher bugs and enhancements against YP 4.3.   There a=
re 28 possible work days left until the final release candidates for YP 4.3=
 needs to be released.<br></span><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><tabl=
e cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"tab=
le-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collaps=
e:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"></co=
lgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-colo=
r:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:michael.opdenacker@bootlin.com">michael.opdenac=
ker@bootlin.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">34</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">33</td></t=
r><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">26</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">23</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><tr style=3D=
"height:20px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfi=
eld@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEW=
hacker@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></t=
r><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@=
pidge.org</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukof=
f.net</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:sakib.sajal@windriver.com">sakib.s=
ajal@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@windriver.=
com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling=
@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:su=
ndeep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:jon.mason@arm.com">jon.mason@arm.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:alexis.lothore@bootlin.com">alexis.lothore@bootlin.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height=
:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:alexandre.belloni@bootlin.com">alexandre.bel=
loni@bootlin.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmail.com">tvg=
amblin@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:throos@amazon.de">throos=
@amazon.de</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:thomas.perrot@bootlin.com">tho=
mas.perrot@bootlin.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pokylinux@reliable=
embeddedsystems.com">pokylinux@reliableembeddedsystems.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:p.lobacz@welotec.com">p.lobacz@welotec.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:mark.asselstine@windriver.com">mark.asselstine@wi=
ndriver.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:louis.rannou@syslinbit.com">l=
ouis.rannou@syslinbit.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:jens.georg@desy=
.de">jens.georg@desy.de</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</=
td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:fathi.boudra@lina=
ro.org">fathi.boudra@linaro.org</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:alejandro=
@enedino.org">alejandro@enedino.org</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219=
,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgroun=
d-color:rgb(219,229,241);font-weight:bold;text-align:right">214</td></tr></=
tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;back=
ground-position:initial;background-repeat:initial"><span style=3D"font-size=
:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000001f7f9d0605ae5365--

