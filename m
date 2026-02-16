Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BB4CE83846
	for <webhook@archiver.kernel.org>; Mon, 16 Feb 2026 23:41:02 +0000 (UTC)
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1366.1771285259962987325
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Feb 2026 15:41:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=O4DfvZfb;
 spf=pass (domain: gmail.com, ip: 74.125.82.52, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-1271257ae53so3770134c88.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Feb 2026 15:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771285259; cv=none;
        d=google.com; s=arc-20240605;
        b=bLQcoKKDIeSv6lVON2yUVeqM67buGi1+ahWyN0Y8ic6SqcirlCAuaCmJg7RE4pYYfN
         WWdHFzwru0bS+xKbFXvI5+halUJkeGegrwCZNXNLDRh2Eo43KbmRuwAqjNrTjjXFG4n/
         iTHxkFqW7IvCEggNc/pG766ff+JzSCNPNyGYii3Yaxqs3p309e6mA4zb5zuIRXW5GqYw
         HWf2S9AR9DE0WStAdmBjsorMtFi8g7zVI5oqV9dcsM2El2GsOPjDBehCZ4h4Hc+uU3uY
         8v2qJaDxhtpJ8vkoVQsL7/xUO6EufJTSCSKX7WcgNlOOfx0xtQaJ7geQfa11GkPXwhwZ
         Gxkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=PHHlXxD02X2ocOgCyJLs/OmMaRwrUU+GJNhRghgw7To=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=UREZbdwnSNacKv/BjP52zq1Ikg2SmYyYMO8vi1bAkZg5JAdVd230tTA4FhB5WtfttX
         VUPjR3e7IOCBUf97i9QHchS+86rmgKIechYo54UiNnLyynCShJ7/yxkZXnf4FHdYs1b8
         hp19THXwaqR9AQSgJQ629Mjuhq7bMkWEeA/lnLmIe71ysdE/86lnMNhL2iCCJi8byjDl
         Ir7MAdzGkRm3s6sCpt7RYrDtAdoNpcaA58sat07oEBsPDlV6qC9BiZJiHvJeB94AXmP5
         P1cFcsq+Xttr53dXmSbK6QrnUnRKTHfAYyNVTRd4RefIcvwtw8wqzVhUIm8Wd7XN0o2u
         uY3g==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771285259; x=1771890059; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PHHlXxD02X2ocOgCyJLs/OmMaRwrUU+GJNhRghgw7To=;
        b=O4DfvZfb83aUkAAnmMg4QBvPTouwTWOB3f5tonMXqawofuS7tnyprjSSgsPxWlJA/J
         J4dmDXGUsKpv406vJfNC3j+Spd26ZW6rtYI7wUl6Gl1MTj/NmSm8dMQVuuC9rspVu+s7
         QOh5d7N9KQlksDVixroYM0UjTeL9c8kniUA51+3T9jT6QT+V9CROpBxjbGk+ySvTKWYH
         OWFxWt6jJ4Ix/HjaPaDo5y2UUgg+4zU8dXTTRtHyDhf1CjB91FBcO3hbX7egOgRkLLOM
         dnQRWVTZX3r9EMBGXhKfR+pFh6A+9ARykDNWZWfnaSFIIj85/WHy79yGRfPr2L2nt5Ln
         ycog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771285259; x=1771890059;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PHHlXxD02X2ocOgCyJLs/OmMaRwrUU+GJNhRghgw7To=;
        b=ae7WLoY6qF8YAVXHFBSciSozCIeGRe+3bq9lWUMo1aVpUKYXoDu9iXe4tb8rxYEOYC
         eeuOb2yHta++QdE4bO/dnSDS+dMiqBKtZCwyx9sONRjzGDUQhLHC6Mu6IyVC9ENXoqJH
         JDzgt1t9MpfJMGYSvNEcA/W6U4IIr5nPFkX92XpO4+Q3Bmg6L+GAYJ6j1ZTIPLsiLCbd
         eW8WYJXd8Kqb35YLk0KlFSiwXxs6Ks2w259OTps6pUTAHkfLN1AI/s34gxYl+DVdJ7qE
         Df1ghDks1ascCl+qHWAx9/OI838LQXDmsy61YkCe973WTjLPcPEKNVnT4hLrMwjWk0wo
         wajA==
X-Gm-Message-State: AOJu0YxUCSUTcTXt+kpQGGjbWSmcr6Pj0gn497Fxhpcugg2SmPYnmgqX
	WYozA3ObJkj9BAWnRViaYc7B3dsH522OZryHqoLQ9+fASVrSIicbBYYDJGIkdKtf2/ZWmYfNJrH
	ZIUgxHXovYzhv1hPx53mUbo7qETCUwoxnEsV9
X-Gm-Gg: AZuq6aLvMnL65duzMcsypcc1/qTo8SchHTjN8/k2QvJJssAjeGqjY9hdj2Q+jpof45i
	PPsMzvD5tjDgX8zGT7TZAtQ7qat5KuJ7gdn8FZcFCzKeuwA/JqkXchYGZO7x+FzoXdsa6hm/MKw
	zrn2DUZhwQ3cN8pfbDerjV+gUG3KqW+gm7QO594IKkfTXpn8ZK/jco6fLd5pJmpgXNVzPR1cwIt
	YpcvCJt9kxLde7ZWOaJ+0rAyEAsntLlpyuU4nrExb87Dl7C416mN3eX3vRgLHychfrOcTC4VqHp
	WIIMiUCtlvGBROHyhlKcLSOIOsgVGh8BNH1SJ0L6tR2HHp2dfPuM9V0FeJvo0rzxmiFmPA==
X-Received: by 2002:a05:7022:227:b0:127:387f:bae5 with SMTP id
 a92af1059eb24-1273ae68d26mr4726809c88.45.1771285259108; Mon, 16 Feb 2026
 15:40:59 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Feb 2026 20:40:47 -0300
X-Gm-Features: AaiRm50XjN32cnNWeQJBu6X-VN-Dtj1FIRlIWsfItSyNqwH1x0gs7NY80Cda7XE
Message-ID: <CAK5yBb_fTEZT1NY79LLxS51hY_CWuscOQF8PK2rt6EcMi219bg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW07!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aa46f7064af97cc3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Feb 2026 23:41:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66247

--000000000000aa46f7064af97cc3
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 6
paul@pbarker.dev 3
yoann.congal@smile.fr 1
richard.purdie@linuxfoundation.org 1
Grand Total 11

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000aa46f7064af97cc3
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbark=
er.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.conga=
l@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation=
.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rg=
b(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold;text-align:right">11</td></t=
r></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;=
background-position:initial;background-repeat:initial"><span style=3D"font-=
size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000aa46f7064af97cc3--

