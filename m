Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02E61109B480
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 14:52:43 +0000 (UTC)
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22375.1774968752762707467
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 07:52:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Ay5YkpBc;
 spf=pass (domain: gmail.com, ip: 74.125.82.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2c66eafc1easo3789220eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 07:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774968752; cv=none;
        d=google.com; s=arc-20240605;
        b=GSWKtFnxCs4SN0k4DE8tt4lv/ar1NJZv6FpH94C8RzZGX/vasIlEHyqagPoIcyMeMX
         tTpdJOEYhCxqBkwjiHKrZoaBe/6METZcbwhc0utr9vA7LdVtQiPkDiVybYxtRtIjcBnC
         HZqgg0h1DKo9vAau/SHN7ctncHIVGsaQHKfddXSF1KQRC3f9kfxAuT0P0NTrw07sSivT
         wdtoHgjGTNPvvmCp0AT/PdyJ2LI9rxSHvMf5sb/ZNwSGxfzsBC8p3CctLiWGa1d1LpTX
         g+sp0UKg/OLlQXAPb2YopWATCS2HskWRmVIhXsCVNccmooM529uybHXPvM66BCOtzmtw
         8mMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=OJCLcoHHdYvRBLiSArVC0Dz97Ww75ZcO1cES7F92amY=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=KzruYbuwbfV2yzRK+e+c+KFHlas5Yj+fa7EQpdUP8gGHT57yKWgFYXdE2bsBwRn7/Y
         W50jitDEWf0pnu4jssmF3LuAX2ef1CAatb5TQqLwSD8UowOWEEdIOSQBDVCiJotFBxQ3
         o3DoBcbBPSmmMnGzHKc1y0HyN1rhHVje3OGzjmc1efFkTz6MDLSBpseEMDGyz8CTDBtM
         pmFt3CyPEcwJ2euHjFMtJvtKxMKkUPfQVfmctBKkpLxEMUSVT4MJiKTJynaauzi7IBsw
         t2tIkKg9DISs0kzRykoDlkhBr57CgP9ia8Mrjy/8nQw/bZRa/dlAI+HnDIfbWHFWWPsg
         ceKw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774968752; x=1775573552; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OJCLcoHHdYvRBLiSArVC0Dz97Ww75ZcO1cES7F92amY=;
        b=Ay5YkpBcMrxTUTVXntXqM+1OsZmTQ0mqSTRB9iVtxIT4TAnFoWw1QHzFf4O4irnj+c
         L3s27OxwLT7yk8YKh+ms4dQAhPSrUXx4rQ2VB8U2lT+xa6zGQCq2QC0lEI8HyvTxryin
         4y98OIuU29IK102ZgKK3bLIWuM0Z/QVW1jqcD12KLYIBT5L0Bk5UZBoJw6pU792NBmtg
         kat54GfFRAnIHf2vo3+7Tq0Y73KTib+x1dupUdkcQivUDSGYejMBiJ9d7qLkPbRSubsT
         SmueKAiWaHnAsVBN16Fx7UTZ4LVJiMgNyK0T3BgiqZgWMgBFRkosevFRtpv0BVdoOsw9
         mzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774968752; x=1775573552;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OJCLcoHHdYvRBLiSArVC0Dz97Ww75ZcO1cES7F92amY=;
        b=bs1kECBvr87rt+RDVCo29WyRAKXKV8q1mSRQ468eACGP7d/ZgO3gFk3VrkXvl+qOMb
         q1rN6BEBsTp0brTXJIfvep0njtVczEGSFttBw9uox5sVMPH6p4yG1do/DK/u7isZhsPO
         QBnNVqxSGzfYC0vcweiu4Ue1oCBd1dDm/AtqRFswgjWMc25G0ZwkktDnjbYmHCUe6uZu
         nWeAsAonS2V7vUCo85OxGnTnVH0od7xZSC4JiwePwIQNFczj9akN4GfHsCfwZpv7o5h8
         qUCZk2aOiqYXfcD0wDxGIk7qLkIJc2TEXoqMtKErfOTWiA+cZ29H7wLyZD4pDyFqOEsl
         8LGg==
X-Gm-Message-State: AOJu0Yxg2BPHnX9fYT/0NFwtpEW1H/dHi6ptxjqR1rDa0TrTuI5DYlWL
	uGop6pkCkZmI8VJXxINKLVvVm6jcleOkYoJjA4nJvOcrzTk9T7blygw7SYQztQiwEFuLsS2cWTz
	LBArTDEebP8RutBYwJhy82gcUR0sJPn+asg+S
X-Gm-Gg: ATEYQzyIB0qbB2TZ94s2dG7QVDSBawNetrjJ5vUvgiqwGYUYapqI2oBL+0/o0TNc4n3
	LmBzSBgOaJjdM+XXFbVwASM074M4laiB4SpR4TZCP7vg88UNe6BHf6IP41k3cZJv4ibTCvn2WhG
	5r3I+wYzBptym742C9My0NdsG5SNZMYE+2PrhgO3RJyhbdr7PgPC7dDFTFOh2wJJ+nlGH3rTxQ3
	Pbj8la7xW0ha9BG5fyNhBnyBJlqC2nvmfpV1r7/cLOxXtWNOI5s7HFvIX3HGftbS7c8Eq1Jj+QF
	9A16/g6ZJlYFWEA/8c8ZhXvrmZ39nCPtvR1nHNMCHPaz4xZ2+4qnI6UE/+Lo0wIp09p0ofxKhyH
	VCKxoL2cJx6XUZPvfKLQ8ObsUAw==
X-Received: by 2002:a05:7300:748a:b0:2c5:347:e642 with SMTP id
 5a478bee46e88-2c50347ea3cmr6176542eec.33.1774968752000; Tue, 31 Mar 2026
 07:52:32 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 31 Mar 2026 07:52:20 -0700
X-Gm-Features: AQROBzCbeuqo0gH1xl6NhhlJCEP85h4GTC7llSs-8XTuFHyfP_V8CZh24DANQnA
Message-ID: <CAK5yBb80f+N_6qjYyHiB+hR4-xOuRcw_5143CyGtZ0mm31MvCQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW13!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f3511b064e531db4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 14:52:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66370

--000000000000f3511b064e531db4
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 5
richard.purdie@linuxfoundation.org 3
twoerner@gmail.com 2
mhalstead@linuxfoundation.org 1
Grand Total 11

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f3511b064e531db4
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:twoerner@gmail.com">twoerner@gmail.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-ali=
gn:right">11</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backg=
round-image:initial;background-position:initial;background-repeat:initial">=
<span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></=
span></span></p>

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

--000000000000f3511b064e531db4--

