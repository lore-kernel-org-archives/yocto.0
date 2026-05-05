Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B586FF885A
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 05:34:58 +0000 (UTC)
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32872.1777959291978627116
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 22:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=rjKuog/T;
 spf=pass (domain: gmail.com, ip: 74.125.82.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2f3c623322bso1414319eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 22:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777959291; cv=none;
        d=google.com; s=arc-20240605;
        b=J9/WBEV/gSYZu1NnmSc4RJ1+5LnE08lhyc1lc498Gjb2H0bAKxNUQN2Xc8AUaZbs2X
         Ra7a4QOfQY4DHHv275MhTub53OHj5Z1hgKTkTovOksSm46+XIjk35gG//Aw9tTsC9G/F
         ZkzSNT0KVPjXE3vUsU+UA/K3A0m3bUpe7lur9JQ+8XONieNjpMLT+yoUU89Y0/vTMfRZ
         RmkB8mSj7Ws6XGzyHHHOBazRCoHgyIDTzbq9up3JjFIdAIT0aj+dhRDQbsl/H/AyvuUu
         orBMP+h68FQ9G/L1LGZF6DxtfPwbRlCe0d4emgjqhdbfBz9ajtHENnOEF7poAjbUm3TQ
         AZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kg/AeMQaZkPrUk2ZLS/Hjn4awMYKdxsLEW45+wz0R3Y=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=Bkhzj+VHpWurCOAaVD+PlRNPTpyclID3YSRY69ggnwUCcqc2KReapD/u6ECPaTG6sl
         0+xOUWnsqESJMjY/LNmUMOaJna+/aEwccocQbztL3np52AS+msB+UFZTxDO6qqqHujMH
         Qjfb105Vo1iwHiT0veTqFqv84sIR4isjJms7ZiKQofp3660UBK8JmvBdHdwVJod/xwYK
         TantIAey2jATInQo6bVuBDSlSxetaNXSrXYKEUhy2Wn+E9HStbUVRUKAZyz5O/JX2bss
         Z2duroVHQ1/FdYwCnDxlpk/YwAucZvZZ0/DjqQ/0phWdTfZjjh/ukUqISErZh/suBxxJ
         Xc4g==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777959291; x=1778564091; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kg/AeMQaZkPrUk2ZLS/Hjn4awMYKdxsLEW45+wz0R3Y=;
        b=rjKuog/TBT+vpOG1bLfGC4YEmdlZUgGXlAy85C1KKfiY09EGXmjdQyzZl0aNBaLLy0
         H70ZCsPtvxfTnhVbgxg5n4qfRyNSN7mi84o7Yvbo9tG7TeX5BDTmK0RvOPR4JF4oFDVp
         XZZUihyCflopQCpJeduxGBTJkzSd0c1z2eofsbpA0bk/sOl4uDE2MFQ3J5uF8WnQWglj
         uofOySQKmdhhBwm9OwQBJJsVD+bqOP16TGdHmRBKB3uMOq9NJ98n/c5DScniaH/5v9ar
         ZDKjkTdrseElWkkWpjIzyaMlMDT3hala7UV32LIywbiE34IUG/3syxGN9jpPE8RUKtpQ
         6J9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777959291; x=1778564091;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kg/AeMQaZkPrUk2ZLS/Hjn4awMYKdxsLEW45+wz0R3Y=;
        b=UjuNcNFXK9R4y3nb5auwPRR7ovhJWFtlftacGVqUhtWDQ9xYRm/+Rh+4RkrlY9WpXq
         MxgC7flFsuED4Kx3VrS4ao/pdT+vW3ensJ9DDv6MUiLzPX7XikaseE8uBpid2Xs4xiVq
         +FVj69Y3mmgxLTfCywomW+5PFuQnZ/A5uHfzIXoIo41PXc2i+1zXP1foPtKtGF+6bFHA
         /M9mkHPgsFuUGuRQajY8//tmLdVn5DrdaNp8zGAOY1TQTWetwd+BEWWMoMTeC52X37/q
         sWNjGkZlBKJVKxnZBx5b+dPE8jYywRZqQ8hot2PCbhBwbOzvT6rI4xN9pu754Ukt7hOB
         8VXw==
X-Gm-Message-State: AOJu0Yyf8hki+9g36JQ/a+l2gYSrz4y/7DCmayLDvpIpxofiq1fbkBMW
	CZVXVNnyu4VM1NY06+GadUGDvMVD0EhewoGwE08wNT3157qbB/Yj4/e+Qx+9n1xKOOxD0s/or/F
	+xvAwoYA1mFuQTWFHuKbtyOQJtD3mRlCZI6SU
X-Gm-Gg: AeBDies3O/JRnkJ+AqpuiLvrBNEawkYHvZB+msjFf9xrTYyk9kgjYuctVMYGq4MITHm
	Z+KjD9AsnQqVP1p82Qm7umHc0uAhWdi7a2zRl8XA0TepLlT8gmx9ZvM3pR5i5OpjhBNtnHGphyf
	pfyhSWa0g+pk7Lj8v1DH8Q21wfjuiVCSDNKpmzXLdY0W+Q6jAgEH9R7SIyM5u/meTwHOcxIPifv
	VwBabhQV/r4jL4u4tA75Fi3obVtuLvB+nYGoVJRUptZN0mSXbVEi1Zep+4ObXhe7zIvYVyuD7Zo
	o93A0JSORoA8ekqphGe1D6LRJfM4iRo3ShRZZIR0kt6yryVroASQr2hclDAJJGIu77eRDxuszKQ
	ZOdcqSrg7aB+KBu/AzwiuQTsf8qwzij/8ZFXqnNVzCfmDcfPJTf2G7c2gZxln2QOkoXL0sYzq7t
	dT2KAxZLEMSupZj+cPPg==
X-Received: by 2002:a05:7300:7fa2:b0:2ed:e12:3773 with SMTP id
 5a478bee46e88-2efba7a97b7mr5530649eec.35.1777959291175; Mon, 04 May 2026
 22:34:51 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 May 2026 23:34:38 -0600
X-Gm-Features: AVHnY4Iu7Rw-6sf19CDDhvfnyi1XKaJGmPn91tEcAZg5uJLe7Qz5cYRaqwinMiY
Message-ID: <CAK5yBb9KknnTgohYTEKTUQQXn=pGNxMtWze3taFba23G7Ps=dA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW18!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f9c6e106510b67f3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 05:34:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66480

--000000000000f9c6e106510b67f3
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 18
Grand Total 18

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f9c6e106510b67f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border-width:medium;border-style:none;border-color:currentcol=
or"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody><tr st=
yle=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Who</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.=
org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">18</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">G=
rand Total</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold;text-align:right">18</td></tr></tbody></table><p class=3D"MsoN=
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

--000000000000f9c6e106510b67f3--

