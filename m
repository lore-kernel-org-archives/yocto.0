Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582BCF34C60
	for <webhook@archiver.kernel.org>; Tue, 14 Apr 2026 04:30:50 +0000 (UTC)
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11638.1776141049749997659
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 21:30:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=DWJyw9/7;
 spf=pass (domain: gmail.com, ip: 74.125.82.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-126ea4b77adso13430835c88.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 21:30:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776141049; cv=none;
        d=google.com; s=arc-20240605;
        b=an0mB5DCCjL0W8EZLRNZPut8Uu2eWFZ7J630W1POi0nYqRCdXNybX5q74DQ1QOLGFs
         cN7x1ZxubKKluH/UwV6NHUIMX32ZOiYnHYyyxil6T9VF4yzzpMWFf4zjjt7gmme4n9r/
         JoCast96a566tXh68z3BZ+Rt4GPjk46qJggfWe3UJVjaXLnU4ryfanZIoBdI5LmZK3pc
         vu2JgaQJ+NxMdmYhNRAJziPF9KmXViAgFBqe52PwUvZsxsoRKAgJfcTCknbH4WCdj/wy
         S2JJXdkUhxMWNRn6w76mSgS8yf8zJG2dRF09+wEPV89uB3KGl7sXBwHy/hSC+D9ELe0C
         3nVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dGuqnKSktZf+5jQywVVEbrVPJ3Ukl1Wanle4XDmO/VQ=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=I+l4R/dvUuEm37AJEmoQecABXnrZjmFRyLD/hr8LPc0Pn52wvpr3bBmhtpvcx9JdT3
         GEM0TzNHrY+kV23DxvFW7GWBazorr4KHhlrs34zDn9D2WK9lzDlusl2N7lGNDchGtP8j
         bt1FRNxMIniVoQUXGd5DN/T25SG4n7/7tY+7BQRZVZYWz1L4rANspeZKDkOO5o9W1P/h
         qwnifxThbPSscdfmiTIoaqtGw1K4bJDJByQkD4b32Z21DrHEGzxI2b1NMuPrtZUKC4J0
         waNVzCDDFM/IeRCpy9w2JuczrBg6WIpxeWPLVsediZt+S2nzUWLyG6HgJDHqSXkD4sgy
         vKZQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776141049; x=1776745849; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dGuqnKSktZf+5jQywVVEbrVPJ3Ukl1Wanle4XDmO/VQ=;
        b=DWJyw9/7nx4Wot6pD1/y7eNfgeR1AIsw5ntaU6X5XhjXKwAy1rANFfJRNxFehDMJQt
         IFyiDET4OW9mJ0tlUcb0M8OTXRgdtjhHx6uqtk0K4dDwtrPFQX1ZlaDupNJ/4QlJuVLI
         z63Qjt/ZXr2sHx9iiH6DjXn0VWt2wvG+XsKW0OWW3J5ah7qsULP8ipiPz4luJ/fjmHsB
         hViqkIYMw6ic4WfcxkWJf9qqsZPc+Ut0eIO2Xw3XF+a1vXIT4kJcgkE7V4rdPTCpd8Gl
         w4oR3JDU0S3d7ovd9mxqn4r8A4cjgmwmr3HKU1E0OTocWfxQQpeDgN+brkNYMc9hzQxT
         Np3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776141049; x=1776745849;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dGuqnKSktZf+5jQywVVEbrVPJ3Ukl1Wanle4XDmO/VQ=;
        b=q4cxsM8nj3bmyM9AfyI4t/lbvnRQ8kVlEuBwHRw0k1Q1TAE1zVXjYSnb39ZuRdcPrA
         TgzQ5ptXhAgdxjV9/inS0rCXZckVO+rorEdFtI/POwKZV6X17BGFVKvjMMb0jp+nOVjG
         gLyUgL73OX5oUZoPPZwTj1gEbfUVmSLYLa2BALT6eVLzIB82uD92zWpyLDUxQf2oaX0i
         CRJr7eYApW4dWQfRy5qHszDKvWG3JroDGdiIjNVbaTxTY83E2Gwed+euNiJcpPL88BX8
         FFu1vQBiPYqMKyk73zK2j/Bh+84o1Zer3PPq1Qpc7ADUPYmEsuGgfWceauv97AhmUsQx
         1M4A==
X-Gm-Message-State: AOJu0YzXQstWWlA/+CF4Z5NQ0Aq9PG6JQn96nVBxezyNX9fGbdKiaswH
	0ApydCzYm/TSWGbVnqmzelut1/IPLPp6BpQxzsrhW8YRSkKibhifVIwtb017PFOlyjsa1RqPPKN
	/nZJIG4ZuyjUPHWlQF8ySNtB1/0Xqovikz+QE
X-Gm-Gg: AeBDietMSL+ov1+z6vxRBcyLift0e9UEqeV74sKsXCasUquKeBtp8fuBd9HsxgtWcKT
	t1P7IQlWNvkzoSQtCbNX6clPSkYoVY0ZUmIbkvqio0IDGgXRUMoLHWTaJCtW3djmnEMAuD8xJl2
	xfAyaUaBvRDyBT3IRH3BIscjpMDyZACwW8hUvoEApfCDyqmxh1kxzQn5jYYhh5cfZMYQWeVqi6Q
	O4CR2/1uvrj+kLzSbJTN2GhhGFqry5MES98gPF/vvAohA4r9I6j7flz8ErSj3nMqQ425Bf9Hitp
	+8jgw39l8R2c6xZQWbIaRFrsq6IzEsbBw9JXadvfyYUPYpPc9MQL1AGbO+ln60NMwby0wn2rNp+
	/V/e7CI4XPt2SNRhJbX5tbu7mbLPI/7NcoW0P5f6F9lvP4Hjlv4iVdyGlLbmijeA1/oqwYIkiuo
	HR8JTOVNEPacZ2b934lA==
X-Received: by 2002:a05:7022:60a0:b0:128:d375:f1d4 with SMTP id
 a92af1059eb24-12c34eeb96cmr8698377c88.28.1776141048789; Mon, 13 Apr 2026
 21:30:48 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Apr 2026 21:30:37 -0700
X-Gm-Features: AQROBzB0Tn81eDqQ7NPLiKMzl4DfEec4axkYI3ruTce961pztcbb2kTHA4DUUX8
Message-ID: <CAK5yBb-ThEg0OiQn7SG1Dt1toJ5viCx6QxcM0xcwSq7WAXYfbA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW15!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000048beb3064f641005"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2026 04:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66413

--00000000000048beb3064f641005
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 8
JPEWhacker@gmail.com 4
mhalstead@linuxfoundation.org 3
paul@pbarker.dev 1
alex.kanavin@gmail.com 1
Grand Total 17

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000048beb3064f641005
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border-width:medium;border-style:none;border-color:currentcol=
or"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody><tr st=
yle=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Who</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">8</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfou=
ndation.org</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarke=
r.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:alex.kanavin@gmail.com">alex.kanav=
in@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">17</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

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

--00000000000048beb3064f641005--

