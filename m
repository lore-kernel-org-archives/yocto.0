Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1402CC27C40
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 21:31:29 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.303.1692826283919072781
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 14:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=hPayeWWY;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2bbad32bc79so101613641fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 14:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692826282; x=1693431082;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8ZxyzEPDFNWPMGyORSOv/HdSBv7o9MkOtis6GpkFoDA=;
        b=hPayeWWYbV9BiFW7RlRQOiPGuhXsuZpaqfBtnQT0CvNn3AM839ewK8LijqQlX2hf6K
         DeZxHelGzgDk7MiDku/uMzQxe8jZkwlageV3afi8IVX8iYAd4o770jy+/yFY/9HOl1so
         ZMBEJSKzLYQtfbtNyp6Qny3NvYtQUkE1GGOJMdNUj5IJDqT5tCvuz4aLC+8ocwx9StJu
         fVgV9wO3GSkLYP1YLlWxKXj01C/nGuvhcQTyz4mcUS3xFMpWtQe10p9kT7jt8alpvkEA
         D9jUKGVP27JyanajSdU4tf3k0XntCrXgL6LZvy2KMu7WurdGqWrZeJBpDajOS4vXJpON
         UnSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692826282; x=1693431082;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ZxyzEPDFNWPMGyORSOv/HdSBv7o9MkOtis6GpkFoDA=;
        b=bngGRTXGtgadD+s4RMs8FpmB+WjdBk4rVSe3LlVeDgGF6O7cgoZ81CPMJZEKmV4JaV
         SI47CNhcU5iCY/pHpntltaKbL6IJmHk57Qx9V22pAmTESfurAAyQ/HN9egj31zIGuNqF
         r8nu2UapLa+IxVtlI4aZY7sCgwwlpwBitRCmPl4+zYBUZfjVKYyrhz4YO5kpPX6K0o4B
         mh5bPzA1oc5GdLRgTsguOXKN1we0dWC/4JzEqxiI0I4dmlsp4pQfCx3wLrQ3wGxnPdts
         STWR+Ylj4QjJd4WYJhFNIbHYi0jKB5VH5PHKvQJsxlXnD9K6sisxXOcGwq8GRSFfZClN
         vVqg==
X-Gm-Message-State: AOJu0YyCBxBP78VqT1CZ5KLWhykp/R9fGhr+X5E6Vb17f4pAVVeINcdG
	iqi0YNzPow78wXYsnodduUbVPJW01UysCtCynV+qGja3gFmLXQ==
X-Google-Smtp-Source: AGHT+IEPQvlOIU47sEGw73tF623LHz1tO51EUAA2SCeDGqzSPBi1Y5i1aeb+9O0Umm0f4x2lzaQ0we+WrDQ57lxyaHw=
X-Received: by 2002:a2e:960f:0:b0:2bc:dfc0:1afc with SMTP id
 v15-20020a2e960f000000b002bcdfc01afcmr1711332ljh.10.1692826281239; Wed, 23
 Aug 2023 14:31:21 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 23 Aug 2023 23:31:10 +0200
Message-ID: <CAAfyv34+oTQaT=9-QGkTdCFSJaC6CS=RB6SF=FQrOUssntoBSA@mail.gmail.com>
Subject: [meta-virtualization] nerdctl broken in kirkstone
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028eb5c06039dd538"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 21:31:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60868

--00000000000028eb5c06039dd538
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add nerdctl to an image using kirkstone release for
meta-virtualization.
I've added bbappend with following fix:

SRC_URI = "git://
github.com/containerd/nerdctl.git;name=nerdcli;branch=main;protocol=https"

(branch name in original recipe is master but main is required)

but then anyways it fails with:

rsync: [sender] change_dir
"/data/projects/test/build/tmp/work/cortexa53-crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/vendor.fetch/
github.com/Masterminds/semver/v3" failed: No such file or directory (2)
| rsync error: some files/attrs were not transferred (see previous errors)
(code 23) at main.c(1327) [sender=3.2.5]

And in ${BP} I cannot see any of those vendor stuff which should be
present. Is there some fix for that already pending or it's known issue?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000028eb5c06039dd538
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to add nerdctl=C2=A0=
to an image using kirkstone release=C2=A0for meta-virtualization.</div><div=
>I&#39;ve added bbappend with following fix:</div><div><br></div><div>SRC_U=
RI =3D &quot;git://<a href=3D"http://github.com/containerd/nerdctl.git;name=
=3Dnerdcli;branch=3Dmain;protocol=3Dhttps">github.com/containerd/nerdctl.gi=
t;name=3Dnerdcli;branch=3Dmain;protocol=3Dhttps</a>&quot;<br></div><div><br=
></div><div>(branch name in original recipe is master but main is required)=
</div><div><br></div><div>but then anyways it fails with:</div><div><br></d=
iv><div>rsync: [sender] change_dir &quot;/data/projects/test/build/tmp/work=
/cortexa53-crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/=
vendor.fetch/<a href=3D"http://github.com/Masterminds/semver/v3">github.com=
/Masterminds/semver/v3</a>&quot; failed: No such file or directory (2)<br>|=
 rsync error: some files/attrs were not transferred (see previous errors) (=
code 23) at main.c(1327) [sender=3D3.2.5]<br></div><div><br></div><div>And =
in ${BP} I cannot see any of those vendor stuff which should be present. Is=
 there some fix for that already pending or it&#39;s known issue?</div><div=
><br></div><div>Thanks=C2=A0and BR,</div><div><br></div><div>marek</div><di=
v><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">as=
 simple and primitive as possible<br>--------------------------------------=
-----------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ru=
ska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<b=
r>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-=
nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div></div>

--00000000000028eb5c06039dd538--

