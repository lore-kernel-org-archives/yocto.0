Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21EEEC3271E
	for <webhook@archiver.kernel.org>; Tue,  9 Jul 2024 03:05:47 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.4534.1720494342050585776
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 20:05:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GBliLEwE;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so502256866b.2
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 20:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720494340; x=1721099140; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rDzGs8QjhA4ws2preYaHNTb8cymbaGiA5GokXYk7d8g=;
        b=GBliLEwE4nW6kTjoF40gfq7LwZQN3e0lYTw7LbIBfoBTmceMqp6PACmcJHZ+cgoVBg
         pmDf3N5KH32lsgn4dTSgk8hHrY0EMBbHlcfr1QCti98pwTWvWWqWNkbnpvuDCYZkEepu
         7dl1nGe2b8edc9lS/0tTunHhPG7DLT8y30GKSjkFNNECGT1r8B4qlsmmjqGXRK1PXSZC
         V+rQxrvby4IG0TCM4X03URO77ShGzten9tKIJisnvih37/1G2xkfZiNJk6jFB0C6mhFU
         Z8yytMPdBorBwgnoNysSfboiQZS3akFfQdIiCTyP5w280/nnyiNOGfn5CGf8JngzoB66
         aIxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720494340; x=1721099140;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rDzGs8QjhA4ws2preYaHNTb8cymbaGiA5GokXYk7d8g=;
        b=Xcfkbc8MweIksy/ztuELPZkWliaSThlwmfpH71WncqryPy7VPh5/OzPGAnorgn6TLp
         +QoaNzp1qiqFDGovXbzlOMbfbGNqqdz/nfu0dvQezccQb+D22YGe5WHxXq/VkBtJdpGm
         HMLoSnbrbVohzXSPCMu9eQEaWPu7RHLJph3yjcjHA+Pew1s4sFayGPHD9AqYf9xkDbOP
         2sEbollPG/rB8UscLDQtXstv5b4szeY8w0Yvi3q0ZfChruxavCk0bxjs6JmHuhT2ZTj6
         IUN/onCC6MYFFVj5wdLPTasuu01BwV79uKqhJNIxsuOWCa60mwhL82Brx+763oh71xL+
         /eRg==
X-Gm-Message-State: AOJu0YwEbl0WT0tjXcccDmekxogTNlr9160OQJ3xTlt0dMaZxHsp8g0k
	a4Mk8erDP7sdT+b971u8sqMGD/U6yUPhhwywzd2E4P1jn/Mb0j0Mgz+aPTv+lns0uTlBWLazLTj
	/IXJkdZtO58R6Q69kxvKTLSR1tj2XdHbu
X-Google-Smtp-Source: AGHT+IGg8KZEcsWN8wGLCADkAUcto4v2zRqCvmNqPeR2hkMwyNzEPtqf4xT2z5dMcvOaKurjc6AK6wdlLqkadqPat5Q=
X-Received: by 2002:a17:906:f75b:b0:a77:cb9c:e808 with SMTP id
 a640c23a62f3a-a780b89ab33mr63942466b.69.1720494339955; Mon, 08 Jul 2024
 20:05:39 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 8 Jul 2024 20:05:29 -0700
Message-ID: <CAK5yBb98y9cvL_Z6d6uvCwaXNpKU1z9qOwb7O16tJP7fZGwvSQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW27!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f8a327061cc7cd23"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jul 2024 03:05:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63446

--000000000000f8a327061cc7cd23
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 2
randy.macleod@windriver.com 1
quaresma.jose@gmail.com 1
mhalstead@linuxfoundation.org 1
alexandre.belloni@bootlin.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f8a327061cc7cd23
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
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:quaresma.=
jose@gmail.com">quaresma.jose@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:m=
halstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:alexandre.belloni@bootlin.com">alexandre.belloni@bootlin=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">G=
rand Total</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold;text-align:right">6</td></tr></tbody></table><p class=3D"MsoNo=
rmal" style=3D"background-image:initial;background-position:initial;backgro=
und-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-se=
rif">Thanks,<span></span></span></p>

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

--000000000000f8a327061cc7cd23--

