Return-Path: <sergey.nikulov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796B4D46C03
	for <webhook@archiver.kernel.org>; Wed, 28 Jan 2026 21:18:52 +0000 (UTC)
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.624.1769635128484898986
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jan 2026 13:18:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TPc1CkrF;
 spf=pass (domain: gmail.com, ip: 74.125.82.170, mailfrom: sergey.nikulov@gmail.com)
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2b6aa67a792so71040eec.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 13:18:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769635128; cv=none;
        d=google.com; s=arc-20240605;
        b=OPRzOg9zOMBTGuP92yXYWBbKZbyLKjDkj/KBYZ+/GGFnlCuqyl++N24RpIQwWuYU7A
         NdYTRgrXGGc7SZ/MUhyMjbWWSJMYDrIZQYfFWuWnmMjBCUf1Ec3dk43fUmlXONZJX5fc
         bH8UklEySbJHfYlvjOGe3IXDeve0IJdsGO2d9mxDL1AloMV8LEWhaVRKVg573ybVjc/M
         Hufnj5O8tm16O2qoVyHvDNGzf0P/d8GHembLIHGXp7R1HgfqpsHkD7AWGScDsWyCROb/
         iFbV+xCDwgKVuX0+NZBekoEaDmDi67C4pQQSIDm0J2qdXesqCeYvf9fcD5V5fwY0be8o
         yWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/3UWnPEM82m9dtXSNieiqLD2+PDSGbfifFBRM48uvuc=;
        fh=wvQubgfVCX5x2jZsgkUIUclz/BkYhVut+iihvJ8KNAM=;
        b=TcE50ycIye6b5FN19ISA626j2RmgtqeUR4b4XQy+/Na+cPgRtjeR3YvS4pJ0eR8za1
         k552oa2WImyIxyIIU5Z/NVcDFFtrezFnEutPVZdrU5jI1NpRBmHBKzaeyZYIHQFRGYIc
         zCG13J8lbWlz2xeAO6cX+qJ24CelCO7VcpMvlxRYgqxXEmJS9APxDqQdBsGiRiJ3gFpw
         Uad06uAJHZZPyDIE4j/22Y4JNlreVJHM6VRFuafTENO5icdkYMMugPvD/JjXNDcZzcGs
         5LTxGykWAEygtCyfjGAPQyKoWoV57YiIH9dt/tc2VlJZyMmN/nkmf3CQL9x9kN/QC0Pj
         Q1Ag==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769635128; x=1770239928; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/3UWnPEM82m9dtXSNieiqLD2+PDSGbfifFBRM48uvuc=;
        b=TPc1CkrF/kGpqxTBxGvHSFCzaW6LHRXb84X32zD9uBvNz37wPIQKQNOgD6Qnc/sZJX
         gKg5IzGDLNMbfCppu1fDt/fZFYwrhARQ5TfsGST/RNfVOUQS+1HEYyBVojSdop1/w/j5
         18B3WAg2sYwe1M/3HUsvt7i6EPbNn2kOdp7Y1LcaNkV5Y75txJPcKXOjQXvIZCLFgByn
         EQuIJ+f70vU6wNf0SzdlFrfEjeUkREaUXRovC54K4EKw6KDRrVJkzYPGeTujyoi8K6PN
         0XRaqnvyN7YRKB6SRmLa+M1IqVn5ziW6N/TCsi3+Nte3MNyziYH+VXFzTKKgqd2n6d75
         1/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769635128; x=1770239928;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/3UWnPEM82m9dtXSNieiqLD2+PDSGbfifFBRM48uvuc=;
        b=JNvSG+05sGy2epD+p7MlZJdvmDQieqgOWF7GSaaKsGw8NHMANZwU6A/HZMPL2SGEWc
         IuvMpX44oFv9mWbogkvE3Xg0kO725/r4Q8+yJ+XQnB5xAYVLAgCf5VVKBbARfRv6busB
         N7xDQyzuryY1Rzw6gDTsFu3UFlW22o5szMmuINzYxkn+G3aDHfY+7Zox+wTP4wnqlMAy
         lShfsk80gPH0yoSLQHMW+SAsKIKKmwDjPunrEp63NEHEZ0oFrPV3aTt7NX8F8Rfgjsg6
         xTB6Djw7R9HtWyoJFuZqn0K8yRn+Yg+D8pOApSZc9HOrUh0Ql8Rh08uW3z/GByJu0DEQ
         y0FA==
X-Gm-Message-State: AOJu0YxJ2NCM7RN9l9GWtCLg7LCxffoz33lflRLFl9vwnF8fn/2VJ5Qv
	q/e1GwVZjUt7Nq4dazeW/6kUWfOw+Ggo9DREd2oxj44MwF/uCN9c6FA/dTUoVOMXdnwqrOd/mQU
	wNEC0/6qOVw/dZRnfhfPfw6vfX1uw9nWviNCGUqeG/yXng/k=
X-Gm-Gg: AZuq6aLgfkI0Nikb+iaxgD3uT11Tx0K6yApthE7vH7mU1S5hBTwdqfSD/HxL52lzoQP
	0msrFQ4d54uZ7VwsKugLbaJYgg9i+FP8BFoBW0S0xyZFyCGt2Q1qE/baJ/HiK0RC/cL8RHKqzKR
	tPvdtR4LklP+ViTut/xeVW4lz9PTzsVZ5l3VN7Tdsa9NVCwKbk8NmZAULz87X4MlhmKvfWn0ngV
	cgKkqG3yVUhndrlOjvgb11CX3i4T1Ze3E15veHRhh29qFWIlPiAuaHAqCLJE4XfTOatNAXyNQ9f
	b0jVDmRfTh44SDweAiDeSXKPt0M=
X-Received: by 2002:a05:7022:438d:b0:11e:3e9:3e98 with SMTP id
 a92af1059eb24-124aaa07479mr1107518c88.7.1769635127455; Wed, 28 Jan 2026
 13:18:47 -0800 (PST)
MIME-Version: 1.0
References: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org>
 <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com> <1007393.1769627915286057389@lists.yoctoproject.org>
In-Reply-To: <1007393.1769627915286057389@lists.yoctoproject.org>
From: Sergei Nikulov <sergey.nikulov@gmail.com>
Date: Thu, 29 Jan 2026 00:18:36 +0300
X-Gm-Features: AZwV_QioXW-LE_-oIPDSjz-FIgNIUWThlPI2S1gDOeoPDuIyeKJdYRFP9BrSL_o
Message-ID: <CAE7Ac0Bx2CTE0Q60yGy+birEsmk4pZcZ_Et7Qi0N3CBbAPgw_g@mail.gmail.com>
Subject: Re: [yocto] System device tree, AMD EDF, custom board
To: pierre.daye@p3lab.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002775da06497949b4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 21:18:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66202

--0000000000002775da06497949b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, Pierre

Yes, I've provided you with the way to modify dts for Linux.
You should clarify exactly your issue.
Perhaps it is not related to yocto at all.

If we are talking about how to put PL bitstream - I've followed EDF
instructions

Vivado (here you define your HW mappings for SDT)  -> XSA file  -> sdtgen
-> SDT -> gen-machine-conf (yoctoproject starts here, AFAIU)

After that

bitbake xilinx-bootbin

put together bitstream + fsbl + pmufw + u-boot to boot.bin (you can verify
what's inside with bootgen tool)

All the best,


On Wed, Jan 28, 2026 at 10:18=E2=80=AFPM pierre.daye via Lists.Yoctoproject=
.Org
<pierre.daye=3Dp3lab.com@lists.yoctoproject.org> wrote:

> Thanks Sergei,
>
> The issue is that with the system device tree approach, there is a clear
> cut between the linux (from what I understand, interacts only with the
> cortex a53) and the logic part (related to the fpga).
> Your approach is ok as long as you don't have interactions between the
> two, which is exactly my target!
> For example, I want to set the i2c devices that are connected to a i2c
> port linked to the logic part (aka FPGA) on my SoC.
> This is where it is complicated for me to understand what I should do.
> In the process described by AMD (
> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/3250586081/Developm=
ent+Flows+-+How+it+all+works),
> it remains unclear to me how I can define these points?
> Should I use an append to xilinx-bootbin or should I try to append it
> during the build of the image (as it was done previously).
>


--=20
Best Regards,
Sergei Nikulov

--0000000000002775da06497949b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, Pierre<div><br></div><div>Yes, I&#39;ve provided yo=
u with the way to modify dts for Linux.</div><div><div>You should clarify e=
xactly your issue.=C2=A0</div><div>Perhaps it is not related to yocto at al=
l.</div><br class=3D"gmail-Apple-interchange-newline"></div><div>If we are =
talking about how to put PL bitstream - I&#39;ve followed EDF instructions<=
/div><div><br></div><div>Vivado (here you define your HW mappings for SDT)=
=C2=A0 -&gt; XSA file=C2=A0 -&gt; sdtgen -&gt; SDT -&gt; gen-machine-conf (=
yoctoproject starts here, AFAIU)</div><div><br></div><div>After that=C2=A0<=
/div><div><br></div><div>bitbake xilinx-bootbin</div><div><br></div><div>pu=
t together bitstream=C2=A0+ fsbl=C2=A0+ pmufw=C2=A0+ u-boot to boot.bin (yo=
u can verify what&#39;s inside with bootgen tool)</div><div><br></div><div>=
All=C2=A0the best,</div><div><br></div></div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 28=
, 2026 at 10:18=E2=80=AFPM pierre.daye via <a href=3D"http://Lists.Yoctopro=
ject.Org">Lists.Yoctoproject.Org</a> &lt;pierre.daye=3D<a href=3D"mailto:p3=
lab.com@lists.yoctoproject.org">p3lab.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Thanks=
 Sergei,</div>
<div>=C2=A0</div>
<div>The issue is that with the system device tree approach, there is a cle=
ar cut between the linux (from what I understand, interacts only with the c=
ortex a53) and the logic part (related to the fpga).</div>
<div>Your approach is ok as long as you don&#39;t have interactions between=
 the two, which is exactly my target!</div>
<div>For example, I want to set the i2c devices that are connected to a i2c=
 port linked to the logic part (aka FPGA) on my SoC.</div>
<div>This is where it is complicated for me to understand what I should do.=
</div>
<div>In the process described by AMD (<a href=3D"https://xilinx-wiki.atlass=
ian.net/wiki/spaces/A/pages/3250586081/Development+Flows+-+How+it+all+works=
" rel=3D"noopener" target=3D"_blank">https://xilinx-wiki.atlassian.net/wiki=
/spaces/A/pages/3250586081/Development+Flows+-+How+it+all+works</a>), it re=
mains unclear to me how I can define these points?<br>Should I use an appen=
d to xilinx-bootbin or should I try to append it during the build of the im=
age (as it was done previously).</div>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">Best Regards,<br>Sergei Nikulov</div>

--0000000000002775da06497949b4--

