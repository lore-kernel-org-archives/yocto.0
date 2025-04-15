Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACF5C369B8
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 06:26:11 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.13948.1744698364470425298
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Apr 2025 23:26:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C4lS4cEJ;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so5057278a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 23:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744698363; x=1745303163; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p2OLsjpMl6pniJkLIJtGpECDsoSYzkXRl4ljSRENhlE=;
        b=C4lS4cEJP6XjWJuef9L7CWWBQrw29kWtc5fuC9WwZ54rGXQahFc1WbIUqRV4eZb9zW
         g0JQITHvY29SeQNbL7Mk5Kw5Wm5g+EPYm9msQlHyxgGEEu92BZKwVEe0CxUvO01elP5o
         puSdYeTnRNE+AahmXgYNF3R2YS+9eJUvTaxSUgBrnNIFfX4139do7GYFfEhSo/CEEq1c
         CZl0V8eTtpUR0+HLA1Z4zFPg3VejbwWeDMszrUEjR9PhKNE/1AyluQXWghdyBmQMH9lX
         UTuvzNnJq7uc/iCGDZYgaQR25V+2q+EEFMtl+x83sB3RkiAnYG5sit7adyQWZ/BgkvzW
         vzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744698363; x=1745303163;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p2OLsjpMl6pniJkLIJtGpECDsoSYzkXRl4ljSRENhlE=;
        b=vMv6My5Hh+3wyEMRgkaV9/5X7bis1Ty1C412iIhNpaHxE/Hhqk2fsDJwG8MuBvUHog
         cn3xNWEmqJkDRUTtRuwM12q65CG8a9SaG74gtrKrkYRdoGcQ96xN/i2IJpTnmXfNLnMe
         6Hf89gF/uUs4leSBSsExTd0fD67UyYZx8QtWU/BeE3JoP3BC8fvCF3D7Iagb6JPhhqp5
         8pizgoI73bTBK7hAOwv1gCe57BLHCiL1GL90mDE28QC5va9OaLmsa0hPGl0kKR0nJbmP
         7XJspd7jryEES0ylZVf3qaA7tU1oPF80KIozYCvIrdp+8ush5Wmmy4i24MjZoNpKb2Un
         uRJg==
X-Gm-Message-State: AOJu0YwYXRF68VcoP9dgNngIblKiP7E15qOpwqoOLmXp2RtJvxOKwooR
	LOYbxwz+Qju3oJ5ukNIUst/NMDvYtTBY7P2aJnx8vLIzHmCltnO7I65pxMl7JPdyRT465LQWSV+
	SoBbOyh6piAXN6nIhmNjrEuHI4R6PU8sd
X-Gm-Gg: ASbGncuAdWgJNSFM1CS26sTMlVSniG3Ynv2OBo7H8Tz3hyHfnSmDBlQZwzUCjTO8puE
	JsPmbfbdrl8+DzSu6GoTzJuismMQ3ThpGB6coUTBWazz06R6vI5tFqeDdu48byav/DzCetCluij
	TWwI9xfV2THhJAzDjMHsEKoZ6vfCbZMkpk8BCXKHWyZDAj4lYmLlsJYBVm5T4xNLan8g==
X-Google-Smtp-Source: AGHT+IEo8bF6mBsXSyqFqernnpOEIhMZVIgACVcNrYCFB9+lXb1R91Rg0sZk/w/kv6TMR6AKEndBq6cpxzAAuKZq/kY=
X-Received: by 2002:a17:90b:524c:b0:2ee:d7d3:3019 with SMTP id
 98e67ed59e1d1-308236345b4mr28275308a91.12.1744698363563; Mon, 14 Apr 2025
 23:26:03 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Apr 2025 23:25:52 -0700
X-Gm-Features: ATxdqUHndGaGpvu1VaJuXPwuxoPcRHd4cQTuPItPGY6jhRQhs7z7HZUZ3FobpOg
Message-ID: <CAK5yBb8+_wbna9vu1YyWc1KDMsL1+s8LjBSjxzUc-09oWQ8hXQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW15!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003354290632cb3efe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 06:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65165

--0000000000003354290632cb3efe
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 7
richard.purdie@linuxfoundation.org 1
mhalstead@linuxfoundation.org 1
denis@denix.org 1
Grand Total 10

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003354290632cb3efe
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:denis@denix.org">denis@denix.org</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">10</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--0000000000003354290632cb3efe--

