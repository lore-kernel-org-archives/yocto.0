Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.4081.1596229130274092908
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 13:58:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+4QSxDk;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id j187so30037327qke.11
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jul 2020 13:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XA+j0ymRAcuIha6EJWMc/wuvw3wTaTTfQzF15Upo/+0=;
        b=M+4QSxDkv9SLLMmtWezLHE64qNbhhltNUeJ+HCoke3+utJ16TzEjE3Z6xGR/hBwusZ
         8sIvyCFecAHsw4OJn9To4GCTr/BE/qp87y/N9VvQi3T6788n4x8S8bdDTnlXejRYEfUY
         8gl8wZrdveL6Yaim+5h5iosNE61Y+6FugkavOUimJWX1C4ao58PWUw7krJn3ewk35hCb
         iuUFl+CAPyZyuhLZ3Dgz/AC3DG5ROg5k5MaDNRpiJEhsXVI2NHdGTJIEaXxBEHEmY0QQ
         x9oxX+sFlU5jwNTcEQ66NzOKmWOw5dB17nOyH8LMz2iUyspw5aJWmRBziJd833Hy+Tpd
         phVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XA+j0ymRAcuIha6EJWMc/wuvw3wTaTTfQzF15Upo/+0=;
        b=rTfauFOW38IMOCC66VSUoOst+nahsYzDFTv5IyfEIjshkuXIgOeS1Cg4in+Ql6aIT3
         UnHnO5ZjNbeR/GcJRdItVSplyGuIbee6VMNXACfsU4VRgwkP5I3oq+zF5VoEM9XCd3aO
         AP84s8s3A+3gLoMpZDGOp5yAX9r4I2rzJHqa4mxb6X6QATtJTMGvK/sfd0gUMxgHyVj+
         yfjrIGvpjuttmz0RDvRm5AWSjjpoI9DRn6gLDSwLYLh8wcM8zfZ+WoiOpLiU+qzho8sO
         EghLF/SgFVRhucIncjwjHkII2dfVA770S6rx5UZ6MM1vVVfp2nl3nFGpl30a+r1vW3xT
         AYyw==
X-Gm-Message-State: AOAM531MVUOVhOtxSDNzcSI3G3iR+gtmXN5wNaARqlkj9JiNvRYU4pdB
	ecauTuKwq6S4eO3YXCQ45v9s3oOQCdmAEulKDdM=
X-Google-Smtp-Source: ABdhPJxQTRKqSs44eDGWgVs30xIyUw0fkbZ2OqYYZuXJuNNgb5jNI5QaeMY6hKKzLLtOEhWn94cvdv7ptv1Z1bH5ZXE=
X-Received: by 2002:a37:9d0d:: with SMTP id g13mr5828896qke.165.1596229129308;
 Fri, 31 Jul 2020 13:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
In-Reply-To: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 31 Jul 2020 13:58:22 -0700
Message-ID: <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@lists.yoctoproject.org, Sumit Garg <sumit.garg@linaro.org>, 
	Ralph Siemsen <ralph.siemsen@linaro.org>, Jon Mason <Jon.Mason@arm.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org> wrote:
>
> Hello,
>
> I'm migrating from Warrior to Dunfell and I'm getting a curious build failure in gcc-sanitizers.
>
> Here's the full gory detail:
>     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
>
> However, the main error is this:
>
> | In file included from ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
> | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of array 'assertion_failed__1152' is negative
> |      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]
>
> I have no idea where to begin with this. I don't even know why gcc-sanitizers is included in the build, what it does, or why I need it. I'm building an image with dev packages and gcc, so I guess that's why.
>
> I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null out the macros and that builds fine. I'm sure it won't work, should someone want to use it, mind you.
>
> Is there something obvious that I should be doing as part of a Warrior -> Dunfell migration to get this to work?
>
> note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to meta-arm-toolchain.
>

is gcc 8.3 the latest for linaro

> Regards,
> Ryan.
> 
