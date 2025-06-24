Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE39C7EE2A
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 07:31:06 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.3151.1750750259267036018
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 00:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=le1Ph+sd;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b3182c6d03bso157736a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 00:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750750258; x=1751355058; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Nb4TRQsR4H3tv3jPKZ59r8obBZQJyzL/GbmDm8Dd4FA=;
        b=le1Ph+sdY527LKbIwJlxTgsGJ2CLSUj/AvSG/oKbZnLXrJIRWbGHuSC/eYRkQ/s0oO
         ncBeyaxQE25v6lMTOK+18E6pBvONv/9yxUDdyczKeYox4+Ks7fIYRHjWeFgvzJGaSCtu
         zKVKZQbJAPnjj69d0MhdkTE2b3CsC4shbX9lJeyhM+SVQP7aEjkTG+7xmPibuoUjsl8W
         cyrDxox73khkp9jR6ghgNF3te/tlJBg9mUy4cE8F81sGLbB/mPfwCbexl988zJHY/zFS
         XNueACxsZB6qaVq05lQ3E1gojl5XYtw1U/hQtAvvvIaoQA57vsvMdRNTyv02aQkfNX0c
         7pfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750258; x=1751355058;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nb4TRQsR4H3tv3jPKZ59r8obBZQJyzL/GbmDm8Dd4FA=;
        b=Yt+4N6VOClfQq9SCO3G17+e554Eg7mOj6jnZMbM/P06QNWS1Pr9LImIydn14SH0+7+
         VEZwqxoIyugxq0N2uQLpgkvQqjIWFC/emNk+S/zWz09rx6En7S1pUaLSVDk2kM8g/VSl
         owq/eJsPzxPFQpye/KUMByAGRrKbaHrmtDOcV8TLYXdPLJgbiEErHzpla8ZpayEz/Qap
         ESXO2uas8K6PgwpNyz+ecEN/KuJ52hxM52CifwMNigLSEzfvIKG4v642Zc4B9ugS3GZH
         gTeQAE3TkrWRgeXkihmH5KG1W9rbL4Mj/x4ZGyEEYTfoW0U6Yj6zHeMA+DBoixs/S4IH
         A6KA==
X-Gm-Message-State: AOJu0YxxwljWaoHhScYmu0IrOsRB+kBEQ3LFINg7JSk/J/z67PlY6JBW
	d/BBQo8iF1N7FxS0vVAeFvq0cD7PMbhpySl79i4IxHO0D1e/6K9KMtQiWtkGdGcjBG4SAKYqibQ
	IuSFLEW26RHjatS0/Rp/uuWn7jKD8fUARFy9K
X-Gm-Gg: ASbGnctsMRgVWZ91EoLk/HJxsEFrOkTCy7dbe2c+9mi7tnCtR2W2AzONT1SvpIz48to
	wzF2lnGuJz+QDvkLR2B3rrETygc7xZuWFQqB/SfDXqikbH/QYApSUs/CSV4lU1z3Tjc6lDitoUj
	VJKtB3/29c+fqJG6SM++mQXTMTr0FwHkMP4ftE4rn5njhhh6jcmHHOrXi2d9Ka5oKrUXtlLhhUZ
	3oQ/q9vX5Ij5Kbg
X-Google-Smtp-Source: AGHT+IEG35rBUbXmmGAxWynlsMeaqd1xsOZJ2zX9GMYG4E6AVxNZGbNbUQ3xSsN9gZFzaTUd6rmnzqSBqpjKUNS/Ggo=
X-Received: by 2002:a17:90a:fc4c:b0:312:1ae9:152b with SMTP id
 98e67ed59e1d1-3159d8cf9demr20200182a91.23.1750750258398; Tue, 24 Jun 2025
 00:30:58 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 24 Jun 2025 00:30:47 -0700
X-Gm-Features: Ac12FXzSBmc8lg9YpKfhJTTs2k5l-kPwjoMJrtJmQBEHTw4gnFCqUcS_W5zrBrA
Message-ID: <CAK5yBb_Hk-do_PV47NM6RMCCpwm858E2vCidq+vM5gFt7y2itA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW25
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003e0f8206384c4f5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65539

--0000000000003e0f8206384c4f5b
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW25 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15909 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15909>
crate://crates.io is not a valid download_location for SPDX 2.2
randy.macleod@windriver.com balsup@cisco.com 0.0.0 5.3 M2
15911 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15911> buildbot
console view: incorrect bullet titles randy.macleod@windriver.com
mathieu.dubois-briand@bootlin.com 0.0.0 5.3 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003e0f8206384c4f5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW25 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15909" target=3D"_b=
lank">15909</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">crate://<a href=3D"http://crates=
.io">crates.io</a> is not a valid download_location for SPDX 2.2</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macle=
od@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:balsup@ci=
sco.com">balsup@cisco.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom">5.3 M2</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:r=
ight"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D15911" target=3D"_blank">15911</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">buildbot console view: incorrect bullet titles</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windr=
iver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mathieu.dubois-br=
iand@bootlin.com">mathieu.dubois-briand@bootlin.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">5.3 M3</td></tr></tbody></table><p=
 class=3D"MsoNormal" style=3D"background-image:initial;background-position:=
initial;background-repeat:initial"><span style=3D"font-size:12pt;font-famil=
y:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000003e0f8206384c4f5b--

