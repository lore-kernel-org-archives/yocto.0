Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web12.8226.1602149449827893607
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 02:30:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gPPVc1VE;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: idadelm@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id c22so7145612ejx.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Oct 2020 02:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5GXOm4AaaEm0YZTDmvHB3ygnrVPxv1MvCHFER7U0oMQ=;
        b=gPPVc1VEMaWaHO3twq8xl5eb1gXaGo9JTqljPsEAV3o1TxSbz624u21WUJ1IyT2Uvd
         cpYdXL8zY0KceipFiBwD4GM1WVpyDSoMyEUU1D1NYdY9Ee+bSjomBgmlKTjYxzZjwM4e
         3Ul/5Cbv8be93GrGDJ3NL5wqJboVRZBkW4OIAp6UzYIuICFoqyQJexYBdEWKealrf3rP
         0uTP5Szm5Jl4na5MzvAXVyiMUvPJ9l5oHHNF98cNbPQpQqzkBQw1neRT+vHz6HEgd1es
         2INq6PyOOstPCmb27+hMo6YJ/wDkcpCftPx4UBpFAoIZ12e7BvdyGYj8389yk/+v20qb
         keJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5GXOm4AaaEm0YZTDmvHB3ygnrVPxv1MvCHFER7U0oMQ=;
        b=GSvDyY8Qo/HFHcIsnx5ZcTYkGCvWU1C5wbf5/NGl2Ka989Q34y344SRNyrzmQEGLNd
         Y9Uww3tq9iU9QtH9SxcSGacSXL/V6gdcVUSYmGH+4p8zjB37U6Or4Y1DvbenX93ex3TV
         sXMlJfxndDyzGb1OfZr4sfeFYXPiYdkF40AIoyuCQ2nj16AgLKav7M5iBpkS3nHs3jam
         j3yijfgRfaqihkpNFKPPnakqkwD6SmFVDTAV9VGA47o85IJErGgotZk7S0+vbMsXe932
         blG3ATdpF8qyrUmMFx6tbxBYEXJ6sIls6ZUkfPOsLCoAsNvCEAj3a93HGBmzDcNrDFq4
         Spbw==
X-Gm-Message-State: AOAM532vgx9WCe/RUlkIh/h/UMCPhoWts7zgQ1woQNFFIHPDyC9DXtLM
	75NukjI+BKngMamrV5znHUxWiNYlMikQeYYODXc=
X-Google-Smtp-Source: ABdhPJwQdF7JHSr8PCgoG5Nq5F8OMcMsynruIMMKCZpJ07QBLfmvinGtH7sa3yMfU2e/Zl0tnw5LYoHJpfnoqIG600U=
X-Received: by 2002:a17:906:1955:: with SMTP id b21mr8057931eje.42.1602149448161;
 Thu, 08 Oct 2020 02:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <aCvF.1602139866465607883.3w6m@lists.yoctoproject.org> <CAM9ZRVvVNPq9AkN3JxLOMQ50rf1UPSFnR-10yFBHV4Z2nAmVEg@mail.gmail.com>
In-Reply-To: <CAM9ZRVvVNPq9AkN3JxLOMQ50rf1UPSFnR-10yFBHV4Z2nAmVEg@mail.gmail.com>
From: idadelm@gmail.com
Date: Thu, 8 Oct 2020 10:30:36 +0100
Message-ID: <CAN7sTgsXK5zMbd+nBSvScXiDDpM=rJ3-AwxATPxbOLNCekX2ag@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFt5b2N0b10gQnVnemlsbGEg4oCTIEJ1ZyAxMzUyOSAjeW9jdG8=?=
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bc1c8305b1257cc5"

--000000000000bc1c8305b1257cc5
Content-Type: text/plain; charset="UTF-8"

Thank you, I will do that.

On Thu, Oct 8, 2020 at 10:11 AM Paul Barker <pbarker@konsulko.com> wrote:

> On Thu, 8 Oct 2020 at 07:51, <idadelm@gmail.com> wrote:
> >
> > Hey everybody, I introduced myself yesterday being new to the Yocto
> project and also hoping to become an outreachy intern for this project. I
> came across the Bugzilla link and chose a bug I wish to fix. What I am to
> do is "add SPDX headers to all source files of the prelink-cross
> repository". I already cloned the repo and started working on it. What I
> did in all the .c and .h source files was remove the license text at the
> top of the files and place only the SPDX license identifiers which is
> commented out. I'm about committing my changes and I hope I am doing things
> right.
> >
> > Thanks you all for the support.
>
> This sounds like a helpful contribution.
>
> To submit this please follow the guidelines in
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded.
> You should also check the README in the repository you're making
> changes to for additional contribution instructions.
>
> If you have any questions or difficulties please reach out via IRC or
> email and we'll be happy to help.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--000000000000bc1c8305b1257cc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, I will do that.=C2=A0<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8, 2020 =
at 10:11 AM Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbarker=
@konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On Thu, 8 Oct 2020 at 07:51, &lt;<a href=3D"mailto:idadelm@gma=
il.com" target=3D"_blank">idadelm@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hey everybody, I introduced myself yesterday being new to the Yocto pr=
oject and also hoping to become an outreachy intern for this project. I cam=
e across the Bugzilla link and chose a bug I wish to fix. What I am to do i=
s &quot;add SPDX headers to all source files of the prelink-cross repositor=
y&quot;. I already cloned the repo and started working on it. What I did in=
 all the .c and .h source files was remove the license text at the top of t=
he files and place only the SPDX license identifiers which is commented out=
. I&#39;m about committing my changes and I hope I am doing things right.<b=
r>
&gt;<br>
&gt; Thanks you all for the support.<br>
<br>
This sounds like a helpful contribution.<br>
<br>
To submit this please follow the guidelines in<br>
<a href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenE=
mbedded" rel=3D"noreferrer" target=3D"_blank">https://www.openembedded.org/=
wiki/How_to_submit_a_patch_to_OpenEmbedded</a>.<br>
You should also check the README in the repository you&#39;re making<br>
changes to for additional contribution instructions.<br>
<br>
If you have any questions or difficulties please reach out via IRC or<br>
email and we&#39;ll be happy to help.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--000000000000bc1c8305b1257cc5--
