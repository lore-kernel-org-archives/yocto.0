Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBDA8D60068
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 21:17:10 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.4667.1731964623641584963
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Nov 2024 13:17:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a9muCVpt;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ea2dd09971so130221a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 13:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731964622; x=1732569422; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xhB4UeMNvTO/Oc49Mue1vG0ZZEaVkuyhABbns188h/s=;
        b=a9muCVptVGGyLB4qqTpc9nLRqJ5Wf6S0AN4N3KsRsuXiRtj2A1tJ+ryQWfqPdHcXLZ
         HnC/iYaZNyruyRTujtcytnZYchdKYlygbxOuSFeonbbAmfig0AY/e2aXQiCZwiM9qGGn
         +3GfBpZ3U/GXdXqIGmLENUT69NghYPYVW4OkVozBxP+jCfKZpES93eX/BZS1Qme0fUJo
         KroqvsfdDSbJzr98eKJSbpKPsAb5unWtTzfXjuozIogJLCZYw9e9xQd+5y7/nYHztmyf
         OvAFtYyLkDXTqs5l4f8XUHNMgYKagIuqXgOCgHF5X9NDJDd43xL6E5IOmxilqO0XAQzf
         KBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731964622; x=1732569422;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xhB4UeMNvTO/Oc49Mue1vG0ZZEaVkuyhABbns188h/s=;
        b=USoJOyxss2xg5SqTr/qZflLuDZlwV19K/Bo8lgyTAVxE99k/ImKuJMiCjAkBP2Ig9P
         b6sTgjqSJiht5CNZUQkNM+KX8F5aizgdWYD/ZAAseDymTfze0JFw0clPoFTQ4EFMF4x2
         44S/NV0aLQJ6Z/tgvduTRojI/3lYQn7ebjB6mpAdO/v2vZDGyXgqEdkJgozlbcsiq1US
         gasRJPPg/8OSWH6miSvP6zzuyxqaB37a00yeYiIK4Bul4BHUDN+IYqQorwQGGJPpWaTR
         61g6A3ZTZEHuLwy3+spY/wRUY/beMCS8j8WJ8h4P3TfM+ZOtnFCOgYx3XF0Hn4qd84eu
         Sf7g==
X-Gm-Message-State: AOJu0YwvXiMTbyrJJOEXlyaeizsB83WbsBpGlbjrydNzBl0llQoK6wvQ
	QVHz5K3joHS2G3wHghwBC/ZGlMb6X8nXQ+c85x10W2+G8VPGk0di0sjyT2BaNcc6HavysRE7zzj
	2VhigDqwZeIf7VUTta0kgNmJDdg0+Q+ANMvs=
X-Google-Smtp-Source: AGHT+IHxdJglmNrbRAFJVFyRKXCK/n2PCGckZ03DTh4l9vnHky3AXbIF7JIiQUFT1Hp1yLTus33eN3myATubg3ve/2c=
X-Received: by 2002:a17:90a:d2c3:b0:2ea:4e9e:df8c with SMTP id
 98e67ed59e1d1-2ea4e9ee439mr8307944a91.21.1731964622483; Mon, 18 Nov 2024
 13:17:02 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 18 Nov 2024 14:16:51 -0700
Message-ID: <CAK5yBb_Orx+4RskkcRkD9Cm_KdS2mHxCz1G0FCma_Q5vy1yAEA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW46!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000016381206273670c1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 21:17:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64292

--00000000000016381206273670c1
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 7
ross.burton@arm.com 2
richard.purdie@linuxfoundation.org 2
steve@sakoman.com 1
Grand Total 12

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000016381206273670c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:steve@sakoman.com">steve@sakoman.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(=
219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgr=
ound-color:rgb(219,229,241);font-weight:bold;text-align:right">12</td></tr>=
</tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;ba=
ckground-position:initial;background-repeat:initial"><span style=3D"font-si=
ze:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--00000000000016381206273670c1--

