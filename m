Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C865AF3029A
	for <webhook@archiver.kernel.org>; Tue, 17 Mar 2026 05:29:57 +0000 (UTC)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.69553.1773725393752667500
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 22:29:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mE8eu6zY;
 spf=pass (domain: gmail.com, ip: 74.125.82.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2c0c955a481so2773622eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 22:29:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773725393; cv=none;
        d=google.com; s=arc-20240605;
        b=dAxIagyypvUj3L4/juE4I9l8o4qngmpQGJ1HUzs8dR+HxkZGY7KRtpbG6MFbnHPlrJ
         EhSu6jTEePA94vUWocYUNXd5NeljI/0wXY1wVZpFevF7CU2AfIhFKnivsQXAwo+0ZhKr
         /1I2D6HNbaKl3q5i3J2IrIKTLoyZZRnsupItz9UPxkrdn8ttLhv9tfe2aaIdKIV5Ohqi
         WQOPMpPpeHdbqPtdk0yGIxUv/7RPjXWRd6/mudbIk43soNUURMOg6uteKB/Y/bdNBg0E
         wQzXGcghs8ZoNT/xwOWsSYEN01t0KZVbzGxaAcc4i4W/+prGow/7Rp+0ZRvhIZdo9A99
         rh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=u40bkxyLgUonuBjPSZLj2yW7v+YoPr1x6BI2USdbULg=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=TUKZ9s7UNxzLhlM8ObdQr/a0w98LiBn+iCNGfEt9/TIH8No05VOl+DQUUvzumQdCyR
         sSbCRLzr6Q2BM+NNdEKF3KkfwPg6S7nTU2bFFh1MdF0IbtPixWqVfBQ1ayCVgCM73bLq
         WPymP6HQ6+2Lbxe0prn068vy+cAQkNKmnXG88PrOWV+HdZHAbIWnlz7PtLs/3nLn8SFP
         Rp/1l2vIVeFYY63t0taNr61hUvCspnSSnFR3fqm0/qrfveeUUuPkjPAXjuSl1Mz5Tshl
         CK6+J+4TFhwsSFNzjvfTzXu8V4xHw1xbvAuKBveJ38/GNCxIYvOAGrl/MV6/r8Y1Nvfh
         J9Ng==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773725393; x=1774330193; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u40bkxyLgUonuBjPSZLj2yW7v+YoPr1x6BI2USdbULg=;
        b=mE8eu6zYztlrpPO69ZJxBbV2mKQiFBp0zJzGV8LbGZKA0UPfeWi1kpVhxcSAi940/P
         Gm5asFOmlRZX/ksPdDUDCNZMso5Tp1QH+dsmBujK+9Yb6aGdZCrmiMTljA5gD/zG2tCc
         rlHL7/I7Rm24PvYLoDqsRb/e7vuZNAaAH+QYtQqxkwbKmNC66/WJezTyltU9h4H8zLmf
         aqOO4oWpVgjphrERFdDyJcK/xxNJbj46wePXNTwgmUa84Yg15yI91+Kb4C/+VghbBZ/K
         B0mDkn8iZh9U2FHxZVScjNyMQbQg/n3V7B4mSJjkQ/JwSuRVymspF2l/MkljbQx6hfA+
         NapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773725393; x=1774330193;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u40bkxyLgUonuBjPSZLj2yW7v+YoPr1x6BI2USdbULg=;
        b=litdZ2u0GrdoWw1oLL+jA/jl3KMl3uVzdyOw5mBPMewIKkBPYEMIj+PL01cI4gb7D8
         9zeRvsRY4ZVnCWt/LJ81FDhyEmQXsuO+NKl9rQ0puw1KB5cYR0IgtdagIiQlwzcUKnHk
         tN66TRKDSPhDOUuggIRI7XXVB/HJDoerYCOCUvG7bgpt6WhOOQvNz1eZ28yavvfpmL8M
         sFDtjEDdj0VmXwzskvl1sHUUTXbEWGSwvljAUwGZK7IINo9cSYmZXUjBYAw7lLXdSjeW
         gPa+Y3cP3Hqv+SFHM/BCbcUKmbPEemdE0js7MSQgyFNY42BzbQeK6/m62Qjrum+idQaX
         yALg==
X-Gm-Message-State: AOJu0Yxc5g6HVBPdO4bsHNPJ0mAMRR1qfJeQSDX/sxpiU9JI3nwssgS4
	9e4kc3kexHjetc/qrfZ81enqiyQFJ701g4c8glUZoUmmCu8TBlXEd/04pFnwsWeGKQQJ2/9qH3t
	I9Rlf20DR66xoHa8Pi32mWuRexGgbk+qMnhZl
X-Gm-Gg: ATEYQzxA+3ovZ25no9q6UvdHr4HWQo6uM21p6wzTsu7G3J7NVtsKEXpWwZJhMx5shji
	Y66TRVyV9dBLaCeUc+n4R81IKGRzIzCEQ7lfsGh1aqOhJTJqW/fr3hG3l7uAWqTqFWPF09wPPOP
	+i6GNna/v4GHMZENlaNkbFmeJ1G9aRjuelzmciPfeeqteGa3QnIt/1enPCdp387Soq0aQIavC0i
	N1jZYreG3A3a0QMe7ELUFJC0XvngLzcap9LfD/lhMUkPZqeiwjH32dFEWCXm6tsa5LhgiK7kLTy
	pLcFpkNfoS+YqrSxY9I7JbfYzK7wAioNn5ZhUQG85YPiGBstbhNBOP+Ew6ryAVMEBm0QtKf4Stl
	623sjlSC/w3KJD6Z5AW4WuqDokY4=
X-Received: by 2002:a05:7301:4196:b0:2c0:d9e6:7eb0 with SMTP id
 5a478bee46e88-2c0d9e6887emr424985eec.16.1773725392889; Mon, 16 Mar 2026
 22:29:52 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Mar 2026 22:29:41 -0700
X-Gm-Features: AaiRm53wSPHHSYlgLl7uV6WrftRgXN6hfHkuej83PGD9wLWQeS1_x5VElWk8ff0
Message-ID: <CAK5yBb-4hZW3S6ZLsjCdUshXmoZQftb=Z-7wdnC7Ays86b43eA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f8eaf5064d319f02"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2026 05:29:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66336

--000000000000f8eaf5064d319f02
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 25 bug owners as of the end of WW11 who have open
medium or higher bugs and enhancements against YP 6.0. There are 29
possible work days left until the final release candidates for YP 6.0 needs
to be released.
Who Count
ross.burton@arm.com 24
richard.purdie@linuxfoundation.org 22
bruce.ashfield@gmail.com 16
tgamblin@baylibre.com 13
yoann.congal@smile.fr 11
tim.orling@konsulko.com 11
randy.macleod@windriver.com 10
david.reyna@windriver.com 9
JPEWhacker@gmail.com 6
paul@pbarker.dev 5
sundeep.kokkonda@windriver.com 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Harish.Sadineni@windriver.com 3
twoerner@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
peter.kjellerstedt@gmail.com 1
mhalstead@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
denis@denix.org 1
changqing.li@windriver.com 1
ankur.tyagi85@gmail.com 1
Grand Total 153

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f8eaf5064d319f02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 25 bug owners as of the end of WW1=
1 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 29 possible work days left until the final release candidates for Y=
P 6.0 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
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
adding:0px 3px;vertical-align:bottom;text-align:right">24</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">22</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:br=
uce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">16</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">13</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">11</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">11</td></tr><tr style=3D"heigh=
t:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com"=
>david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
9</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gma=
il.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">6</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker=
.dev">paul@pbarker.dev</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@w=
indriver.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mi=
ngli.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:Harish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.f=
i</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windrive=
r.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.com">pete=
r.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxf=
oundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D=
"height:21px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.org</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:=
21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:changqing.li@windriver.com">changqing.li@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr st=
yle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:ankur.tyagi85@gmail.com">ankur.=
tyagi85@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></t=
r><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-wei=
ght:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold;text-align:right">153</td></tr></tbody></table><p c=
lass=3D"MsoNormal" style=3D"background-image:initial;background-position:in=
itial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:=
Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000f8eaf5064d319f02--

