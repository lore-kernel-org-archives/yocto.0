Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E47ED2ED0F
	for <webhook@archiver.kernel.org>; Tue, 20 Jan 2026 12:21:05 +0000 (UTC)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5204.1768911660954356305
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jan 2026 04:21:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IXevHMlQ;
 spf=pass (domain: gmail.com, ip: 74.125.82.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2b6f5a9cecaso1410222eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 04:21:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768911660; cv=none;
        d=google.com; s=arc-20240605;
        b=CwNlkxqOSfr+GDCNzmZUJJOsKRxW55Y0zzi5R5S7bkorw2uJgKDX1A+O4zapTsLbN0
         h0OTpYYzGBqUX1mnBWSRBpr0tFArtxTif1w0G73iiUpuT01LlZgl0SRfJWpDMRm6kZQr
         47/biHZCJRVllCosf41enTLIfdiaOEswGlPk6Bx2qGsIc2Akob4Eq/AXoHh5GP/cfiyN
         P2iAtpgrQ8onL6uZwlpAwCwq4ohr/Rr6Rgr0G3PPwGWw+vFw+GASCfXh1qNAYlgujgOM
         FuYr+9JQ5359wGwzTkK9l7M/u0u8b+GLac4PfYHET+oTNUQapougmbx+bGMS/axxJNMm
         DpuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=BvOwQPMNQXqUIqhYOCEbGj6SZpyf0PL4p0f8yjZqQ2I=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=CjTfRCVfCWHWVXrdkxMAK8aKmgPaB4icNV6ZJNGeRBAY5VGMd0u2cog0lCGdCns7ho
         pubbItS1uHf+nyEKBYVlOFx4XhjdPQXaWt0/hAhw9M4M7fzcXAtY5JeEYFfmeGmnf9TO
         wo5i2vP9OHmwImWp6kPJzCyS/dmiFMAn5TaBZEQk9Bjjrra6SAltzRQ/MT9bmipFYQ5m
         WxbXD3k8SMx+HFvHORnWyCMXdLO/FsW4oWSFmkpsDcj8gdFvoAgOIXCcOsKj2+wY0wiI
         Iju8IKCWE3Ft4vybF/Pn7LV0kAx7UkIU2VK8R+gdjDun3XyX+IbZgIog4OKMQzs45TTg
         hgxg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768911660; x=1769516460; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BvOwQPMNQXqUIqhYOCEbGj6SZpyf0PL4p0f8yjZqQ2I=;
        b=IXevHMlQtzaNeFCW5372FjAvr6rdyJrM5urSIN8w2COBuitZbNpDAVOZavVBHCe6x2
         kVIRbEdkLjKPw+GpbhFgnpJE6K2IRPx24cjT2Jh/+W3/XQRp6lwTDyaz1xWBf5UyTRbG
         KlnVnaybBJopLmXFdo6Xtu5Whoy/5l8QMPJLJ+cTEp6wY0YfsSZZPk4gQmdTOYVRfB0p
         eYUeDnhWKkWZ966KIEDaaIxgvn3Cvc2uof4VE34hKm+lOPD8mgj1/QWvwLXDPBES6Dz7
         XZU9BjOjHKyK3YNeXWySpmbyemLN1mbMDiG3/s86U9WfGEJ41wAenkkOeb9yedWcPSZA
         j1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768911660; x=1769516460;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvOwQPMNQXqUIqhYOCEbGj6SZpyf0PL4p0f8yjZqQ2I=;
        b=vTJuqIshSZHh4mCM6ImbHDOyY06I/S7XlIHcBGQ64A4W+fq3aNqQErpVldW6wDUOo7
         8hMAx3jJymPPzeQJd3fhgxtTGR9iJ15HZRsHORnNMwGRVMwV+/tF9Yf41K4ACHjUylWo
         3f7eOZAIPIjIcuUyTy5sSTfLdY93/xbmrUSA0Kx97i7UTw3IOv3cqN0J9/Zuw/nbPyU9
         sRI1s+4U2l+lxoQHR2bXp83E5iu0BPLX09/0AogJ5XPvbXTKRvMuAK8e0nbA2BzgIZq5
         kY5pWOzVeM38qownnZvAAbkx0ls5W2866vV1LuqRwhptRAy33FfQCeKwq3Gm7lVXRZjL
         c5uw==
X-Gm-Message-State: AOJu0YwCfuR0EKWXFjAavqY2+g7AYWtYa/x3MCIrgBLwa83QlJFKC19H
	uQMSuiE1dOtq5QF08VPUjNgvAY0iS4hOiqmvXO9RHO4LBn2FD+r3Ox5uTEXgDW1Icg5Y/6IIYmn
	+tpOK4Nyk8JsYaS8Bnv7gxX8BKcfkhaWVjGDS
X-Gm-Gg: AZuq6aJmCOSC6Ugsy5DlT18/xvD3Zmq0B0WPZ33crQOKH5lBMxKMQgDQqE/gmcoXMkw
	nWuIbXVGHDbPbh5oE7nnUiYxjK2PWZZ169eaz3AB6UJjAGuXXN62qioOLuS7F87GA9Vun86I2Ik
	UWcwCuz9JvnJP03Jq9pMxI3k/mM9M0fkdl/sVV4wPkqMyrgD3cq8QxCKNWC4jwN4TTU9Nb5n65h
	QZTXOOhcqzrP0GgH1mnYhjGSu2Gz0sS8uHxB0QFa7UNXEgsq/CjVi3N1WQzkO41x8trSuxl5nxy
	jdKRKJAcF7hGzcGGku20u1tJl3WbUeSKPyIU+nwXH4VuO1LtThWqtjuG3+hhBF0DQyWt1AoIq6c
	r08P5k40yFB8ZWBm6EmbbF9X6hA==
X-Received: by 2002:a05:7300:3b24:b0:2ae:5bd5:c22e with SMTP id
 5a478bee46e88-2b6fd7c5c87mr730637eec.30.1768911658675; Tue, 20 Jan 2026
 04:20:58 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 20 Jan 2026 05:20:47 -0700
X-Gm-Features: AZwV_QgYJDiSxoFz54Sam-QFw3F8BZxYPz12RwaZm2xOxvC0Z-5jpPVg3fC3vMs
Message-ID: <CAK5yBb8nKb8PQhb1eHk=wchyO_Nr1+ubcCuGX=oVGCfQA5Fw0g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW03!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000df0af0648d0d73b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 12:21:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66159

--0000000000000df0af0648d0d73b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 4
richard.purdie@linuxfoundation.org 3
randy.macleod@windriver.com 2
tim.orling@konsulko.com 1
paul@pbarker.dev 1
mark.hatle@kernel.crashing.org 1
Grand Total 12

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000df0af0648d0d73b
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:paul@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;t=
ext-align:right">12</td></tr></tbody></table><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-position:initial;background-repeat:=
initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks=
,<span></span></span></p>

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

--0000000000000df0af0648d0d73b--

