Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B38C282C6
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 01:08:00 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.11744.1741050475241746525
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Mar 2025 17:07:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lxwCkYy3;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2feae68f835so7125766a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 17:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741050474; x=1741655274; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8V5hCVBbgLsd1slEL6Qp3evJwMT2aTT5MbWA3t9PZTc=;
        b=lxwCkYy3siR++3/23JtblOkWyRdOyPlT8yjlK2fZXL2+EIQVYMx/70jl6y6I/khri6
         JrdK3i4ODA4ic8iOIqTN+UX6+Fn0ItAPQUZ7gmvCM1MiM7S+r5Uy0UsKBEKO2iy6Ujjg
         uLcpUXZM+JHCQmqQZuu0FGRvsWidefZ178bclbmwKVm/el1psq3NCurGoEaxAXGsFwiK
         skrl+YGq82wHVIbDEXHE097hpBt7nn1J1wPWJMaDOCTuubTcUkD+7Y+G1ioKKikyIkVS
         kG4FXKhkk9jEdI+NIlWaA9VSYGGtNeJmn2n3VqB7zTrEULluxbKBPUdBWzqxyhd5e8rl
         eYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741050474; x=1741655274;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8V5hCVBbgLsd1slEL6Qp3evJwMT2aTT5MbWA3t9PZTc=;
        b=tbbWF4GX66PYlO1sy1SbEgeg8RF/j5nAESKc4PfYtkZPxQMctQ1M0mYXqh+V5Ie0Yz
         EPzJAW7Pb19ImI152DBfX055GBXN0V6QUNl3hQk5NOBvXJpEQK50XTVPORdgHPmR98lJ
         NyIqZn5lBJSYGHxxpuSdscRnPqqjrjgc6arFRblpvl9XCbDbcZke8wtwI/z6if9tJQbg
         tYb9O5+BGv5z8CSveK9FvlchUzNd4h99shCkYpCNkcVR64OUo2Jj8KbaSNk0E0K0rBOo
         XxMWfWgW3oa/Acz/2XZcCBs7hEC3Zfl0shajNzcoul0+sThnJ5TVTkGtBz+8dvrg8lA7
         pKMw==
X-Gm-Message-State: AOJu0YwwgrIyxxg/4Scbd16cITtVH+QnPdRhS6UtUU0A7uxA/EeHWAAw
	yICCnkliBdVBGGhtzjXzIdtEvywnFeStJ0GSn05KyjmUv4tdmT4auWqEB8FbP0ZiJ2+98K09t8N
	zd/0xC0ZeqrX3oPiScMOJWgUlTZTTXxjdZiA=
X-Gm-Gg: ASbGncvJY3apzFpJZ7pHurooYhALRXx4lHtU6WxjzXfhT2abTCKNG0aMRa0mjfWlMbZ
	GayEG9fhmgcPRsfIdyES3LPRN77BNAMJ+tAdwcGpNj2Xf8ucOV0TZUBIicUpgJhYvJM6xEQnV3j
	6XiOiUsj+kF/pJ3A7Tp84eVeNOTK0WQyeuwrAzcCeIZF70QHHH16FNSom+JqpK
X-Google-Smtp-Source: AGHT+IGl4BLW5d9yYvdlcPcSIcd0IrelHXje5z5rHRoFW1c+lbjEPnyu7jEm+nGOhDMskmOLvFHw6+71gmYj2Y1ni/o=
X-Received: by 2002:a17:90b:1cc6:b0:2ee:90a1:5d42 with SMTP id
 98e67ed59e1d1-2febaa9215emr29468238a91.0.1741050474332; Mon, 03 Mar 2025
 17:07:54 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 3 Mar 2025 18:07:43 -0700
X-Gm-Features: AQ5f1JrjRVho7B6l_XUcS6E2SRQh0ru_Lcsj7UO-e8mRThO_BetCT4-R8HaLJB8
Message-ID: <CAK5yBb8GFqt9Geij-39aJr_bMx2ynLQ=rnB8UK71rD9suYpzWA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW09!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000f0aaa062f79e7ce"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Mar 2025 01:08:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64918

--0000000000000f0aaa062f79e7ce
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
mhalstead@linuxfoundation.org 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000f0aaa062f79e7ce
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
lign:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold;text-align:right">1</td></tr></tbody></table><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--0000000000000f0aaa062f79e7ce--

