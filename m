Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.709.1624922943743038210
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 16:29:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J48WeF3R;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id h3so5248442qto.4
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 16:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=B2kR0KYNnGbc5sIAkAMHmtT4oVIq02Wr1jjpjWEEjWQ=;
        b=J48WeF3RQ6elKdNnAuFUtRP8tJd+JQVopUtIMLStQS2iUiSxTLnoLNIMP0vZwUsDhX
         F2M2QGegCk+NHDYzDjab3tnXklSi3CujjLiInKDSghBxVC4wEJc5gU46GGs1Iu6g4KKY
         XF8yNp9cJlnJcodYFsbb5+ggGXcY/8JrV52iynTKMzlrog4GJ2HbbIq6YVhTEojOQGpN
         8b+EsQn+mR/E60+lCT5vNJLVls4A/EDIuNv9TXgak3BK0ShfW64sxOwHXhGFaW1yAz81
         Pyi5i/ay4TytI/9cdAzvjI1qRXyOvfS3qerlsMjZJVfvMsmRugre3tBLsDsxa1UwpBZk
         cxVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=B2kR0KYNnGbc5sIAkAMHmtT4oVIq02Wr1jjpjWEEjWQ=;
        b=XRiHN8lFxw9NTj10nhf6H6BRN7pSXsV3/pNToonnauUPkwLVZWDRiGBRv+H7SaxG89
         bKeTqPWxtm3DDwApLvg6deZDlksRUarvY70d8c+p3uItArNdRZ9NJnBw3IfPnibVn6EQ
         4bOACsHZjEQJeXeYraM7m0ypdONBZLDj/79U/eCJ+3mm2NLzRoBcunjvERjosbR9x+AG
         UYyzY3slpKstubxU5ridNk+JNf1rC6oqVTo7MDnHG3nm2QuBjhQnNq4l8HzCMFS8kkga
         8a2mnJQ0BxQQz6sRwXn4aun4d+tr/GD6DWavC7UlapQS8InRkCaof2FfE2m1gfrk8xo8
         rt9g==
X-Gm-Message-State: AOAM530aDViG07cFL1rqppzHDKLsGvhFFKb5NVrnByqzFE0kZVF8lc4p
	Pk6Kc9JDDdHoMq/4BdBeLfIKyFXYmb42XwvSDBGYevBAmfs=
X-Google-Smtp-Source: ABdhPJxsFrLnfQGkAATKQ6BvZ5Q/6wsCEeUMsw3byq7LL9fP6mEhBv2cg5GNXFEIHgEUbKhuS12D+5JlnvtwaV3U+s0=
X-Received: by 2002:ac8:6ec4:: with SMTP id f4mr23865445qtv.133.1624922942742;
 Mon, 28 Jun 2021 16:29:02 -0700 (PDT)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Tue, 29 Jun 2021 01:28:52 +0200
Message-ID: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
Subject: Would COMPATIBLE_IMAGE make sense?
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ca25df05c5dbdad7"

--000000000000ca25df05c5dbdad7
Content-Type: text/plain; charset="UTF-8"

I was thinking about my issue described here [1], and discovered the
variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which "you can use
to stop recipes from being built for machines (/hosts) with which the
recipes are not compatible". And so I wondered if it would make sense to
add COMPATIBLE_IMAGE, for a similar purpose.

Let me explain my issue: I define different images in different layers (say
`first-project-image` and `second-project-image`), and in each of those
layers I create `.bbappends` to configure some packages. Typically
`hostapd` is used by both images, but with a different config file.

The thing is that when I run `bitbake first-project-image`, because
`second-project-image` is part of my bblayers.conf, then the
hostapd_%.bbappend from `second-project-image` is used and may have an
impact on `first-project-image`, which I don't want. I really want this
bbappend to only affect the image `second-project-image`.

One way I can see to deal with that is to realize that
`first-project-image` and `second-project-image` are two different
projects, and build them from two different BUILDDIRs. The thing I don't
like here is that all the packages are therefore downloaded and built
twice, which seems like a loss of time and space.

That's where I thought about COMPATIBLE_IMAGE. In the hostapd_%.bbappend of
`first-project-image`, I would set "COMPATIBLE_IMAGE =
'first-project-image'", and similarly for "COMPATIBLE_IMAGE =
'second-project-image'". So that I could still share a BUILDDIR between
different projects.

How bad of an idea is that?

Thanks in advance,
Jonas

[1]: https://stackoverflow.com/questions/68167244/image-specific-layers

--000000000000ca25df05c5dbdad7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was thinking about my issue described here [1], and=
 discovered the variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, wh=
ich &quot;you can use to stop recipes from being built
                    for machines (/hosts) with which the recipes are not co=
mpatible&quot;. And so I wondered if it would make sense to add COMPATIBLE_=
IMAGE, for a similar purpose.</div><div><br></div><div>Let me explain my is=
sue: I define different images in different layers (say `first-project-imag=
e` and `second-project-image`), and in each of those layers I create `.bbap=
pends` to configure some packages. Typically `hostapd` is used by both imag=
es, but with a different config file.</div><div><br></div><div>The thing is=
 that when I run `bitbake first-project-image`, because `second-project-ima=
ge` is part of my bblayers.conf, then the hostapd_%.bbappend from `second-p=
roject-image` is used and may have an impact on `first-project-image`, whic=
h I don&#39;t want. I really want this bbappend to only affect the image `s=
econd-project-image`.<br></div><div><br></div><div>One way I can see to dea=
l with that is to realize that `first-project-image` and `second-project-im=
age` are two different projects, and build them from two different BUILDDIR=
s. The thing I don&#39;t like here is that all the packages are therefore d=
ownloaded and built twice, which seems like a loss of time and space.</div>=
<div><br></div><div>That&#39;s where I thought about COMPATIBLE_IMAGE. In t=
he hostapd_%.bbappend of `first-project-image`, I would set &quot;COMPATIBL=
E_IMAGE =3D &#39;first-project-image&#39;&quot;, and similarly for &quot;CO=
MPATIBLE_IMAGE =3D &#39;second-project-image&#39;&quot;. So that I could st=
ill share a BUILDDIR between different projects.</div><div><br></div><div>H=
ow bad of an idea is that?</div><div><br></div><div>Thanks in advance,</div=
><div>Jonas<br></div><div><br></div><div>[1]: <a href=3D"https://stackoverf=
low.com/questions/68167244/image-specific-layers">https://stackoverflow.com=
/questions/68167244/image-specific-layers</a></div></div>

--000000000000ca25df05c5dbdad7--
