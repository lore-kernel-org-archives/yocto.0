Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F54CD4840
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 17:52:33 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.56610.1778521947924739519
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 10:52:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=D+FYy52/;
 spf=pass (domain: konsulko.com, ip: 209.85.128.180, mailfrom: tim.orling@konsulko.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7bf0b47d2f1so42185757b3.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 10:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778521947; cv=none;
        d=google.com; s=arc-20240605;
        b=BDZSFffGemyT1R3hpRgGmMsNxrO4uHxtpZP29ic3zdgVlZ2YPjv49AjzX5g9swp0h2
         0ghecDXDyctSzNycY98/tzk2eXNhQ2Utww6dCsldh+9ffrnoGAENSJFHkJSUTFiCebu2
         Z8GtNoO0SMxpz24NkEJCIRfXR9QXOIZo7eanjdnKJzKNIk58r737B/JmvcNNfe7GIoWX
         uf5+vxnDEXF1uiXKYjfHLczVCpe4Fl751JlKv+nHsBrOpM52rPmV8vI/7G5PzlE3BfMf
         +IXYljuxTRRhOYTSLx/W8jvyqSyAZudXbdHyqVnteDdaWjB2w0apu5ffODJJCiWMC2Ow
         B8KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bx33Bj7f66nT3WPaweKwHiBbOasYna7kwQR+CuW9sb0=;
        fh=JSg2Q3wGm8WD6u461qMkRJvPE85UrrRamECf/Xa9URA=;
        b=EV26jxpx7fPXXVVaJ6HM2ZtO5BTA+HO+yY/M4vWCMwYwW68jbARSWEO7kJuAXgcK4C
         TwWUxj46DMQB9ZhK5vgeDKnurlDN3rgL1AjjaSQs+TXM/5RfYhmQYMSQjaHZ5xY3Gx9m
         QBu3Mx+bKm5zHT79vPVVH4M7nUxOgRtXyC4Ui43kZ0v0VhqSGoMKXCTrfwl+0rh6z4X8
         j5h5W6S5NWpo2+7nRkmdHEzCPiCZj/kipUe1G/Pbq6FeTStshezaQ4bO6+peDF4YLpUl
         3wX/57P3W6N0yAGavRdCGqO3RbGKlSJWqjalCi15UDisSDK4d1Iqy/Pem/M9NkMwVKAr
         J2Ew==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778521947; x=1779126747; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bx33Bj7f66nT3WPaweKwHiBbOasYna7kwQR+CuW9sb0=;
        b=D+FYy52/3rWoFXnBbnPgBvz0pSyXPAcihIMXcsoE2+18++MW9llxU/540s7oyly5YH
         UU8vSokSYlDV7/ZsbaCUUrqJqaE2RaHdJ7Qf6HlTQceWWbwZ/jgtOPVBhQJIXxGLo1Ed
         mkDccpFDi7aAQ4XVHmo4w3VeEXaHn17SUJZzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778521947; x=1779126747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bx33Bj7f66nT3WPaweKwHiBbOasYna7kwQR+CuW9sb0=;
        b=DPgerhKvSUCY6EUnfXIcYMqU++t3ZhTEpOlI3YhqbEEEZrkYac2/EOVWzzfYEnT7WN
         58b66HwF4FjwYZGbuk9jiExxDox5o8DTjcEFwCOLPOt+WpsFtnlUabt0eUYijGSmT+n7
         b792rQCM7Sgn++4/JFzFDIOtlD6MTyNoNaHRQgq+9Zo13TbmjC889XqQXMqGjf2i5a4X
         9NT4kGF3YoFGnaQfvCK3qxiG9vYAZ3sRasNh83vI1XqWp13JS3Pga1QZyd+ZVg56NLfI
         pqNZGfHLnoscKU+FGm5OEjx0yuH2JZe5SxlBVEptp3k0mUxKVk/sk3ieJw+ZUw/SGWj3
         QYPA==
X-Forwarded-Encrypted: i=1; AFNElJ+yof8nNkzy68/EFW85s2aMnfaYOU+nsdJJQC4VZGxF0/2RgBqD+QHYAaHURbCEfYY0AeA6Yg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwUyDfWA96/oH/HLKggcnPnyxlc9w4TfUaR+bvcSE2MZFMuFNsq
	J7BesXQbzmvFmC2EhIsV/3bVNU+zeiGdK8KzcbgNiSECQr+EtxlTUsPgWKqHYrvlAZxyorBBx8i
	t/OiilWZfAJWuyDVKjp+zbv4sqZUOk8vqdtGd0K0mOcSA0SIrNLWMN60=
X-Gm-Gg: Acq92OH9ieXb+hSJuH6jpaVEtxvqsR27MQKu/nxUj9Mn+hZQPNYIw8qSlYmFhZ6F3om
	bWZxjzAwqQ4j9ZV/0FTcR/X0XJ2vTFPG0OfcQXtuIAnJQifnkt5012TRmfNLxBRsbHySRwbrDKD
	tF0ZNYwcHaLrj768DrTLSbz0s/jjKy0cYDSajymWhdho0VHZp6HgcfU7df5imn8cuTQGkvvpPz1
	iMnSqGTick0z3oKSAC+HbSK0/lYrpvFLYPJv2phMQFPVK23m4Wt875FT3VsFMwU6qWn0uG/yHoX
	leRUk6A=
X-Received: by 2002:a05:690c:c4f1:b0:7bd:7b2e:f079 with SMTP id
 00721157ae682-7bfba3893c3mr147034737b3.44.1778521947017; Mon, 11 May 2026
 10:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1778202125.git.tim.orling@konsulko.com> <fedb9a114f294f1d1dc80d1df086a41e3419b490.1778202125.git.tim.orling@konsulko.com>
 <5a9794c0ec3ebf9340f7b8d062db48822a5821f2.camel@pbarker.dev>
In-Reply-To: <5a9794c0ec3ebf9340f7b8d062db48822a5821f2.camel@pbarker.dev>
From: Tim Orling <tim.orling@konsulko.com>
Date: Mon, 11 May 2026 10:52:16 -0700
X-Gm-Features: AVHnY4Ly-HsKTcYokduQiINzzYJ41upFFLWCrEBXVUY170AI678X8ToJOas27LE
Message-ID: <CAOyo-87A4t+VFHg3iwOf7pk0W7et4YZJ-=1O8CqM72xc7iTNBg@mail.gmail.com>
Subject: Re: [yocto-autobuilder-helper][PATCH 09/11] config.json: add
 vcontainer-tests, vdkr-tests, vpdmn-tests jobs
To: Paul Barker <paul@pbarker.dev>
Cc: yocto-patches@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e0af1006518e687b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 17:52:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66527

--000000000000e0af1006518e687b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 1:57=E2=80=AFAM Paul Barker <paul@pbarker.dev> wrot=
e:

> On Thu, 2026-05-07 at 18:25 -0700, tim.orling@konsulko.com wrote:
> > From: Tim Orling <tim.orling@konsulko.com>
> >
> > Add three pytest job overrides that run the meta-virtualization test
> > suites against the vcontainer standalone SDK published by the
> > vcontainer-tarball builder.
>
> I think this would be better as one job with three steps.
>
>
I considered that. No strong arguments either way.


> >
> > Each job runs the new scripts/run-vcontainer-tests helper via
> > EXTRACMDS (we need BUILDDIR variable so EXTRAPLAINCMDS is not
> > sufficient) with both NOBUILDTOOLS and NOVCONTAINER set, so the
> > workers don't spend time setting up either tarball: the test runner
> > gets the published SDK installer through VCONTAINER_SDK and manages
> > its own pytest venv.
> >
> > vcontainer-tests covers the broader bbclass/tooling tests (and so
> > brings in meta-openembedded layers it transitively exercises);
> > vdkr-tests and vpdmn-tests cover their respective CLI harnesses.
> >
> > AI-Generated: Claude Cowork Opus 4.7
> > Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> > ---
> >  config.json                  | 42 +++++++++++++++++++++++++++++++++++-
> >  scripts/run-vcontainer-tests |  7 +++---
> >  2 files changed, 44 insertions(+), 5 deletions(-)
> >
> > diff --git a/config.json b/config.json
> > index 86c1ffb..dda5b12 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1891,7 +1891,7 @@
> >              },
> >              "step2" : {
> >                  "shortname" : "Publish vcontainer SDK for test reuse",
> > -                "EXTRAPLAINCMDS" : [
> > +                "EXTRACMDS" : [
>
> This fixup should be squashed into the earlier patch in this series that
> added this line.
>
>
Agreed. Oversight. I'll fix it in V2.


> [snip]
>
> > diff --git a/scripts/run-vcontainer-tests b/scripts/run-vcontainer-test=
s
> > index cbb5544..1394c7c 100755
> > --- a/scripts/run-vcontainer-tests
> > +++ b/scripts/run-vcontainer-tests
> > @@ -3,7 +3,7 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  #
> >  # Run meta-virtualization pytest test suites against the vcontainer
> > -# standalone SDK (vdkr/vpdmn) that was built by the previous bitbake
> > +# standalone SDK (vdkr/vpdmn) that was built in a previous bitbake
> >  # step.
> >  #
> >  # Arguments:
> > @@ -21,9 +21,8 @@
> >  #
> >  # The script is intentionally conservative: any pytest tests that
> cannot run
> >  # in the CI environment (those marked "slow", "network", "boot") are
> skipped
> > -# are skipped so that the autobuilder step completes without needing
> network
> > -# access. Those can be re-enabled by exporting META_VIRT_PYTEST_MARKER=
S
> > -# before invocation.
> > +# so that the autobuilder step completes without needing network
> access. Those
> > +# can be re-enabled by exporting META_VIRT_PYTEST_MARKERS before
> invocation.
> >  #
> >  # It is assumed that /dev/kvm is writable by the CI user running the
> tests,
> >  # since the performance is significantly faster with 'memres'.
>
> As above, these fixups need squashing into the patch that added
> run-vcontainer-tests.
>
>
Agreed. Oversight. I'll fix it in V2.



> Best regards,
>
> --
> Paul Barker
>
>

--000000000000e0af1006518e687b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11,=
 2026 at 1:57=E2=80=AFAM Paul Barker &lt;<a href=3D"mailto:paul@pbarker.dev=
">paul@pbarker.dev</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Thu, 2026-05-07 at 18:25 -0700, <a href=3D"mailto:tim.=
orling@konsulko.com" target=3D"_blank">tim.orling@konsulko.com</a> wrote:<b=
r>
&gt; From: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=
=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
&gt; <br>
&gt; Add three pytest job overrides that run the meta-virtualization test<b=
r>
&gt; suites against the vcontainer standalone SDK published by the<br>
&gt; vcontainer-tarball builder.<br>
<br>
I think this would be better as one job with three steps.<br>
<br></blockquote><div><br></div><div>I considered that. No strong arguments=
 either way.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
&gt; <br>
&gt; Each job runs the new scripts/run-vcontainer-tests helper via<br>
&gt; EXTRACMDS (we need BUILDDIR variable so EXTRAPLAINCMDS is not<br>
&gt; sufficient) with both NOBUILDTOOLS and NOVCONTAINER set, so the<br>
&gt; workers don&#39;t spend time setting up either tarball: the test runne=
r<br>
&gt; gets the published SDK installer through VCONTAINER_SDK and manages<br=
>
&gt; its own pytest venv.<br>
&gt; <br>
&gt; vcontainer-tests covers the broader bbclass/tooling tests (and so<br>
&gt; brings in meta-openembedded layers it transitively exercises);<br>
&gt; vdkr-tests and vpdmn-tests cover their respective CLI harnesses.<br>
&gt; <br>
&gt; AI-Generated: Claude Cowork Opus 4.7<br>
&gt; Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.co=
m" target=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 config.json=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 42 +++++++++++++++++++++++++++++++++++-<br>
&gt;=C2=A0 scripts/run-vcontainer-tests |=C2=A0 7 +++---<br>
&gt;=C2=A0 2 files changed, 44 insertions(+), 5 deletions(-)<br>
&gt; <br>
&gt; diff --git a/config.json b/config.json<br>
&gt; index 86c1ffb..dda5b12 100644<br>
&gt; --- a/config.json<br>
&gt; +++ b/config.json<br>
&gt; @@ -1891,7 +1891,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step2&quot; : {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;sh=
ortname&quot; : &quot;Publish vcontainer SDK for test reuse&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRAPL=
AINCMDS&quot; : [<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACM=
DS&quot; : [<br>
<br>
This fixup should be squashed into the earlier patch in this series that<br=
>
added this line.<br>
<br></blockquote><div><br></div><div>Agreed. Oversight. I&#39;ll fix it in =
V2.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
[snip]<br>
<br>
&gt; diff --git a/scripts/run-vcontainer-tests b/scripts/run-vcontainer-tes=
ts<br>
&gt; index cbb5544..1394c7c 100755<br>
&gt; --- a/scripts/run-vcontainer-tests<br>
&gt; +++ b/scripts/run-vcontainer-tests<br>
&gt; @@ -3,7 +3,7 @@<br>
&gt;=C2=A0 # SPDX-License-Identifier: GPL-2.0-only<br>
&gt;=C2=A0 #<br>
&gt;=C2=A0 # Run meta-virtualization pytest test suites against the vcontai=
ner<br>
&gt; -# standalone SDK (vdkr/vpdmn) that was built by the previous bitbake<=
br>
&gt; +# standalone SDK (vdkr/vpdmn) that was built in a previous bitbake<br=
>
&gt;=C2=A0 # step.<br>
&gt;=C2=A0 #<br>
&gt;=C2=A0 # Arguments:<br>
&gt; @@ -21,9 +21,8 @@<br>
&gt;=C2=A0 #<br>
&gt;=C2=A0 # The script is intentionally conservative: any pytest tests tha=
t cannot run<br>
&gt;=C2=A0 # in the CI environment (those marked &quot;slow&quot;, &quot;ne=
twork&quot;, &quot;boot&quot;) are skipped<br>
&gt; -# are skipped so that the autobuilder step completes without needing =
network<br>
&gt; -# access. Those can be re-enabled by exporting META_VIRT_PYTEST_MARKE=
RS<br>
&gt; -# before invocation.<br>
&gt; +# so that the autobuilder step completes without needing network acce=
ss. Those<br>
&gt; +# can be re-enabled by exporting META_VIRT_PYTEST_MARKERS before invo=
cation.<br>
&gt;=C2=A0 #<br>
&gt;=C2=A0 # It is assumed that /dev/kvm is writable by the CI user running=
 the tests,<br>
&gt;=C2=A0 # since the performance is significantly faster with &#39;memres=
&#39;.<br>
<br>
As above, these fixups need squashing into the patch that added<br>
run-vcontainer-tests.<br>
<br></blockquote><div><br></div><div>Agreed. Oversight. I&#39;ll fix it in =
V2.</div><br class=3D"gmail-Apple-interchange-newline"><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
</blockquote></div></div>

--000000000000e0af1006518e687b--

