Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88016CD37BE
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 17:36:43 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.56499.1778520995624186508
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 10:36:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=HAXkosXZ;
 spf=pass (domain: konsulko.com, ip: 209.85.128.180, mailfrom: tim.orling@konsulko.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7bd6f65c781so40983037b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 10:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778520995; cv=none;
        d=google.com; s=arc-20240605;
        b=CFh0aMz+yMxiKsMd58VrwfUU0xXOel32hKAbcMguHVP/qAZyvqZbixoN80SonAZ41i
         KreLiCRrr7eZcLGDL8TsPW2ytiMlhd1QF78aDlu9jNXv4l3grev0oPXFOwSH3lSImLTJ
         /b9+tQFm/hBZtKV2JQh7jyDvoIvyMfn7XuwUM4s/GDCpJWLzkBotzPyUGylgROh0yhDk
         lqZMDttj8xuuQKLxNzSaW6jGvodf9fLm3eJLuVAs3V2qlXXfVIzdBSdMM4L1R41WUEUp
         YbRrTqLzZWU5USQRgcRUi4DqxEEwQ2uRyiIPZcvGfCQiCak2s5CaNRMdJ2ojJft3egSI
         8u9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p+aXM3wUy2VlufaonbLEjbWnU2PAkqFPpNj7/qxHjtA=;
        fh=SIlDMVvqnvQWDwigPOzAu3J27S0gxLUXZACVDhHQ6fk=;
        b=W00RQfg+5oyKLf+XsWR7mH6sznKy0guVK5oHS3pJJX76VNuQOaBgdZiWaHrPdqfgZe
         7lOgooH8bYGknu2Y2ksqfctkfXNbAfDxGeCSgl7VVU2RQG/k6rNDIaX6yJ5HloESYISJ
         KKKr/7smTvejDquvIoatH2RwmSzfYsYNxajGx0J6CG3KJwmi2gWYSCD/5wafBhOWTlBG
         HAiBzjwNVpYxvBiz9w4VPHhiaAb36ob//tbwvonIvo0ietDA3GR5aNMlKHlzv2Zuuqpk
         ZkYpcE1a5F24IfIku5tvcx9bmsv9r/L9pL34hmgvk2p3fVtKmpSzhQPOXdYchCVmmzol
         uYfw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778520995; x=1779125795; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p+aXM3wUy2VlufaonbLEjbWnU2PAkqFPpNj7/qxHjtA=;
        b=HAXkosXZ1joUpa55013Tzq3Sc3F3Q716coPGRCAj7D3my1Tru6e6EMibVuusy+X0xi
         2KIbbYoZ8UGJzQtmBNOi7BngJiZ8xtlyUX52mfQXocsMBhYBEj43H8uE8nLmva3F+hnl
         xjUiNbrtLlgfg4hfCf0mdjqwMoxOBM9/wh2cE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778520995; x=1779125795;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+aXM3wUy2VlufaonbLEjbWnU2PAkqFPpNj7/qxHjtA=;
        b=QRbjKtgak4cbyRNiK7rVB3u5+fD8KggGs7FZ0uURzHBjSv/DlxNOOovHkmXOv2dbV6
         cwzcumdGUawifjeIPx+XPCUxSFYPUIJoV12mjHGjQeL/C9F9mkYn4bZP0990umiQ4cmI
         TNHWXQfqwMOyrtl7Z7j9GBNwGWWBPTk0CGVnDH8sDhqNr104ijSuNef/Tx5CLPwDrv72
         rwP+1QPL+FQStBNn+U6dxT8HhIUsCszu5id/U/428lTiqtgbXcLR9OSPisKj66WFLQQe
         h0ZPnr4JhBvMtGoD9qV073550irhWB8Maj2ZprhPHVE1z93GYgoypPtPlrMat6KAeCPK
         JR6Q==
X-Forwarded-Encrypted: i=1; AFNElJ8aooNNSdaBo9uNkm2dOLRh/Tf+oByg3fmfubawi1Tpp9KSxsa/Lf3hFJkCUsG4B22DsZZAFw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyVQme5L/R9sB76dHjdsR8qqX3GWJiMD3yLPyNuM8VZrIZe4zZa
	UpVp14e+A6i6ASlYIzmjY1pDNpoA4GN0np2g/FDb0rHRe3Kz+T4VueYrET1sBHNnqjsZa13/PdI
	M1qfRLI1WLbmD9MNzHWI9hFMRVC80BkYs13qC63Mkeg==
X-Gm-Gg: Acq92OHcyO1Ipf7uglAh5WtqzoU6SsQ+aukTl71ekUm4iIeoi5ffJnBHhlHSipRKVVT
	e1PCVj3NOmucibGl9HNMX4nGzEZrP54BkdTNZyvy4apnk1yo+MedYn9CGPVSgeJDx3CJBCfu9FM
	Z2WuXERm1vpfxoMFY8JLOmqy22rW7Escu3xCpU20oIH+XPwq5HhV5QZkg+NMP5RGrP3lY2o0Nl4
	sG5M+n8jRUEEU+8KZHCLDp3VkjgupN+EpEM/bVHTBZROSPRx0P7EP5RhLK80CGdb9M+vAzV1LXD
	WESGCYtx6vAK7OiLKA==
X-Received: by 2002:a05:690c:3:b0:7b2:bf20:cdc9 with SMTP id
 00721157ae682-7c50e421dd6mr5143977b3.7.1778520994535; Mon, 11 May 2026
 10:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1778202125.git.tim.orling@konsulko.com> <1c444ecb2272a384e77a786f7ca32767f791ce34.1778202125.git.tim.orling@konsulko.com>
 <dcfc99d7b81e1083ef3607adde6055f4a81d3534.camel@pbarker.dev>
In-Reply-To: <dcfc99d7b81e1083ef3607adde6055f4a81d3534.camel@pbarker.dev>
From: Tim Orling <tim.orling@konsulko.com>
Date: Mon, 11 May 2026 10:36:23 -0700
X-Gm-Features: AVHnY4Ixdb0_j5INGt40jZ_HnpQa79pnh908KOL3MQ7O_LUYruEmTam9ijDt3OU
Message-ID: <CAOyo-86bcAxxBy8bDi+dJmqnxUqbGaYhr-OXuAob0pvk9N-T4Q@mail.gmail.com>
Subject: Re: [yocto-autobuilder-helper][PATCH 07/11] config.json: add
 'containers-' build jobs
To: Paul Barker <paul@pbarker.dev>
Cc: yocto-patches@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001aeacc06518e30d5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 17:36:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66525

--0000000000001aeacc06518e30d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 1:52=E2=80=AFAM Paul Barker <paul@pbarker.dev> wrot=
e:

> On Thu, 2026-05-07 at 18:25 -0700, tim.orling@konsulko.com wrote:
> > From: Tim Orling <tim.orling@konsulko.com>
> >
> > Add 'containers-' build jobs that build container images on top
> > of the vcontainer-tarball SDK:
> >
> >   * containers-meta-virt: the original app-container-* images that
> >     ship in meta-virtualization itself (e.g. app-container-curl).
> >   * containers-library: a layer for additional images modelled
> >     after docker.io/library/*, sourced from meta-yocto-containers-demo
>
> I think we should combine these into one build job.
>

For now, that is impractical unless we use a branch of meta-virt that I can
control (because the container recipes are in flux). Or I would have to
continue running builds with a custom yocto-autobuilder-helper and a custom
meta-virt branch which defeats the purpose of pushing the containers to the
official registry.yocto.io and quay.io/yocto.

Let me put it another way: the container recipes in meta-virt are a simpler
demonstration. The container recipes in meta-yocto-containers-demo are
heading towards being fully signed/attested and hardened. So to me it made
sense to keep the jobs separate.


>
> What's the plan for meta-yocto-containers-demo? Should we host that on
> git.yoctoproject.org, or will the contents eventually be merged into
> meta-virtualization?
>

I haven't discussed this with Bruce, but I think it makes sense to have the
official list in meta-virtualization, when they are ready. The other main
reason for the meta-yocto-container-demo layer is for things like the
slsa-provenance.bbclass before submitting that to oe-core.


> Best regards,
>
> --
> Paul Barker
>
>

--0000000000001aeacc06518e30d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11,=
 2026 at 1:52=E2=80=AFAM Paul Barker &lt;<a href=3D"mailto:paul@pbarker.dev=
">paul@pbarker.dev</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Thu, 2026-05-07 at 18:25 -0700, <a href=3D"mailto:tim.=
orling@konsulko.com" target=3D"_blank">tim.orling@konsulko.com</a> wrote:<b=
r>
&gt; From: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=
=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
&gt; <br>
&gt; Add &#39;containers-&#39; build jobs that build container images on to=
p<br>
&gt; of the vcontainer-tarball SDK:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0* containers-meta-virt: the original app-container-* image=
s that<br>
&gt;=C2=A0 =C2=A0 =C2=A0ship in meta-virtualization itself (e.g. app-contai=
ner-curl).<br>
&gt;=C2=A0 =C2=A0* containers-library: a layer for additional images modell=
ed<br>
&gt;=C2=A0 =C2=A0 =C2=A0after <a href=3D"http://docker.io/library/*" rel=3D=
"noreferrer" target=3D"_blank">docker.io/library/*</a>, sourced from meta-y=
octo-containers-demo<br>
<br>
I think we should combine these into one build job.<br></blockquote><div><b=
r></div><div>For now, that is impractical unless we use a branch of meta-vi=
rt that I can control (because the container recipes are in flux). Or I wou=
ld have to continue running builds with a custom yocto-autobuilder-helper a=
nd a custom meta-virt branch which defeats the purpose of pushing the conta=
iners to the official <a href=3D"http://registry.yocto.io">registry.yocto.i=
o</a> and <a href=3D"http://quay.io/yocto">quay.io/yocto</a>.</div><div><br=
></div><div>Let me put it another way: the container recipes in meta-virt a=
re a simpler demonstration. The container recipes in meta-yocto-containers-=
demo are heading towards being fully signed/attested and hardened. So to me=
 it made sense to keep the jobs separate.</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
<br>
What&#39;s the plan for meta-yocto-containers-demo? Should we host that on<=
br>
<a href=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank=
">git.yoctoproject.org</a>, or will the contents eventually be merged into<=
br>
meta-virtualization?<br></blockquote><div><br></div><div>I haven&#39;t disc=
ussed this with Bruce, but I think it makes sense to have the official list=
 in meta-virtualization, when they are ready. The other main reason for the=
 meta-yocto-container-demo layer is for things like the slsa-provenance.bbc=
lass before submitting that to oe-core.</div><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
<br>
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
</blockquote></div></div>

--0000000000001aeacc06518e30d5--

