Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE04C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 19:56:03 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.93793.1705348557813649668
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 11:55:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=koYZAu/V;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-559565a3008so1264632a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 11:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705348556; x=1705953356; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mgmfjX7YycWN3Sw86qhgvW6UH+2B5wcYnPLqQldX+fc=;
        b=koYZAu/VxpJ/47F5JRj7YXWx4M+GBIcQ0/YPFxpfhXpgOyYa1ZgdpKBfRUYjaO6Pji
         Se0TPUzGEEd8DEFl6f9LXNZ0fsYQ788Ri8hQgeDyQXEx0+GoHtIrsK6FW7k/oxkqO5kh
         UybjKtL2j286bZZQnVcjEUA9hnaEc2+wOr8MrxRz3f3cGYxaONiM6D7//05FM/4QONTY
         C+3apkGadCwXLV7yUCT5DOM9tZxaTpOghlGp2o9cpxK5IFHmGyS7ZYzdyrD23+Wg0RfZ
         Ph+BATo60hdknuEbqMPzRGKrDtCUnO+NnnixBn7y5kRFpMlH9TQiKv3Z8pPvsv1fzjEZ
         jC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705348556; x=1705953356;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgmfjX7YycWN3Sw86qhgvW6UH+2B5wcYnPLqQldX+fc=;
        b=dGR88C1WWxoqRYLdOUQEXedcQEZI4Puh2Qx3yR63JssMqKuHrJ2zjnJbSqFCEQXvrd
         T0WJI5yg6Pnj3Sy5Dobbl0f5UTvWLhrhSeRIOXn1oJcq2+5+uiZ8S3gN7lx5a727x1z7
         qpgu0qIvHOIwGAfFtBXCxYZu5bjkQfc6MNmACkmzAVM2QgQJLc3n9OV+t0WWIqFfXzU6
         vBoZ6QjIO3MAaiHILpYGyaF1jPy71xvn113aKZjpLRTWL7xJnRUXjNp9Dnl7OaKiw7Wl
         HliPdLpnXAE6/HZSHFW3SgzlSG8ZO2IdludVjP44+deXYrIN7GDGm62qKfTx7sVZX0h8
         AG9Q==
X-Gm-Message-State: AOJu0YxzzcRdQYL3F3Dxpt3HAw2kNrzsjSIFhuXmuvs8yPg+zIa8+wT0
	gBHaYluy+4XlE/h9Gtdx0HC6tXHTfsx5W4gJJGGcJn7mcvs=
X-Google-Smtp-Source: AGHT+IH3pKImeSUffYbmzhfSkreiKhbM5u7Bd18Nnk/gcYSWcleKVQblxOOgEe+BnYJzUac64Yz+E3ex5G/n2pTjsKc=
X-Received: by 2002:a17:906:da8d:b0:a28:fab0:a88c with SMTP id
 xh13-20020a170906da8d00b00a28fab0a88cmr3348223ejb.78.1705348555912; Mon, 15
 Jan 2024 11:55:55 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 15 Jan 2024 12:55:45 -0700
Message-ID: <CAK5yBb9SUO6eaR+Thk5wTfzmNHuh4q-VS-5kPGZud+EYrWHoJA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW02!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e4bade060f0166c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 19:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62164

--000000000000e4bade060f0166c9
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
michael.opdenacker@bootlin.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e4bade060f0166c9
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
"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:michael.opdenacker@bootlin.com">michael.opdenacker@boot=
lin.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">=
Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);fon=
t-weight:bold;text-align:right">2</td></tr></tbody></table><p class=3D"MsoN=
ormal" style=3D"background-image:initial;background-position:initial;backgr=
ound-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-s=
erif">Thanks,<span></span></span></p>

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

--000000000000e4bade060f0166c9--

