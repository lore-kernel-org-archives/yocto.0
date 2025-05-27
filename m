Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46F49C54F30
	for <webhook@archiver.kernel.org>; Tue, 27 May 2025 06:53:47 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.45402.1748328824980641184
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 23:53:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EvpEzZK+;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b1ff9b276c2so1453334a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 23:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748328824; x=1748933624; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0uTIIqWOdPNaPCjKUZXUOxBGPuO4Yvn5C9CvYprP5GA=;
        b=EvpEzZK+/KxppXrpNBvSWVuT+brlBD3WSshgAHyEj5EHT0E5nN4vo7OZe/U9MzkUrm
         RHyPp3vHezLFMow6C8AN4UkyuchcEm2kuoKU8sYzHOd3A3gaPbaKm6Bm1N+sSb/AIRUA
         nrB543Pe6N4Bp3A6MJejQjdlFCS+XUxuK32uu2eK2Irkzj4UMs2lAiNoliqJhnoLJSHK
         gUML2w0iJxf56IgEwY5yiZTAbl9OyQ+EriFPEqbIqOywIdW5AA9qWdc0w0f1mNyFwR4d
         Pw2MlHq4HPlC15jQg0ayCq3n5Ap9OUxGns0D44gVsxA0NnN/R8nVqcqZmcxfJXML+y3A
         0CRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748328824; x=1748933624;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0uTIIqWOdPNaPCjKUZXUOxBGPuO4Yvn5C9CvYprP5GA=;
        b=rcjG5vAsflTYjYtnsSOZH5kTOImN+5XpoB0drYjdxkYunOgfS+E3PkX4vJZ3VKkFTc
         /AITVee/GOyTT+V50MGf+t2HNQzHI87agB3ZdZVb+But8tn6VfZ64bh7TZZCrH4mE4ix
         JLgpJn5teQ7qI5FZ8Vr1aalgUmkt0s/xQ3pVgs1bCJ7bsPjWjE8QlQYd19n2ec2Ts53k
         Fkf0yaZSmD6yDqYh7iLd25c+XW//JxxKue4UW9oN6bRrul2x4EJKUuUHvx7/06CCJxaO
         7DE1AY8uAXwELgLRL6809WHyQDrEZnRMD7Trec3afSX86sDNxUCvYRp4bfKP9gpSh3NT
         hgxw==
X-Gm-Message-State: AOJu0YwmhXxt/5V007mJaZ1/MKOcsFH83/6qy0Fl63ymRt2n7L2b9OXi
	Ajr3Ef6/BwXK1QxIsrgIArfTQej1818vMaX/Xrgy069CT07lEgn4vy/b4PAj5tH2JHBkA/5iKQO
	IKWG0IeEmbhXZjD2VVzFm3LIf9K2rLnAyExsW
X-Gm-Gg: ASbGncsHcuvH+9b66NLFxLtrWTZx2qT8RlcQ8lJCVsWLmkvtRF9SCrSCMiEWavXG0TT
	5wlf9ebunaRqDaxDqp3f/XySXTKYU/ALoLRDB+C5J/jiAX2nGJR6uHWvEBv6Gta8OaG45vmM/zY
	HsL/jCaXi8D6MKwiiKX8dMZPJaIb1Hhv1K5EoGkaxzwmRxfgUEu9cgNUmt/hkN5XtU5Q==
X-Google-Smtp-Source: AGHT+IFICctjBtxsE66iKFF9fZtSGBZJz8ZguUZ6AfB4QAGtxBA5h1bjXDqQV2Sl5b4IPZ6AUlnkm5AGqbsD8+L7XI4=
X-Received: by 2002:a17:90b:35c2:b0:305:5f28:2d5c with SMTP id
 98e67ed59e1d1-3110f30db25mr20490921a91.15.1748328823911; Mon, 26 May 2025
 23:53:43 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 May 2025 23:53:33 -0700
X-Gm-Features: AX0GCFvIVR7-Coq9tsj7BVVFGSh7kpTK9V57XTHmaakovrH1i49PxJBSNuniNgI
Message-ID: <CAK5yBb8hON0A_F0RYgZYFgJYnUraF2qp364UMx8-V5hCVgHc5Q@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007ff98d06361886d7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 May 2025 06:53:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65426

--0000000000007ff98d06361886d7
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 28 bug owners as of the end of WW21 who have open
medium or higher bugs and enhancements against YP 5.3. There are 94
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 30
bruce.ashfield@gmail.com 24
richard.purdie@linuxfoundation.org 23
tgamblin@baylibre.com 21
randy.macleod@windriver.com 17
tim.orling@konsulko.com 11
pavel@zhukoff.net 9
david.reyna@windriver.com 9
yoann.congal@smile.fr 7
JPEWhacker@gmail.com 6
Yash.Shinde@windriver.com 4
mingli.yu@windriver.com 4
mhalstead@linuxfoundation.org 4
sundeep.kokkonda@windriver.com 2
raj.khem@gmail.com 2
Qi.Chen@windriver.com 2
william.lyu@windriver.com 1
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
thomas.perrot@bootlin.com 1
pokylinux@reliableembeddedsystems.com 1
pidge@pidge.org 1
nayakksanjay@gmail.com 1
liezhi.yang@windriver.com 1
jens.georg@desy.de 1
Harish.Sadineni@windriver.com 1
fathi.boudra@linaro.org 1
bbergquist@canogaperkins.net 1
Grand Total 187

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000007ff98d06361886d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 28 bug owners as of the end of WW2=
1 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 94 possible work days left until the final release candidates for Y=
P 5.3 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" s=
tyle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bor=
der-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
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
adding:0px 3px;vertical-align:bottom;text-align:right">30</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">24</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfo=
undation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">23</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">21</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">17</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kons=
ulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukof=
f.net</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">9</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.r=
eyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr"=
>yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.c=
om">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@wind=
river.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ming=
li.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@wi=
ndriver.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr st=
yle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><t=
r style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:william.lyu@windriver.com">=
william.lyu@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmail=
.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:toni.lammi@tl-s=
oftware.fi">toni.lammi@tl-software.fi</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tho=
mas.perrot@bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pokylinux@reliableembeddedsystems.com">pokylinux@reliableembedde=
dsystems.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@pidge=
.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:nayakksanjay@gmail.com">nayakksanj=
ay@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:liezhi.yang@windriver.com">l=
iezhi.yang@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:jens.georg@desy.=
de">jens.georg@desy.de</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@wi=
ndriver.com">Harish.Sadineni@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:fathi.boudra@linaro.org">fathi.boudra@linaro.org</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:bbergquist@canogaperkins.net">bbergquist@canogaperkins.net</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
;text-align:right">187</td></tr></tbody></table><p class=3D"MsoNormal" styl=
e=3D"background-image:initial;background-position:initial;background-repeat=
:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thank=
s,<span></span></span></p>

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

--0000000000007ff98d06361886d7--

