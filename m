Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26B09CDB465
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 23:54:14 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.196386.1697500452988661612
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 16:54:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kJWQHtqx;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50435ad51bbso6513802e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 16:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697500451; x=1698105251; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lTz3NkVQUKPrTb+G6hSWDI660Xw0O8CB/u6GhxXWjCI=;
        b=kJWQHtqxMqDkh4BYB6eqH3mgsj9rFxW+B3IgrTTtMKygJAvSaBfyplSzBLbPo+YdVy
         unOvE5H5DjoWZrKDg26yj0MZ9OYBizhvgumy1AKYrl7jGyRu0mR6c126ofGJ+UjFWzmD
         kZlrKFTan2fV5aHqiePS6Vuh1n9Ju1IrXHaTdR5Ctcpifu/+snTvbfk/6Kcz061p5jgE
         PhIu0wWQqxVoPtG/JCxhs/vTXT9icYqfv6nuf/7nnRyDMJLzgIsMMIbSymCS2lQzJ0pk
         rWfUGzQJOsCb04Mk96RiHfjGgEaHG63f0jqjGdkddFD2V8ECz0K/HoyECmUdPaQpMzRX
         I5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697500451; x=1698105251;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lTz3NkVQUKPrTb+G6hSWDI660Xw0O8CB/u6GhxXWjCI=;
        b=bH8yROUVEsyjoq1t5lcz+QJOEBK9Pe4W6mLoS/F5Msfkiy3GkkeHKyH8RNMZ1jXknw
         hV2l6VXIuzXA/ExCKxWlU0MeBOcWm6hDbRfuINjrO3Vjop6jgcLH35knJS9p9W8dBYpX
         A/021WLE23kaSnPJyvkgZ+gUwy5hrNCKaV3UWiHnV6CCfqYRO9fSCo9peYx+zFuMidtw
         OLd3wO2FubHi1B1mHfQjL9QXn/0xAyVgkITtW9hAdxVcZ078Cw9eDkTrVOLo4b1mYm3u
         /U5LXYa21929+O8boynL3EhOVerJimsXXjd8GT76QLIBV7g3IMVvq+Ime70MNoO00jKi
         0fBA==
X-Gm-Message-State: AOJu0YwdkdW4tSuI0BwgYJpMs1GFQnXSCFXca/wzkhk65zQTJV+oVUvK
	wrgjoCWAB0Niqd09UeBd3N1aICwtl813g8OrghMQFNKmzvY=
X-Google-Smtp-Source: AGHT+IHW46MUWMGGCTtSicUpKhFdrdPv4ykiMM0LGqkeE7tV+kqrCYNd32Y8rNJWjeUbHWozgkJHP2IIwGVCi2bE1WM=
X-Received: by 2002:a19:655d:0:b0:507:a620:6b96 with SMTP id
 c29-20020a19655d000000b00507a6206b96mr507553lfj.57.1697500450607; Mon, 16 Oct
 2023 16:54:10 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Oct 2023 16:53:57 -0700
Message-ID: <CAK5yBb-5-dC_HFiBc2NKS=3RbAzo6WLq026MNWP+ABMg6uRhJg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW41!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005d57f30607de1fd8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 23:54:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61351

--0000000000005d57f30607de1fd8
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
sundeep.kokkonda@windriver.com 1
bruce.ashfield@gmail.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000005d57f30607de1fd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@windri=
ver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></t=
r><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-wei=
ght:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold;text-align:right">2</td></tr></tbody></table><p cla=
ss=3D"MsoNormal" style=3D"background-image:initial;background-position:init=
ial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ar=
ial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000005d57f30607de1fd8--

