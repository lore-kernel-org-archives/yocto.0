Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.2450.1599500144408342818
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623 header.b=2FrrRFZL;
 spf=none, err=SPF record not found (domain: bgdev.pl, ip: 209.85.166.196, mailfrom: brgl@bgdev.pl)
Received: by mail-il1-f196.google.com with SMTP id y2so13084550ilp.7
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 10:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Vj+YYJI/+A6FvSvzKuwC9aQbs/IQg07eV9GsHjr8xU=;
        b=2FrrRFZLmTqi9XhK/v5FUyM9J7qTk7seniaYq6CglNAgRG38KsZ2XZXvOULJ473pNa
         whdiHovp8dhhbvbVklbj6PnQ2qcw9SeCodnvNDxete1o8c9a9h7PInD3CTYVULVSbXMj
         CLf0YkL6fiY1fzjUu71MmtPOHgJM495U512glqG0Bw214JriZCEBl8/5TMCh38qTdDwq
         NyN4yl5O6a++BjWuhCJpVbusLvIOmBynyCJCl/bzJ0lUSFSpYzgqJfMOI5/Qm8b330gY
         SPjGmy4h0jpIcz2oosG9UfPRc5kbXPQ284gBlRs6kCS3QBHLvVHy92XiDLR26n9eN3Kj
         OG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Vj+YYJI/+A6FvSvzKuwC9aQbs/IQg07eV9GsHjr8xU=;
        b=CVoERrBpB9ID3v0b0IFxTfUrv8yoxIFq3bNj3SOjUFh9L+M4/1KY8oNbruAZcNEbNC
         N11cxWG20dBDDmzVJ4Q6/jBMzV/cy9Pr/9KVPzO5PE1vHzux5vYi4vTepO0rrscORY3k
         CtQVy63EI/S3Wms/4+nnHTzZoTlnLfb9WhqcdNKIBDeppC36Bd+CgAFtxPwZwaagZCDA
         wesyrshzBiGyMPlqmBtzQ3A7HpXqES+zqA6FQONe9heHe0NxHVtBEcLiBTeV5KmBXNjd
         JmogGfPvCSclaxjl4dNhTX3c/e17gzn3BAp4s8dFIHNIpjEIeM4mReasDEdkGFY+vL4W
         hziA==
X-Gm-Message-State: AOAM5322fp6jOiR7m/5aSr3zWqDFQSWdHroi8n51jzkF0NIP2556E3iw
	ssQTyHlQ6zhlhKf8DE3gATFUpGEpsjaC6M7ylAs0ZA==
X-Google-Smtp-Source: ABdhPJwK6XLwSSn3bX0frgxpyJBOgHiIJtnZsyWvnN/Ir4N2ImccgtoIyE+YKHDICxyXswkYL0hF9ZebPf/oE/nDwWA=
X-Received: by 2002:a92:189:: with SMTP id 131mr20455302ilb.40.1599500143731;
 Mon, 07 Sep 2020 10:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
From: "Bartosz Golaszewski" <brgl@bgdev.pl>
Date: Mon, 7 Sep 2020 19:35:32 +0200
Message-ID: <CAMRc=MdGea6ojUTnvF8tixff2aAkUMrN7ryWioAYV2==jjUXAA@mail.gmail.com>
Subject: Re: [meta-security][PATCH 0/6] Some small dm-verity improvements
To: Niko Mauno <niko.mauno@vaisala.com>
Cc: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 7, 2020 at 7:17 PM Niko Mauno <niko.mauno@vaisala.com> wrote:
>
> This set of patches addresses some small issues in dm-verity rootfs
> facility, which were observed while making use of dm-verity-img.bbclass
> to generate dm-verity rootfs images for real arm-based hardware. For
> purposes of establishing this changeset, the default 'qemux86-64'
> machine was used as a reference.
>
> During testing/development the following additional settings were
> defined in local.conf:
>
>   DM_VERITY_IMAGE = "core-image-minimal"
>   DM_VERITY_IMAGE_TYPE = "ext4"
>   IMAGE_CLASSES += "dm-verity-img"
>   INITRAMFS_IMAGE_BUNDLE = "1"
>   INITRAMFS_IMAGE = "dm-verity-image-initramfs"
>
> And the following command line was used to test the changes with qemu:
>
>   KERNEL=.../build/tmp/deploy/images/qemux86-64/bzImage-initramfs-qemux86-64.bin \
>     QB_NET=none \
>     runqemu \
>     nographic \
>     qemuparams="-nic none" \
>     qemux86-64 \
>     .../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-*.rootfs.ext4.verity
>
>
> Niko Mauno (6):
>   dm-verity-img.bbclass: Fix bashisms
>   dm-verity-img.bbclass: Reorder parse-time check
>   dm-verity-image-initramfs: Fix do_rootfs dependency
>   dm-verity-image-initramfs: Ensure verity hash sync
>   dm-verity-image-initramfs: Bind at do_image instead
>   linux-yocto(-dev): Add dm-verity fragment as needed
>
>  classes/dm-verity-img.bbclass                    | 12 ++++++------
>  recipes-core/images/dm-verity-image-initramfs.bb |  7 +++++--
>  recipes-kernel/linux/linux-yocto-dev.bbappend    |  1 +
>  recipes-kernel/linux/linux-yocto_5.%.bbappend    |  1 +
>  4 files changed, 13 insertions(+), 8 deletions(-)
>
> --
> 2.20.1
>

Hi Niko,

I saw these patches and had to double-check just to realize my
dm-verity patches actually got upstream to meta-security although I
explicitly stated in the cover letter that they don't work with
verified boot (which basically makes dm-verity useless).

It's funny you sent them now because I just started working on a
different approach that won't require the OE-core changes I posted a
while ago and which were never merged because they broke some unit
tests.

Niko: do your changes allow this to work with verified boot on BeagleBone Black?

Bartosz
