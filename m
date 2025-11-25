Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D92D0EE06
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 15:46:28 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.418.1764085585663804397
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 07:46:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UiBMUCL8;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bc8ceb76c04so3845754a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 07:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764085585; x=1764690385; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uXYlFDNgWVITexcmgwMTgSNj5vajyn+8B98cFIZKFNQ=;
        b=UiBMUCL8WwIxVytDnbhFIKlIuoRTLIf+YxF8FmD2zDIv3QyWA5dMY+wWh+bQOiAJRI
         XpZYbZicgaaPMhvTwrA5VIaleyiiYfEPHBdX48Kj0EcUFXjwDU3jTCYbg/cNRSjwgpQc
         tRIGGRZ+ABmgcBK30kCrn0gbkT4ywp/pMGP2Qu2/3WUd4Z/LtPSdupNFWgw/afQzNr01
         JsuD1ZqznQJiTahY9NpYrEYt8lZKVVIjacmyiPH0B5wK+4YeQlq7JmcieborUeD/hBhO
         O8sFhfgPJ3tYpKpPnpGtjPmTSZ9W3GbhT8cjE9FugLJ6i71AbeJOWgHo58K/L/HRty7r
         IsTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764085585; x=1764690385;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uXYlFDNgWVITexcmgwMTgSNj5vajyn+8B98cFIZKFNQ=;
        b=hYr6dS0x0rPm6N/MMh54jkHSek2hKUkK3zLyX62e6Sng9d68DIEhK7A/wyNhrDkODW
         sEmeK7GUwQLzClHzeIZhul/hFBsIf1BzdeS+qSgS7pMF3z5Gq5qSOaqlN3jvAjz58wHr
         TNGyvcBAouooqUFtFlzeGf+3KDuvbUREoaR0TotQaq96rk6W1x1GTPpvaTADF9HzGYNl
         m0MX+oZPHAuy9NNZC4f8PV+lNLfkQeGX+OeQJ3TT780tx7h1Zh4SQy4o2YfdIzbNVxAY
         2FacLKi5CJgHAr/BZFDWJA9cwH68huUCnNtiyYMlJAPa3SXPh18hmBvf+5dffrz6dixf
         UfJw==
X-Gm-Message-State: AOJu0YzrtuAEWtHwVPf2nsANjjOY5+pNzKIaDFnhng0ADhrO01Xnd7u/
	ks5uzmlYSU4pS5gK0tikStC9G5YTMYJrsAGD64c3acoW+0Cq+W5bSvzK7anhYWJktTO90nnY3p4
	1WwddTDSEsBNHV5MRTCu+q9n8/9Zabr2oP/ox
X-Gm-Gg: ASbGnctF2qDVvynCaJ+ah6p2/wezsS1YZKyZF5MPD4C4AdJEMEsKWVvwY/6mGcCAaVH
	bgS1TcykhdsewXDCVBzSQHSgENR7K2gVT8dxZdk1xcD/GpHSZJyV5Xz+0mIWJ3cs7IJ5DIKQb2q
	x1BXqcv04P3/RbCBBWwQy4nCWBd/7o6Wx0IRtdP6BoB2GSDAwA007F2/z77UhbI/Glzpbb5czra
	Rq6tR3FC3wKwwdHGpqSpn5C6oaNOTGFCNh/LPv8DadqEd86m0vmLYeWumi2lfLh9JjTqUS53GW6
	CRfvtK/pUFkBWSLFrHWYTov8RvbwcGizMV0ycGfqz9fieBwimwO+oweaSDgPr7/OsVZnhfoowNL
	IMruTU77QnJB7FNU=
X-Google-Smtp-Source: AGHT+IFenSbRTWnDOq+/W1DU0mg+eYQiAgfrUI0jMtptQ8suGc69xzg+R972VQuYi6RuUAVZdxoCy2E6dHML/c5oG/Y=
X-Received: by 2002:a05:7301:78a:b0:2a4:3593:c7ce with SMTP id
 5a478bee46e88-2a7194f19b7mr6964310eec.14.1764085584748; Tue, 25 Nov 2025
 07:46:24 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 25 Nov 2025 08:46:11 -0700
X-Gm-Features: AWmQ_bk-HPzG1ou9E5Pwu3D25O1RCHkmK_VXTkv5lrChzEEMZB4PXZOBIKmG9NQ
Message-ID: <CAK5yBb-18zj28krozqcF6LyN7SY+bDxg_CtqxrdRTrBih-OSbw@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a1e31b06446d2e88"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 15:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66061

--000000000000a1e31b06446d2e88
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 20 bug owners as of the end of WW47 who have open
medium or higher bugs and enhancements against YP 5.3. There are 4 possible
work days left until the final release candidates for YP 5.3 needs to be
released.
Who Count
ross.burton@arm.com 24
tgamblin@baylibre.com 22
randy.macleod@windriver.com 11
bruce.ashfield@gmail.com 8
JPEWhacker@gmail.com 7
pavel@zhukoff.net 6
sundeep.kokkonda@windriver.com 4
mingli.yu@windriver.com 4
Yash.Shinde@windriver.com 3
raj.khem@gmail.com 2
Harish.Sadineni@windriver.com 2
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
sundeep.kokkonda@gmail.com 1
richard.purdie@linuxfoundation.org 1
paul@pbarker.dev 1
mhalstead@linuxfoundation.org 1
denis@denix.org 1
david.reyna@windriver.com 1
bbergquist@canogaperkins.net 1
Grand Total 102

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a1e31b06446d2e88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 20 bug owners as of the end of WW4=
7 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 4 possible work days left until the final release candidates for YP=
 5.3 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"=
ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" st=
yle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bord=
er-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px=
 solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;bac=
kground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">24</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@b=
aylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com"=
>randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">11</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashfi=
eld@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">8</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:J=
PEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">7</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">6</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sun=
deep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Shinde@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Har=
ish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmai=
l.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:toni.lammi@tl-=
software.fi">toni.lammi@tl-software.fi</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:su=
ndeep.kokkonda@gmail.com">sundeep.kokkonda@gmail.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundat=
ion.org</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr styl=
e=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarker.de=
v</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstea=
d@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td=
></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org">de=
nis@denix.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">=
david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@cano=
gaperkins.net">bbergquist@canogaperkins.net</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color=
:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold;text-align:right">102</td=
></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:init=
ial;background-position:initial;background-repeat:initial"><span style=3D"f=
ont-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000a1e31b06446d2e88--

