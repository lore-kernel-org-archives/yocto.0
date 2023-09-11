Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2B1CA0EC5
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 21:46:59 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.10906.1694468818503779979
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 14:46:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=gXyV601X;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so654814766b.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 14:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694468817; x=1695073617; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5AnkeCIYkVPW1COdim3fK4Rn3qI1+DXsYIENXXxKLN4=;
        b=gXyV601X7DoCACWjCMxlcBU1qwqTtXGlOkjAEq5VjKrPF7WFk6rt51wlMmUq/v76Nf
         f3qNqdmsCLGRqzBwVs/QwVEEB8QkB5RkfUorW9BUPlJTIeS0P+31oXMgXsUlx76exdHu
         7TQ9nVAZY1eWNFW0F0Bc0kMmpI4avZAe4AIwyl7JES7+c2RGp7GOjzyEooSsBwovvgGd
         pslqPxY/gAGiPOpGhkwH2gBN7iEueswlPGOIr9JsNh4808BbHZLAjKDkoCYHp1gDpXBV
         Y7E7tuBLbXpgHeYmIZOFRVcGvVS87Dlkvg2jUj6Yz2IEQvTKTDN/EZe0M9gyFvBANnsR
         f37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694468817; x=1695073617;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5AnkeCIYkVPW1COdim3fK4Rn3qI1+DXsYIENXXxKLN4=;
        b=fgonli8Vg6nyr4dvlD1v8LSjfR2gGSdRDf5dGf1E1B14aRRzW6Ps6rFlcLGH9cVeCP
         Z/WEzuLxZ/Uk7xQhLh9zTiq9s8JD43lqyrZCY1IItc7K0L4M5MrftET1nMaur94XRCDg
         mVx1BEDOTkhwCZkGRTU5GxYLp+ltPNuqMFrHfW1RDaEpRhX90DjlLpe4BqwOd4uiahj2
         wPG/PA+vmN2N99yLbsUzEhPOv5xytDUVIfduS0PRZwuIup3B1O3TKDKANY7JCQbQRzy+
         G5gfvHxVM9sqZGBEfH5ou4vDlwvqPFpyuldVl48wal1yrl5v6mkHliMqRJF6nAYecChA
         3ybw==
X-Gm-Message-State: AOJu0YwizyeY7ANLpPJrTXrnuJbFd+oMbHn+w41Lb0w+ZKs9rew7T0zO
	wbDPeMHycoz2zS3zewFz5JUKtpfrLq0DLxjs/zKXUiwyc10=
X-Google-Smtp-Source: AGHT+IGyUOfTjShh1RpJs1cQqFGeoyPA314ojL84gn1RAAhLYGNh1fbcbRQ1COKFfLVuiE/HuJtLO9XQn0jKKm3ng+E=
X-Received: by 2002:a17:906:8a75:b0:9a1:da9a:f1c2 with SMTP id
 hy21-20020a1709068a7500b009a1da9af1c2mr8214284ejc.11.1694468816486; Mon, 11
 Sep 2023 14:46:56 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 11 Sep 2023 14:46:45 -0700
Message-ID: <CAK5yBb8viO9j4PVQ9L-cif7-TsvEJDV-EE1idYCtMZwHjoMxTA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW36!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e3c42006051c4337"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 21:46:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60977

--000000000000e3c42006051c4337
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e3c42006051c4337
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
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold;text-align:right">3</td></tr></tbody>=
</table><p class=3D"MsoNormal" style=3D"background-image:initial;background=
-position:initial;background-repeat:initial"><span style=3D"font-size:12pt;=
font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000e3c42006051c4337--

