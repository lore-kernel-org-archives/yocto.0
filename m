Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D0F2ECE59B
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 00:32:28 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.11519.1725928346792185386
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Sep 2024 17:32:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OeXjxj6y;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-718816be6cbso3357591b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Sep 2024 17:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725928346; x=1726533146; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ouDmtSg6ZMw3I3STEErhG1o5LLCdixV4ZgG+BkcbaNo=;
        b=OeXjxj6yc18mgcA47vENTO+GrMtMdIFUr34heKnMyZbbRyWoR1n6LbfaNdzCm24rRw
         hpctjE52W3R4WZZBYuwRjFH9ILJoN657GxD9cdQL4v9kom7KVxxHBnGP/26xjcHqxRI9
         rYD0BKPCe9WpEmua4gZo6lgVj2ttr2wOP9JC8xnBOCd/lNgrRkeZIsbBR+EjOt3zY3ZG
         rqqQjS/KrsCaoCVicmP07bHnFDtMf0fLJnQY1h8e5j5HDWhoShAle909NO3BDtqABZl4
         4FpnIEiyb7LTayrDfQ6on+GxJ7SHwXZJRquAF0Ub+cA4/GZJiaoss5gSODk5/TWnYzyp
         6onA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725928346; x=1726533146;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ouDmtSg6ZMw3I3STEErhG1o5LLCdixV4ZgG+BkcbaNo=;
        b=P0d8K+axvhWVHktR4aDpY5Bk6LtGcFvl0YmPl7Vl2S7g+vz87cSF/fYaGNW77UV20t
         BH/NEEwj2Ii1X7ukYAbDzHofV2RQmyioLqT8tdrdbPh5AAyH9wsuAUHTS3PG6GXFoeRS
         d9HHB+D7HutMChusjJ+iO+JqIuj7C38IqFU54qjTv/bU5z0goiY8XNyeRVBhx+c1L3oy
         E5UlMFlseLHlnTNLZ4Yh4LjOmhiSw+TguY1Rb3uCnsGJcGIEHw4jvgmNxBsFi48UlIny
         plYRNz+sR/pb9Tc7RaHS/krGBYFYWIF3solfKjnH9xc3AvjSu2uDvuzYXMsa25Tbp41T
         vs6g==
X-Gm-Message-State: AOJu0YyIvMDD+jFczPzo7pk7UokARQKSKPJP684+VdIf78s4q9PutNop
	Fgo8EDFEfUik6tXrGaJYAGvb0g/TlXgBvPMib6tyKLZagtCLoXn6zNXMRG3f3zG1PWkB61MDSBZ
	158478yMijFIhAX1l7c5ltSRzN7GUWLuT
X-Google-Smtp-Source: AGHT+IH2QJQ3CSdEluN33jduc1uRskrEvrEHttwR/B+iUB+nuIWKkhxt2Pu/0Tg2+EG6dCHFRg0xqAHUyNB+O2gnfQE=
X-Received: by 2002:a05:6a00:23c6:b0:717:839c:6838 with SMTP id
 d2e1a72fcca58-718e3fe4026mr15560795b3a.14.1725928345985; Mon, 09 Sep 2024
 17:32:25 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 9 Sep 2024 17:32:14 -0700
Message-ID: <CAK5yBb_XNX_OSBqb=qHksAGd_5JXvWe7BDgZEgBJc9shvjX5fA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW36!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f86eab0621b90111"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 00:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63807

--000000000000f86eab0621b90111
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 6
wei.qingjun@gmail.com 1
mhalstead@linuxfoundation.org 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f86eab0621b90111
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
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:wei.qingjun@gmail.com">we=
i.qingjun@gmail.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfounda=
tion.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb=
(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backg=
round-color:rgb(219,229,241);font-weight:bold;text-align:right">8</td></tr>=
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

--000000000000f86eab0621b90111--

