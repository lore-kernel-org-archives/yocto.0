Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F005DC25B7A
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 07:27:15 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.7500.1715844419651160321
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 00:26:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NrhjHtVd;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: rybczynska@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2b620677a4fso5777812a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 00:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715844419; x=1716449219; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ofg1XsYLrNWeYazEtRAR/Lun2TIjC1QTxxd98xgGhNs=;
        b=NrhjHtVdO+VRqdLDE4YX9LQ2gmhkKv87wJs38dMQuv391iKVwE2EcTqwrTeah1dWnf
         Y4XdyEkaca+1oKan+FgSg25gKELrbAiI7x5XVoylkfqNXe+l7cA4NJ2d6auFMXu9y34M
         8LbwxUX1tplemdfHHIvVTAmK9qH2zTF8AqBb6WPcQ3PoV/WBP3Ij9zUxql1gmNi/cysL
         gvmCu9R4G6ITWSRRVR3fO84rKMzue8RjHbOfsD/JXw9vCpsCONkL0UxYx6tQ5Gk5MguR
         6klP2drLbgIBTait0KtM5qmKJ0IRHCPj35iZO+12BRD3xzzlwvmOSom2pHSf+BNvCtca
         xmKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715844419; x=1716449219;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ofg1XsYLrNWeYazEtRAR/Lun2TIjC1QTxxd98xgGhNs=;
        b=KQ+20/h6fl8eO+cwefg3c8zfiSPkfEdMwIQM3EaJZj8dkEPXckfzHqcI6+DyHjHZsE
         Dy3Ja0KBQCM6DiINbmYKwpl+FV1P2I2iDuoIynzc1dqJj8puHnv/Bywqx4B2M3pb1yM/
         /2XMiEvGeEKtcPzSqHXrM+pLbOm4GwrVNpjxWvVqjeJpmFiL3ekkmhKoZVWAlElb7Gwt
         QYqdAoh6pKmgwS/uKD3+I2Zj0zkw0wR8WgBI3LVt86WQ9mVgoRFLtVIz86dT+I9GFWoV
         XFLGTk+ve7KiAkvSHNERXnpRTNXxUAOPGjXb6N5PC+L5m6nNg9F0hP7Tol9J+QETHrPn
         zA2w==
X-Gm-Message-State: AOJu0Yzu0RgXsTBXUhrQXLkHzzw1zed4HmfhsdHWf2cTxlMzHBHXcNqv
	3vPRhaWbKRSOPN1L4nPWev5rM2YBRhsdJhSxvUIHbIz5B5Ehun8C3YQtcvoVA3FErdNIqz1IqQN
	tuIUwh/JAyEOrOfyhafTuYKCQZGo=
X-Google-Smtp-Source: AGHT+IFPM22uzM9nN7LvokL+/VI4smT3P6McyIbKMdAQizvKjIFlzEG+6UP7sBRG5kWMmTNneo0nN2biQsNb6ZmOgYQ=
X-Received: by 2002:a17:90b:5184:b0:2b8:d6cb:101e with SMTP id
 98e67ed59e1d1-2b8d6cb1263mr11883992a91.7.1715844419074; Thu, 16 May 2024
 00:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
 <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
In-Reply-To: <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Thu, 16 May 2024 09:26:46 +0200
Message-ID: <CAApg2=TJAxkN995fApsU15T1sywt6uM_6v-wjyJhYH_fRPx5dA@mail.gmail.com>
Subject: Re: SPDX delivery
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="00000000000016ce6306188d292d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 07:27:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63105

--00000000000016ce6306188d292d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.com> =
wrote:

> On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@gma=
il.com>
> wrote:
> >
> > Hello all,
> > As this discussion might be interesting to multiple people, I post it t=
o
> YP list and the OE architecture list.
> >
> > In the VEX work (the status will go out in a moment in a separate
> message), we're collecting SPDX and CVE files for builds to re-run the CV=
E
> checks later (potentially months later). The CVE check file is generated
> for both the image and the build as it is (including the SDK).
> >
> > On the other hand, the SPDX archive is generated for the image only, an=
d
> contains only packages from the system image itself, omitting the build
> system. This is possible for us to get all the partial SPDX files from th=
e
> build dir, but we do not expect the complete build dir to be kept for
> months.
>
> Can you clarify what you mean by "build" here? We do generate SPDX for
> the "native" recipes used during the build, and they are in the final
> SPDX generated for an image, so we do have some idea of the "build"
> tools used to generate an image.
>

What I can see is a little strange and I am not able to attach it to clear
terms. With an
analysis done on core-image-minimal, for packages/recipes starting with 'a'
and 'b',
the following are there in the cve-check, but not in SPDX:
bash (but bash-completion is in the SPDX)
bzip2 (but bzip2-native is in the SPDX)

Any idea why?


>
> >
> > So, the question is, what people plan to archive from the build? Do we
> need to archive the whole SPDX output too? This is an interesting questio=
n
> for example in case of "world" builds..
>
> The algorithm for creating the final SBoM for SPDX is actually pretty
> generic: Given a single starting document that has some references to
> external SPDX objects, it finds the documents that provide those
> objects and adds those documents to the final SBoM. It then
> re-calculates all of the (missing) external SPDX objects from the new
> SBoM and repeats the process of adding documents to the SBoM until
> either all references are satisfied, or the references are known to
> not exist in the current build (which generates a warning, since it's
> not really expected).
>
> The nice thing about this algorithm is that we can really generate a
> SBoM for anything as long as you have the document (e.g. initial
> objects) you want to start from. As such, we should be able to
> generate SBoMs for world builds, individual packages, or just about
> whatever we want.
>
>
I'm wondering what makes sense to store: on one side, image is something
that
people flash on the device, so we definitely want to keep it. If there is a
vulnerability
in the compiler used to build, it does not necessarily affect the image
(and you
do not need to update it); except the case it affects the generated code.
It makes then
sense to store SDK and image status separately.

I'd like to head opinions from people who use the SPDX generation, if there
is a preference.

Kind regards,
Marta

--00000000000016ce6306188d292d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 2024 at 8:09=E2=80=AF=
PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska &lt;<a href=
=3D"mailto:rybczynska@gmail.com" target=3D"_blank">rybczynska@gmail.com</a>=
&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt; As this discussion might be interesting to multiple people, I post it =
to YP list and the OE architecture list.<br>
&gt;<br>
&gt; In the VEX work (the status will go out in a moment in a separate mess=
age), we&#39;re collecting SPDX and CVE files for builds to re-run the CVE =
checks later (potentially months later). The CVE check file is generated fo=
r both the image and the build as it is (including the SDK).<br>
&gt;<br>
&gt; On the other hand, the SPDX archive is generated for the image only, a=
nd contains only packages from the system image itself, omitting the build =
system. This is possible for us to get all the partial SPDX files from the =
build dir, but we do not expect the complete build dir to be kept for month=
s.<br>
<br>
Can you clarify what you mean by &quot;build&quot; here? We do generate SPD=
X for<br>
the &quot;native&quot; recipes used during the build, and they are in the f=
inal<br>
SPDX generated for an image, so we do have some idea of the &quot;build&quo=
t;<br>
tools used to generate an image.<br></blockquote><div><br></div><div>What I=
 can see is a little strange and I am not able to attach it to clear terms.=
 With an</div><div>analysis done on core-image-minimal, for packages/recipe=
s starting with &#39;a&#39; and &#39;b&#39;,</div><div>the following are th=
ere in the cve-check, but not in SPDX:</div><div>bash (but bash-completion =
is in the SPDX)</div><div>bzip2 (but bzip2-native is in the SPDX)</div><div=
><br></div><div>Any idea why?<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
&gt;<br>
&gt; So, the question is, what people plan to archive from the build? Do we=
 need to archive the whole SPDX output too? This is an interesting question=
 for example in case of &quot;world&quot; builds..<br>
<br>
The algorithm for creating the final SBoM for SPDX is actually pretty<br>
generic: Given a single starting document that has some references to<br>
external SPDX objects, it finds the documents that provide those<br>
objects and adds those documents to the final SBoM. It then<br>
re-calculates all of the (missing) external SPDX objects from the new<br>
SBoM and repeats the process of adding documents to the SBoM until<br>
either all references are satisfied, or the references are known to<br>
not exist in the current build (which generates a warning, since it&#39;s<b=
r>
not really expected).<br>
<br>
The nice thing about this algorithm is that we can really generate a<br>
SBoM for anything as long as you have the document (e.g. initial<br>
objects) you want to start from. As such, we should be able to<br>
generate SBoMs for world builds, individual packages, or just about<br>
whatever we want.<br><br></blockquote><div><br></div><div>I&#39;m wondering=
 what makes sense to store: on one <span class=3D"ng" style=3D"background:n=
one!important">side</span>, <span class=3D"ng" style=3D"background:none!imp=
ortant">image</span> is something that</div><div>people flash on the device=
, so we definitely want to keep it. If there is a vulnerability</div><div>i=
n the compiler used to build, it does not necessarily affect the image (and=
 you</div><div>do not need to update it); except the case it affects the ge=
nerated code. It makes then</div><div>sense to store SDK and image status s=
eparately.</div><div><br></div><div>I&#39;d like to <span class=3D"ng" styl=
e=3D"background:none!important">head</span> opinions from people who use th=
e SPDX generation, if there is a preference.</div><div><br></div><div>Kind =
regards,</div><div>Marta<br></div></div></div>

--00000000000016ce6306188d292d--

