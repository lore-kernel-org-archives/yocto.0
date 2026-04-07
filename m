Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D011FB5183
	for <webhook@archiver.kernel.org>; Tue,  7 Apr 2026 02:52:05 +0000 (UTC)
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.71251.1775530316348757507
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2026 19:51:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=L+XQV53d;
 spf=pass (domain: gmail.com, ip: 74.125.82.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2b6b0500e06so6446917eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Apr 2026 19:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775530315; cv=none;
        d=google.com; s=arc-20240605;
        b=loRG2xcvBN+OOff9tvn5j9V9RPLu/PXsiofDpRJDheTD+PJAyt5HWto+yVEeBs+xel
         0S78Uw0JILxwfF09nE5+Hu9ldpj65nz9HND63CjILCTEzjWIAH6e2D7/Z+PIRbiAMZnn
         cUoC5M4jQN/L0yvGKmfX1jptwRfGo/Ta2bTlpcEm64EaG5x26BxMsVy+QRbkG5JYwCl0
         NEdzIiAOomzUyDg8uuvHAwtvIjmoBlwrTyOwzwc1pCBRzfH60RM+9ZspH7KhvxCwteoY
         cqDHmZ0fpEWQTy8Cy4QFtwr/dQsrG5ZFEPbkRedTew0Cu2NEITeke30s5HlEfM9AI7pl
         JVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=16jiLrvF6/o8yx3HfWDZ5J7bFAGg3MtAJ3OwZ+pnTcQ=;
        fh=pG6VdwAa7Iz/ERYTiJc5Dvvv3LOk6k1KGPXcLbTrHhE=;
        b=iW/An2qosBIvJg82vG75Xf7kxhUwRlNAzCvNYaW18xocd0oRLo3j6xTc9bZo6YS5aC
         g8Ex2V6A3KvZny84wqjhP65zs77Cm1zOWHr/ftG7RlnEIfpeRWYJjMBD6LJQFrpFMhSO
         nU5xlqsRcQjRyCxySzvfn+ZSOR0veU4TOdrS6c9pZSXZfhTKGf0XrHSOa2Bj0JGSjE3Z
         EFVCaN4gxYjUuB7s0wbneyFeeB8SlfG673tUU3kH4wg8iklRzLCEucY27HEvlXuoCTsV
         hqMk68KJHm6nZGZlpWF1X5M52MJg7RVGRhAzZXZvHFJ2ACSKg2005+bcd8wEaFQfEg3f
         vKfA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775530315; x=1776135115; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=16jiLrvF6/o8yx3HfWDZ5J7bFAGg3MtAJ3OwZ+pnTcQ=;
        b=L+XQV53dtPHGEndc/ldZoe8H6LCaosGJ+VvBFLPDu18f9KmGT8ZU0ZDZpEzmzQldNy
         heAwFEBfjTeVf1/K1AwbjFCqAo71fz1ou1oMihZ1E4cFC05vqa1gN98hR9vdK3b5M0Ss
         xBrTYF/lnPNAE6sw1Iv0QrDbzd+FvBhV+5nBzqYtF0A6KW5jBdDM0Ktt7/IIEq+sUjfa
         +5tArtdujZ6vtR0PHimjcL0C7n9FWnQlkjvqm7G6+ty3g2yU6PSoM9jyzK648ybhOFiq
         ZTewQ8reOiusi1iXjjeOwPAaU4dlmj5rXvS9Ci4VbSbuObnx1p0IH2Mz7jic6iAxWLIA
         QesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775530315; x=1776135115;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=16jiLrvF6/o8yx3HfWDZ5J7bFAGg3MtAJ3OwZ+pnTcQ=;
        b=gijVJQXteifR0lm3GMNgCUVxbnUIPnfJV7tqM9ve0J3wirquHzXppQdA/5s4wm2fKC
         7u6LQLH9EF+K4FV95Nxic2umih7Hou/51sRZQoPwOJ8uBYXtxEWYu0bFYqyoR5uOtcgx
         zXIF6jqewRuRGg5HIFU9R8CXURc5YVNh6wqObcHFgAhERMGg3uV7U7Na3MiVLgjFzvUI
         f190bQaTxn8Now7AQ+Sp/ztCKMwLjCsvngt5d4NKpyIXODiQgqcZxBWW0wjSAhJAkvZV
         R6aTPu7jwLuTIrGHn7SD9dFJij+Y56s/xyjdV4FNS1GBIPvaW3h1OiL2kXwYIRwImyBO
         k5sA==
X-Gm-Message-State: AOJu0YxSzwdY+vXzm1S/YcpcHIpz/unOosMA2SnrfTciITwAdyYaLzir
	kA2mrkdk28qKQO4zSjnf5UT0vqgij3wZyFh/zOurz7N/VDTBF5tZqU9v3tel8l5O4cGVGDB4L8V
	eh1OFXjsFB+Q+79JHcpe6rifFMk9x2E6NBHPt
X-Gm-Gg: AeBDieu9Ij2fPo36eDIBBEzGzTSCS9qVOMsYtB7KU0bWoGup8QvxrTYbO7BKtPaP70I
	yhAcy4GM9QWBXlWfMLQrJUgOYz2Q1tKg7MSTSU0OOdhJWgdNYgFxV2z43oi9h+gqcnEFgCqx/9n
	PZbeXMmiWVBvvhOJXeO3gekETdm6L1NyEXHSgjDCn2rqhJB7EV/DRkzqgoNRXGexv9IuxeCKKTk
	0vYIlKbo1aZrW1Dgo+YqZ19+1FfaYL3BC2oU+j70SsTe1ogR1ou2wT+5lB8cwEFQXCajaHL5H4t
	lQL9HHgESK+VjqWzaL3T+rRK8+ZCBDt1M9sQZ8FEzRbhorhKrHXNcV+Ds4dM6fsIiH4vVK4UInc
	uS9kTrQJiLoMH+wGknN6v61peocI=
X-Received: by 2002:a05:7301:1006:b0:2c6:55cf:de42 with SMTP id
 5a478bee46e88-2cbf9af8b8fmr6879122eec.7.1775530315381; Mon, 06 Apr 2026
 19:51:55 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 Apr 2026 19:51:43 -0700
X-Gm-Features: AQROBzCKpRGbgQwcYzvmLAdH_IuV2ps80AgfsK5nUYGtVG0IAGQffNn32q1Okes
Message-ID: <CAK5yBb8n1xNDLutETOT1u+65ENgE8eS-cWTAOa1k-=94GrnxSQ@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Stephen K Jolley <sjolley.yp.pm@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bc7dc0064ed5dd3d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2026 02:52:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66387

--000000000000bc7dc0064ed5dd3d
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 25 bug owners as of the end of WW14 who have open
medium or higher bugs and enhancements against YP 6.0. There are 14
possible work days left until the final release candidates for YP 6.0 needs
to be released.
Who Count
richard.purdie@linuxfoundation.org 22
ross.burton@arm.com 21
bruce.ashfield@gmail.com 14
tim.orling@konsulko.com 11
tgamblin@baylibre.com 10
randy.macleod@windriver.com 8
david.reyna@windriver.com 8
paul@pbarker.dev 6
JPEWhacker@gmail.com 5
sundeep.kokkonda@windriver.com 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Harish.Sadineni@windriver.com 3
yoann.congal@smile.fr 2
mhalstead@linuxfoundation.org 2
twoerner@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
peter.kjellerstedt@gmail.com 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
denis@denix.org 1
bluelightning@bluelightning.org 1
Grand Total 134

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000bc7dc0064ed5dd3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 25 bug owners as of the end of WW1=
4 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 14 possible work days left until the final release candidates for Y=
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
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">22</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ros=
s.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">21</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:br=
uce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">14</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">11</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">10</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriv=
er.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">8</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.r=
eyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">8</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul=
@pbarker.dev</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWha=
cker@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver=
.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@=
zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mingli.yu@=
windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Ha=
rish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:21px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundat=
ion.org</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr styl=
e=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmai=
l.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:toni.lammi@tl-software.fi">toni.la=
mmi@tl-software.fi</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></=
tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com"=
>Qi.Chen@windriver.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pokylinux@reliable=
embeddedsystems.com">pokylinux@reliableembeddedsystems.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:peter.kjellerstedt@gmail.com">peter.kjellerstedt@gmail.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:mark.hatle@kernel.crashing.org">mark.ha=
tle@kernel.crashing.org</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</=
td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:liezhi.yang@windr=
iver.com">liezhi.yang@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis=
@denix.org">denis@denix.org</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bluelightning=
@bluelightning.org">bluelightning@bluelightning.org</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:right"=
>134</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-im=
age:initial;background-position:initial;background-repeat:initial"><span st=
yle=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></s=
pan></p>

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

--000000000000bc7dc0064ed5dd3d--

