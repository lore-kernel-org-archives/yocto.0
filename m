Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web09.4494.1581514581855448302
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 05:36:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GwWiAUFN;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: alex.kiernan@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id t17so1706803ilm.13
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 05:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=m5y/vlAe52t+xzZvv8vkb+pNhUq6rxOOvlZriOmlLhk=;
        b=GwWiAUFNK6gZE78shHJ+pW/77RbhqTYoQ2G0GQ2wU0z5UlJUB0hIf6Dit89AfYN782
         EHkdNzmQjWBvASlTI56yjOQ2DgpMrGkawkKti4ZwYhJtPDYOb1o/6zAlZIHc8ZhdoRcn
         BfCqhB1J+z/Cc4fk1bENXZGZQESxdTwFt+mcJrb9P1T4LcWYS3RJWKADViScHqb/e3Rm
         NU3xNqWEJYjbluwXgec4wxkX6qYUcjze/PJxeE4SeN3wbFkg575ZsJqRxTlEmpTdYK40
         Fs3+NczfTvz0CYF9jBCfntxl6CdtBXLWK3DXkApt19k0lunVSneEQflb9P22eXtXvORd
         d8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=m5y/vlAe52t+xzZvv8vkb+pNhUq6rxOOvlZriOmlLhk=;
        b=uW1Fs39dzBecVsBgoR/I/U/fDPrGIdxobtiPqJRBmY3Jjsvz3744HBkL4I9cPnjipx
         HFmfDwXIB3xyCo1sjAnCnhOD8iLPyV7KIHL7+vWHn4DZ/X05a2iaEPmyGHLo6lHh90N5
         CRoPzYAoyMgmlnFexCnBX7MaFJOgrQ/tij2mv+sqiLSXZ3QD9a2BM+T7dGyru4CLnes9
         ZSF33NMm07/f2NDAXKRjpIWs5bhrRm+uxBSjpZIRTxgoaCB0xudp19MHW5apHS0HzNt+
         d5Z60xEpXR/IXXeqguBE/ZO+Diai2FEZRArlaRQm5sghT5ABgZoQ+HiuRZkDDS2p96Fk
         lKEw==
X-Gm-Message-State: APjAAAUCmu8X6ZYoLVXMzT/VCewlYOJKswjQa2cXE9rGTOnb3G3WWYRV
	cvBpCzqEUVbEJ7VBsBI2Qjy7FABH5blcl690CeiYYm9/
X-Google-Smtp-Source: APXvYqyNC0m/0od2IhyhGYpCfxv2M+cNlbme3KT4UAQc3FYZnmobHP8paFx8RauQXXSB2Gw+BmVV84Cy09oHF/EbDG0=
X-Received: by 2002:a92:1a0a:: with SMTP id a10mr11298516ila.295.1581514581299;
 Wed, 12 Feb 2020 05:36:21 -0800 (PST)
MIME-Version: 1.0
References: <CAJgSc4x2c_Kn_e3icH-wgyJvjTVtsnQwTpqh938QkgxabbTyrA@mail.gmail.com>
In-Reply-To: <CAJgSc4x2c_Kn_e3icH-wgyJvjTVtsnQwTpqh938QkgxabbTyrA@mail.gmail.com>
From: "Alex Kiernan" <alex.kiernan@gmail.com>
Date: Wed, 12 Feb 2020 13:36:10 +0000
Message-ID: <CAO5Uq5TNFK0Tn524aTKKUubT-G20k4JQuFE8XSouKQmBiOKTtg@mail.gmail.com>
Subject: Re: [yocto] [kernel] Why is do_kernel_metadata before do_patch?
To: "Alexandru N. Onea" <onea.alex@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 12, 2020 at 1:13 PM Alexandru N. Onea <onea.alex@gmail.com> wro=
te:
>
> Hello community,
>
> I have noticed that do_kernel_metadata is always executed before do_patch=
. What is the reason for this ordering?
>
> In my setup, I have a patch that changes some options in the in-tree defc=
onfig that I want to use (set using KBUILD_DEFCONFIG) and, due to the order=
ing mentioned above, the changes are not taken into account. Is there anoth=
er way to apply changes to an in-tree defconfig before the effect of do_ker=
nel_metadata takes place?
>

For places I need to dump in a whole defconfig, I just copy it in as
part of SRC_URI:

SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git=
;branch=3D${KBRANCH}
\
           file://ti_sdk_am3x_release_defconfig;subdir=3Dgit/arch/arm/confi=
gs \
"

--=20
Alex Kiernan
