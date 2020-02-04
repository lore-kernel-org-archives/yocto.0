Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.5515.1580819163932967909
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 04:26:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+3u3Y7d;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id f8so19632688edv.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2020 04:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=138l6l3S+nQqVcIC73rUBScCaIbph1b9vPVqRdLRPOU=;
        b=g+3u3Y7djdcvOviSNsUTNQcCaN3MFFrVkEchYQlrzDFgzkFuFgVebodVMdgqWlUkXI
         FTl2RDHaRVM0f4C7SZ4t4sGGtfwbt5hpkmYBPi5U7Neaalnyt4mYWrAJ2H+5TbhIP8Wf
         8Xu3g0gGz+XuLGHR+x0PEDhZiI+2v6k7yprpmf7ZhjHQhbjfFegcsGW40BpqGTnR0ppm
         PioL0EfwyAwJoY7XamUPhM3dfHJX/mnUVbf+qLmu4ddPbVBr0secWZXybfWhtMJSVNdA
         zsxZUbtqSqBh+cMjQXuOLSbfYM4T7oWIy6fDlGLXoSp9COvkVzB7V90su+Lz9VjCKd4u
         1RwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=138l6l3S+nQqVcIC73rUBScCaIbph1b9vPVqRdLRPOU=;
        b=f6kJ6t3DvjyVXVBejvjCVGD9aqFIRGszIlmH53dHQuGJEHBeGcsSYzoCi7NAWzhuRd
         MnnH9CHpJLhaHYQ/Ku3jdShRp6z+opj7wSK6l3sOK0GAN6VDxCRGmKx4uOfXGCIPbCzv
         EbbZTJD+Sz1gOGiIwKyMMizCW47aQifJS0DntKsIvUkxcBqHhipZmsPo2OPQXlBFY4Ib
         hgsVvVJ20xKwmnbJ7bcF83ErLu3mP9MMHxeFF9kkV554olnWuEwZM6qVGiyiu8cKtEM/
         D/wxWGS1fAd2x3txfCA5Eo/HM3zIJS8sI+8tB5UEFqpj8Eh+VsTPAM3CRpOGH5Xp9C9B
         nZQw==
X-Gm-Message-State: APjAAAXVSXGsUfxsYBUTGujBKWEKvgo52tFd5ybNvgeimsh4/598nh1+
	/zXXIKKvOSXtZXaZrb+p8G6K735IBohMbbR+7bA=
X-Google-Smtp-Source: APXvYqzzBYUqSlTXdYpdZc1JGG4JDfyy2rjZxcNpvbxbGOiFuEdG9ml1yWCS1girW7EArJL8xDdcWQpIllg5HbVoEl0=
X-Received: by 2002:aa7:d9c2:: with SMTP id v2mr16939480eds.88.1580819162419;
 Tue, 04 Feb 2020 04:26:02 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
 <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
 <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com>
 <15F0304E147F53BD.2867@lists.yoctoproject.org> <CAAfyv37OF2uz5mhB21XJ+NB6_69VkA2huzovsP3NTjA3hjimoA@mail.gmail.com>
 <CAA=hcWR5WTx2yo7WebsZpVteMbxj4xVBri=vzMJ-9B5Yxfd_rA@mail.gmail.com>
In-Reply-To: <CAA=hcWR5WTx2yo7WebsZpVteMbxj4xVBri=vzMJ-9B5Yxfd_rA@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 4 Feb 2020 13:25:50 +0100
Message-ID: <CAAfyv36EzPny2bOUuFkpeAEpP5i2eDSod+4S+XeLpKNTH+Sc0A@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: JH <jupiter.hce@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 4, 2020 at 1:22 PM JH <jupiter.hce@gmail.com> wrote:
>
> On 2/4/20, Belisko Marek <marek.belisko@gmail.com> wrote:
> >> Well did you check build directory if it was really build (check
> >> .config)? Or better try to build as module and install kernel-modules
> >> and then you can modprobe it.
> > Looking at code did you supply kernel arguments for test module:
> > https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c#L42
>
> Hmm, tried:
>
> # modprobe mtd_nandbiterrs
> [  695.090585]
> [  695.092143] ==================================================
> [  695.098317] mtd_nandbiterrs: MTD device: 0
> [  695.114256] mtd_nandbiterrs: MTD device size 1048576, eraseblock=131072, pag4
> [  695.122867] mtd_nandbiterrs: Device uses 1 subpages of 2048 bytes
> [  695.129138] mtd_nandbiterrs: Using page=0, offset=0, eraseblock=0
> [  695.144888] mtd_nandbiterrs: incremental biterrors test
> [  695.150594] mtd_nandbiterrs: write_page
> [  695.158629] mtd_nandbiterrs: rewrite page
> [  695.163488] mtd_nandbiterrs: read_page
> [  695.170790] mtd_nandbiterrs: verify_page
> [  695.174887] mtd_nandbiterrs: Successfully corrected 0 bit errors per subpage
> [  695.182279] mtd_nandbiterrs: Inserted biterror @ 0/5
> [  695.187387] mtd_nandbiterrs: rewrite page
> [  695.196243] mtd_nandbiterrs: read_page
> [  695.202608] mtd_nandbiterrs: Read reported 1 corrected bit errors
> [  695.209115] mtd_nandbiterrs: verify_page
> [  695.213192] mtd_nandbiterrs: Successfully corrected 1 bit errors per subpage
> [  695.220361] mtd_nandbiterrs: Inserted biterror @ 0/2
> [  695.225361] mtd_nandbiterrs: rewrite page
> [  695.235261] mtd_nandbiterrs: read_page
> [  695.240237] mtd_nandbiterrs: Read reported 2 corrected bit errors
> [  695.246384] mtd_nandbiterrs: verify_page
> [  695.250771] mtd_nandbiterrs: Successfully corrected 2 bit errors per subpage
> [  695.257984] mtd_nandbiterrs: Inserted biterror @ 0/0
> [  695.262984] mtd_nandbiterrs: rewrite page
> [  695.273646] mtd_nandbiterrs: read_page
> [  695.280000] mtd_nandbiterrs: Read reported 2 corrected bit errors
> [  695.286230] mtd_nandbiterrs: verify_page
> [  695.290489] mtd_nandbiterrs: Error: page offset 0, expected 25, got 00
> [  695.297155] mtd_nandbiterrs: Error: page offset 282, expected 29, got 28
> [  695.303897] mtd_nandbiterrs: Error: page offset 359, expected a7, got 27
> [  695.310834] mtd_nandbiterrs: ECC failure, read data is incorrect despite reas
> modprobe: ERROR: could not insert 'mtd_nandbiterrs': Input/output error
Well looks like some ecc issue (just blind guess). This is
unfortunately out of scope of this forum.
Pls ask on kernel mailing list. Thanks.
>
> Now I am in trouble, what is that error means?
>
> Thank you marek,
>
> - jh

BR,

marek
