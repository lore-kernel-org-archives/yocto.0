Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web11.3592.1628128905168957071
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 19:01:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWy4I+QP;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id h1so4786725iol.9
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 19:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6WgS4wlnvLFl/UNl8J5yccw7+klSqz1zkpZsAH7YVGM=;
        b=GWy4I+QPp/7rwCXB4+HC3GGg0FHI2CBjQqU9WGQpcR903EGbP0sgT/+N7u7KYj9l80
         I8I2YyDD+E60rzqQImUcoV2i0wDYVuFj2IgemFBeWTJK1FHKBo5StHkaCOyfIXyBTHjD
         MNevKRef1cyDBKjgtx2cOg8tJUKj2hlrGo5PsxkpvYZmqaOoNOWnCptn2A1883KAgpye
         1p1lEHPiXxdva4wZNy7SP25LZmZCtUzVATWpPxagj3zBIds+l6z0MglQ1dsNPM9vJ/b9
         /HfwnxbgDXNDbe3Rqx50WExp/N/f7zaMe3f9neRYsLm1RIQ+rJMEQ9XXnvgV1iLiNPnE
         E5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6WgS4wlnvLFl/UNl8J5yccw7+klSqz1zkpZsAH7YVGM=;
        b=FSAT/qk3zxiaONUFQ29hWCcJfJ/C4Si4uvIZ19KeWya/xPNIufoKVziQfrGX4HkHfm
         HkteUWS+lnd/v8hcVSN1diCL6z1bLyBvLVPJ7IynPPcgvXEO74+6EFyF+rWAw944pOAd
         DATeAVenXsq31/24NBIe9fRJRlnO0965SoQ35fqWqVDgbworypoSEFbSBfOcOKW+pkh6
         xBNC2sT1GjUEDq7gfHOfJH9b2zWu4SZtGX1qIlR4UyI7djGK/jtxlU0o/DjcsLmfA7Bz
         mkdhcL4xCm8cBFxe1AeGpv8OywmSPgj4ReCV2IHIRqQVdMGb2R5UFBcs4k9e+6uCtq6i
         9OGg==
X-Gm-Message-State: AOAM533llSKwUhTsCGopbhTVFvheTqq4hMrv5aSgjs51ta3z9t5s7g4+
	nznlU8FbWPFt8893KWBFHvKPEIBxL6WwPuUW8kDVVpyA
X-Google-Smtp-Source: ABdhPJxsmf+4XBO4EXDO08kpIk8yQSZqFvf539K5UrCXiJqg2fm1w5d6IHlcdR2mhr7bgtKc0dYsKrTdKE0RsyMJj78=
X-Received: by 2002:a05:6602:2057:: with SMTP id z23mr924813iod.29.1628128904421;
 Wed, 04 Aug 2021 19:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210804174953.12346-1-twoerner@gmail.com>
In-Reply-To: <20210804174953.12346-1-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Wed, 4 Aug 2021 22:01:33 -0400
Message-ID: <CAHUNapSjdqgGJicCG5-HV44BOD66CpkRf7ngUErmJDwYzGWmuQ@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 1/2] layer.conf: update layer compatibility for honister
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ff244105c8c64ce9"

--000000000000ff244105c8c64ce9
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 4, 2021 at 1:50 PM Trevor Woerner <twoerner@gmail.com> wrote:

> Add honister, remove hardknott.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

applied to meta-rockchip, master

--000000000000ff244105c8c64ce9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Aug 4, 2021 at 1:50 PM Trevor Woe=
rner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Add honister, remove hardknott.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br></blockquote><div><b=
r></div><div>applied to meta-rockchip, master=C2=A0</div></div></div>

--000000000000ff244105c8c64ce9--
