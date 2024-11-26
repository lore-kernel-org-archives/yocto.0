Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4299DD59D8A
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 01:28:18 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.35643.1732584492708278854
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 17:28:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nlhW7nL7;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2ea379ef02fso4018153a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 17:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732584492; x=1733189292; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sVeiJTzrUY7IGogItaBDqv7WFopbrFNcLfh3qiGE25c=;
        b=nlhW7nL7p76fQ1EdZWS3ypdF3ee0nDCFq3r6TwmK74Q84oOMP7eEU5h6pMtpK9xR3W
         rH3Qyl5TB2zA4wFQnamr+EqN983F8bBepSA1mjFPu4uVxwnWrRAg21gRrUB0l860VenV
         KaMGSe/Hzd9r3eMJlK8JHAb8AZCiMfB/PpX6GJpTyTnzxy71OEC7AulCSaxtkZnakOqy
         /kXv/CKKIQ570EjuSRzFuI6cpthSioGS6Iin8/9SWBOt2bttv1v7EadoOrm0CBZH6hi5
         Vx+YFPMnKfwv7B7MEe6VSO7xhJTtHLHLIByqIu7KN9L6wJ4HtaKodjhdYp1ojTsOqsBc
         G7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732584492; x=1733189292;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sVeiJTzrUY7IGogItaBDqv7WFopbrFNcLfh3qiGE25c=;
        b=GJ1C4cj4Rj+CEz2ptGU+HreJA/9vwzbXxBXsKs0fCtUvwJunGTralBUcRv/CIgjyIk
         A0A7yblEfQ+40sBISKSK3VgLnmeB36GODjvo/zNDBDJC/9zgZZ2t4GvtyjSnoW4P7qK7
         ckA824YopBDXxRuPAv76Rq1Xc1lvftZkCM+6ccqjtYuRo/CYOilU7uSaSeczj3Jch+Xm
         n7QuZoLrIylv8mUf4YQfw6QDl1cWg5GPqr1/MAjV2WsbSy6CENWfVaX1qNEhF3wB2XUa
         nPXa4cVUAJl6x39XVOvy/HIJGfXmFNiQtBLLPhjrIrZe313loRLh4CCxukUVCWlDpYkf
         zYRw==
X-Gm-Message-State: AOJu0YyWnz9/7xELRHWsYmk1KceK47Nq7+hOFqTAIzvdBMONxTdAEWfv
	OynNxHlyF4rTW0xvvdFiHaCwMTzfcHDs4uevQMcUbLqZWujLtZuZcnU/3vSYZoBCnHv5hhrSALB
	oNw0lY+RTQteqrsxlZDuYLO00S7/8o/ExQ3M=
X-Gm-Gg: ASbGncuRHX6MgvkAyGu4Rq4qG8gecbptKNoS6I87axyc0KVlSPndb0Q6vSbXK2b5EYN
	a4I7ujY+Yzm62nZ/T62GpD+sa2XWHRZkx2u4q8aAyAdXmc6+Z0qFBVdmLBaBpREbs
X-Google-Smtp-Source: AGHT+IGNyoSeWOPpe35HCdtGbRXSyLoIyGiDOKu4zX/KO8E7pQ7pv+zRJE4OLSuQkzCKXjoZ/q9GJXP7rxKghPigId8=
X-Received: by 2002:a17:90b:4b4f:b0:2ea:83a0:4797 with SMTP id
 98e67ed59e1d1-2eb0e2336e3mr19206595a91.11.1732584491739; Mon, 25 Nov 2024
 17:28:11 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 25 Nov 2024 18:28:00 -0700
Message-ID: <CAK5yBb9g4cjJhrxtaWT0i5jR+ymzpJJh1DF2k0cFOH5Xwy=Ksw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW47!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002c71160627c6c3ff"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 01:28:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64344

--0000000000002c71160627c6c3ff
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 2
yoann.congal@smile.fr 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000002c71160627c6c3ff
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand T=
otal</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weigh=
t:bold;text-align:right">3</td></tr></tbody></table><p class=3D"MsoNormal" =
style=3D"background-image:initial;background-position:initial;background-re=
peat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">T=
hanks,<span></span></span></p>

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

--0000000000002c71160627c6c3ff--

