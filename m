Return-Path: <dennis@sparkcharge.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B1A3C4332F
	for <webhook@archiver.kernel.org>; Mon,  5 Dec 2022 20:27:07 +0000 (UTC)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.27292.1670272023496867942
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Dec 2022 12:27:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@sparkcharge.io header.s=google header.b=bFdvElL3;
 spf=none, err=SPF record not found (domain: sparkcharge.io, ip: 209.85.217.44, mailfrom: dennis@sparkcharge.io)
Received: by mail-vs1-f44.google.com with SMTP id 3so11383892vsq.7
        for <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 12:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sparkcharge.io; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mh023nq0YT43ueeDae0ZFAl9G7gCi5XdFL7zWxTCkg0=;
        b=bFdvElL3jBvDNafGXt0PJuUxTMNyoevWQG22TvvsUgwXwEPJ5A0f34IaUayXhj48zG
         sjTgTKXgoykJNvrtat7lISA4FdTVFLgR3RWF+WUsBDVd6r0C2hcaJWtPf6nWKjrWJ2bx
         cv68eQx4M79LqcY+RGLYr4FH4aWG04K97ileohf53YgyjYq97AcxTmlN5VvBZYyhZ2yp
         bNm9lvwMH+r2yE0Ck2ffUpT6XGFJuHMwC9eaPQ0SG1pHGot4rapvQPHfpubp/OsM/B1a
         IXBfpvdaDbPZGM3eoMQL7+mtE7NyxTuM/N/SWKj9h7T2ADKB2qujjw7TVge454fsCJNZ
         6NOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mh023nq0YT43ueeDae0ZFAl9G7gCi5XdFL7zWxTCkg0=;
        b=4bpwvN0tTxrBduR6iszTnquwKjBkZk1QDf3O2ukyisOYj0RQKEVdgxKFS4fTCO/+QJ
         zvW7lhPqlOsbNVjuwI0TKc6G7bTxfBOdjonaDBXvmMOzqm4vdTXRz0wWtwMPXpkrQC7e
         Ov0UbndOslPeQiP42jlEtqKgL4S14NEiT+rvii6H8x78SVoVagp9vs6aQmofQCEpxoHY
         vYeP4p69UzHyd+4BM9bzmJZQwmJp1URdTuUrPN0TPgPz0B3jAicrTQ4qGtfSUuWbozGY
         fhWIN8rAvpurvqvB6Auu32N04tEjt25WYD/hpvYRKbou3H0eeSViOdhTck2HCzgKZbG7
         nnIw==
X-Gm-Message-State: ANoB5pkGrRLr3W5oWNYeRyKO6CjfmrSt8Jve5Ef66PTDI7FdH0q4cCgm
	1YCdK+UW7sJlrEHDXvrglSR/4ukHNSTH0pnZP3kSk8rOseb3wKJ+
X-Google-Smtp-Source: AA0mqf5dKUjAnrjx9SNnqmChFTqvhAmLYS4cNOaxtzWrI2LCkq7i/DJ/n6nXGmEfwRSTWCH35SUGJkvpl7fuJCQ2DJs=
X-Received: by 2002:a05:6102:36e:b0:3b1:3837:854b with SMTP id
 f14-20020a056102036e00b003b13837854bmr4325014vsa.82.1670272022209; Mon, 05
 Dec 2022 12:27:02 -0800 (PST)
MIME-Version: 1.0
From: Dennis Lambe <dennis@sparkcharge.io>
Date: Mon, 5 Dec 2022 15:26:51 -0500
Message-ID: <CAKYiA1Cp3LfjG+J7u+88E-VFV6owwtLQfqeueUZZN3Mf05A8vw@mail.gmail.com>
Subject: systemd-timesyncd: set specific default mtime value for /var/lib/systemd/timesync/clock
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008ffcae05ef1a8275"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 20:27:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58730

--0000000000008ffcae05ef1a8275
Content-Type: text/plain; charset="UTF-8"

 systemd-timesyncd uses /var/lib/systemd/timesync/clock to maintain a
monotonic system time across reboots even in the presence of RTC failures.
If this file doesn't exist, "at the minimum, it will be set to the systemd
build date".

I dug through systemd's build process, and found that it will get that
build date from either the timestamp of the NEWS file or, if it's set, the
environment variable SOURCE_DATE_EPOCH. So, great, that means this is
already accessible through Yocto's reproducible build infrastructure. But
the catch is, that variable is listed in BB_BASEHASH_IGNORE_VARS, meaning
that just setting SOURCE_DATE_EPOCH from a bbappend or
SOURCE_DATE_EPOCH:pn-systemd from a conf file doesn't actually cause the
recipe to be re-run when I change the SOURCE_DATE_EPOCH. It also means that
other developers with their own sstate might continue creating builds for
themselves indefinitely that don't take my SOURCE_DATE_EPOCH into account,
until such time as they happen to run a -c clean or systemd's recipe gets
upgraded for another reason.

I don't think I want to remove SOURCE_DATE_EPOCH from the
BB_BASEHASH_IGNORE_VARS globally, but removing it from
BB_BASEHASH_IGNORE_VARS with a systemd_%.bbappend appears to have no effect
(even though `bitbake -e systemd` shows that my :remove is being processed
correctly).

A hack that I've thought of is setting PR .= ".${SOURCE_DATE_EPOCH}" but I
can't help thinking there must be a better way.

Anybody have any advice on how to get Yocto to do what I want it to?
-- 

Dennis Lambe (He/Him)

Lead Firmware Engineer

sparkcharge.io <http://www.sparkcharge.io>

Download Currently <http://onelink.to/hjugtj> Today!

<https://www.facebook.com/SparkChargeCorp>
<https://www.instagram.com/sparkcharge.io/>
<https://twitter.com/sparkcharge>
<https://www.linkedin.com/company/sparkcharge>
<https://www.youtube.com/channel/UCmEAwtNrCs2nFwXax5x7t3g>

--0000000000008ffcae05ef1a8275
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>systemd-timesyncd uses /var/lib/systemd/timesync/clock to=20
maintain a monotonic system time across reboots even in the presence of=20
RTC failures. If this file doesn&#39;t exist, &quot;at the minimum, it will=
 be=20
set to the systemd build date&quot;.</div><div><br></div><div>I dug through=
=20
systemd&#39;s build process, and found that it will get that build date fro=
m
 either the timestamp of the NEWS file or, if it&#39;s set, the environment=
=20
variable SOURCE_DATE_EPOCH. So, great, that means this is already=20
accessible through Yocto&#39;s reproducible build infrastructure. But the=
=20
catch is, that variable is listed in BB_BASEHASH_IGNORE_VARS, meaning=20
that just setting SOURCE_DATE_EPOCH from a bbappend or=20
SOURCE_DATE_EPOCH:pn-systemd from a conf file doesn&#39;t actually cause th=
e
 recipe to be re-run when I change the SOURCE_DATE_EPOCH. It also means=20
that other developers with their own sstate might continue creating=20
builds for themselves indefinitely that don&#39;t take my SOURCE_DATE_EPOCH=
=20
into account, until such time as they happen to run a -c clean or=20
systemd&#39;s recipe gets upgraded for another reason.</div><div><br></div>=
<div>I
 don&#39;t think I want to remove SOURCE_DATE_EPOCH from the=20
BB_BASEHASH_IGNORE_VARS globally, but removing it from=20
BB_BASEHASH_IGNORE_VARS with a systemd_%.bbappend appears to have no=20
effect (even though `bitbake -e systemd` shows that my :remove is being=20
processed correctly).</div><div><br></div><div>A hack that I&#39;ve thought=
 of is setting PR .=3D &quot;.${SOURCE_DATE_EPOCH}&quot; but I can&#39;t he=
lp thinking there must be a better way.<br></div><div><br></div><div>Anybod=
y have any advice on how to get Yocto to do what I want it to?</div>

-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margin-left:0pt"=
 align=3D"left"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=3D"l=
eft"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=3D"left"><table=
 style=3D"border:none;border-collapse:collapse"><colgroup><col width=3D"263=
"><col width=3D"361"></colgroup><tbody><tr style=3D"height:0pt"><td style=
=3D"border-left:solid #ffffff 1pt;border-right:solid #ffffff 1pt;border-bot=
tom:solid #ffffff 1pt;border-top:solid #ffffff 1pt;vertical-align:top;paddi=
ng:5pt 5pt 5pt 5pt;overflow:hidden"><p dir=3D"ltr" style=3D"line-height:1.2=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:8pt;font-family=
:Arial;color:rgb(0,0,0);background-color:transparent;vertical-align:baselin=
e;white-space:pre-wrap"></span><span style=3D"border:none;display:inline-bl=
ock;overflow:hidden;width:166px;height:74px"><img src=3D"https://lh5.google=
usercontent.com/JigiS-TlJzMe57CvJ4s3DkqFud-lrLVgVU5XqvjV1hILRQvQp3pQIad6ryi=
Cm9KCcnLS9prbXA5PwiU4FdR3vqB0vTfJcWABnHNoToVhdOyAQOzQLeI9eurGYKRR6CoeKwlgW6=
Txinwu6mYDWw" style=3D"margin-left:0px;margin-top:0px" width=3D"166" height=
=3D"74"></span></p></td><td style=3D"border-left:solid #ffffff 1pt;border-r=
ight:solid #ffffff 1pt;border-bottom:solid #ffffff 1pt;border-top:solid #ff=
ffff 1pt;vertical-align:top;padding:5pt 5pt 5pt 5pt;overflow:hidden"><p dir=
=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bottom:0pt"><span s=
tyle=3D"font-size:8pt;font-family:Arial;color:rgb(19,103,220);background-co=
lor:transparent;font-weight:700;vertical-align:baseline;white-space:pre-wra=
p">Dennis Lambe </span><span style=3D"font-size:8pt;font-family:Arial;color=
:rgb(153,153,153);background-color:transparent;vertical-align:baseline;whit=
e-space:pre-wrap">(He/Him)=C2=A0</span></p><p dir=3D"ltr" style=3D"line-hei=
ght:1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:8pt;font=
-family:Arial;color:rgb(0,0,0);background-color:transparent;font-style:ital=
ic;vertical-align:baseline;white-space:pre-wrap">Lead Firmware Engineer </s=
pan><span style=3D"font-size:8pt;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;vertical-align:baseline;white-space:pre-wrap"><br></s=
pan><span style=3D"font-size:8pt;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;vertical-align:baseline;white-space:pre-wrap"><br></s=
pan><a href=3D"http://www.sparkcharge.io" target=3D"_blank"><span style=3D"=
font-size:8pt;font-family:Arial;color:rgb(17,85,204);background-color:trans=
parent;vertical-align:baseline;white-space:pre-wrap">sparkcharge.io</span><=
/a><span style=3D"font-size:8pt;font-family:Arial;color:rgb(0,0,0);backgrou=
nd-color:transparent;vertical-align:baseline;white-space:pre-wrap">=C2=A0</=
span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:8pt;font-family:Arial;color:rgb(0,0,0);bac=
kground-color:transparent;vertical-align:baseline;white-space:pre-wrap">Dow=
nload </span><a href=3D"http://onelink.to/hjugtj" target=3D"_blank"><span s=
tyle=3D"font-size:8pt;font-family:Arial;color:rgb(17,85,204);background-col=
or:transparent;font-weight:700;vertical-align:baseline;white-space:pre-wrap=
">Currently</span></a><span style=3D"font-size:8pt;font-family:Arial;color:=
rgb(0,0,0);background-color:transparent;vertical-align:baseline;white-space=
:pre-wrap"> Today!</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin=
-top:0pt;margin-bottom:0pt"><span style=3D"font-size:8pt;font-family:Arial;=
color:rgb(0,0,0);background-color:transparent;vertical-align:baseline;white=
-space:pre-wrap"></span><a href=3D"https://www.facebook.com/SparkChargeCorp=
" target=3D"_blank"><span style=3D"font-size:8pt;font-family:Arial;color:rg=
b(17,85,204);background-color:transparent;vertical-align:baseline;white-spa=
ce:pre-wrap"><span style=3D"border:none;display:inline-block;overflow:hidde=
n;width:25px;height:26px"><img src=3D"https://lh3.googleusercontent.com/_RZ=
yTnBlTzB2tQscay89q-kLw9WqMkJKZLn4A9lyKVnnjFNvIV7p3GxD1EVMEfVVJJ7cioUtj8HsT5=
PmEf44pnNdOl3zduPSOde6rTf-IOJYbR-vd5A0Bt3uNxwM11tWzbnugL0EaBVu6FRl2A" style=
=3D"margin-left:0px;margin-top:0px" width=3D"25" height=3D"26"></span></spa=
n></a><a href=3D"https://www.instagram.com/sparkcharge.io/" target=3D"_blan=
k"><span style=3D"font-size:8pt;font-family:Arial;color:rgb(17,85,204);back=
ground-color:transparent;vertical-align:baseline;white-space:pre-wrap"><spa=
n style=3D"border:none;display:inline-block;overflow:hidden;width:27px;heig=
ht:27px"><img src=3D"https://lh3.googleusercontent.com/O8AMEC9A2oqS0Zk4-3SP=
NqpRoSjrGiWr8YKQiYDBgChFCYF_2BC6mVlcgUdOb4zzAYi6uyguvOOogdibHvOKmbMdGGJdf9u=
Ri0vCDiSlcUi-iQ2lfK7Rsjyp-4uzuHYsTJF681riTkcZl1LyFg" style=3D"margin-left:0=
px;margin-top:0px" width=3D"27" height=3D"27"></span></span></a><a href=3D"=
https://twitter.com/sparkcharge" target=3D"_blank"><span style=3D"font-size=
:8pt;font-family:Arial;color:rgb(17,85,204);background-color:transparent;ve=
rtical-align:baseline;white-space:pre-wrap"><span style=3D"border:none;disp=
lay:inline-block;overflow:hidden;width:27px;height:27px"><img src=3D"https:=
//lh3.googleusercontent.com/_oFTiJyRYxczONA9FEohFJ_Qoo4NoZ5saVcTCvhJmMSukYv=
sBQkg2h3VG8j3ZzjB48fsBRYag-dHZ5Rq-nH_WNsXuNTus8KIpGbtJY2UjD39gqffDCgd-iwhzU=
d-yk3B6zZcI3uUVKKA-ro5eg" style=3D"margin-left:0px;margin-top:0px" width=3D=
"27" height=3D"27"></span></span></a><a href=3D"https://www.linkedin.com/co=
mpany/sparkcharge" target=3D"_blank"><span style=3D"font-size:8pt;font-fami=
ly:Arial;color:rgb(17,85,204);background-color:transparent;vertical-align:b=
aseline;white-space:pre-wrap"><span style=3D"border:none;display:inline-blo=
ck;overflow:hidden;width:27px;height:27px"><img src=3D"https://lh4.googleus=
ercontent.com/4AD7_dK7d56AEzw5YxklE2_iiQPBfeXfHjdhKGYuTAcZYK4sbaLekvscINbSf=
Agju4kub7rWMtUQ774ScMUDUkY2E4VXC-rEaarReatk9wjHhLe4lTY334Q3bqITM-g6XLh1qXmC=
p2egvmW-rA" style=3D"margin-left:0px;margin-top:0px" width=3D"27" height=3D=
"27"></span></span></a><a href=3D"https://www.youtube.com/channel/UCmEAwtNr=
Cs2nFwXax5x7t3g" target=3D"_blank"><span style=3D"font-size:8pt;font-family=
:Arial;color:rgb(17,85,204);background-color:transparent;vertical-align:bas=
eline;white-space:pre-wrap"><span style=3D"border:none;display:inline-block=
;overflow:hidden;width:29px;height:29px"><img src=3D"https://lh6.googleuser=
content.com/CCrX8CYBjLVWle7uiEBS6XEt1_zRjgOKoxiqinaD8lD319724fAmPTSB2BVsd2D=
p5wg2kCSD0B9zmDdgJglUQQMlNowiQdZje8C1jK_fIwOL2viWyv__c8r-Zr4T-Pa4Qyy0H9wkAL=
2wnPzwFw" style=3D"margin-left:0px;margin-top:0px" width=3D"29" height=3D"2=
9"></span></span></a></p></td></tr></tbody></table></div></span></div></spa=
n></div></span></div></div></div>

--0000000000008ffcae05ef1a8275--

