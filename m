Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web12.6689.1609206214651695356
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 17:43:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGdFxt9J;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id x16so16403035ejj.7
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 17:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=psz06L7evSi69Pa5osCETZiVqPaynKMDVBLOLqjW09s=;
        b=UGdFxt9JaPHZy6I8QBqr/vHOPMvKLkzylKgoqRY/Z1zJPEISn87n8W4EZJO0TcyyeP
         lSHAFJEJh/AXF5/LFVLYZ1XISOqbFAh0fjquQNlnOBSDcPLfHG1aU4FI02sAsY3S7oSJ
         K6IZESsGCgY5QIzZiAIAsmLheSh9OsN4pDqXtjbM3JTpgVTy2TDW8FnFi2ZleJLxzRyu
         5n+SlyTgI6b2YDWRAMEYnOLXuUlVRxY59LO9QlIb4uJxVC1Lzl37VgmWX/heKYw590Vi
         IVCv5WWi+akER9ku3nywDqL4ln4Aif7FKWkbg5b2Mqn8xJXaSnw6MVCFccgRNFlSw5BR
         bWEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=psz06L7evSi69Pa5osCETZiVqPaynKMDVBLOLqjW09s=;
        b=eYKj9goKuJyZG3OrGATpF3ipxpPp23/wgp05gFybcPwct98jtddGUkdotQLkMc4ynB
         AMZZvPxUic+5gTNU2Hlp+DnsC66zKDAoZZZesXSVBe7+e/46PnNnWkjD4FHZ3JThxC25
         PHL1UFhecBhHj3dz+1ANJIsHHS2NTyhk4v6qMZzIMi2jUG/NYqHZh53GcpgfJ4PiwOpS
         KGL3Oz5sRQVLHRAVyrsfEugcYTAzfMAlml6MrGFKvGKGAQuxILUYW3D130hJkhZLmj/a
         MnnElwe8h5/bPC7pQrK7FPO4HV2hshyVBiMBAAzeKYQWeUmdLTA270E4fW3jpZ+eCfH4
         FLpA==
X-Gm-Message-State: AOAM531AOLyxyjViLnCZLNF2RZGuVbS0CLbSpdpwgPso97w8OmMO2L/d
	EVoICDIKQWwj9j+ImHkFr7b1huPghF+cJg/9fa8=
X-Google-Smtp-Source: ABdhPJyoriA0wQryZ+l2QTURBvkH0Utiq+N8B9e7HKVtrAm84HfziFAjwXFEbrABHCu/gSbSUSnDBYd9ho6EySycFmo=
X-Received: by 2002:a17:906:5e0f:: with SMTP id n15mr37387171eju.459.1609206213021;
 Mon, 28 Dec 2020 17:43:33 -0800 (PST)
MIME-Version: 1.0
References: <73579e95-a544-3e43-ca92-d70e665609a0@windriver.com> <7844.1609182371890093229@lists.yoctoproject.org>
In-Reply-To: <7844.1609182371890093229@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 28 Dec 2020 20:43:21 -0500
Message-ID: <CADkTA4O=g5-b_GE=ockH+=4Pa7e0OYj8ba3ZYaTzp00bE_Os_w@mail.gmail.com>
Subject: Re: [yocto] How to develop kernel modules on the target?
To: p32@tuta.io
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 28, 2020 at 2:06 PM p32 via lists.yoctoproject.org
<p32=3Dtuta.io@lists.yoctoproject.org> wrote:
>
> Hello,
>
> The execution of "make scripts prepare" did actually solve the issue, th=
ank you very much for your help!
>
> However, the need to manually execute this command on the target platfor=
m made me look into the kernel-devsrc recipe (https://git.yoctoproject.org/=
cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux/kernel-devsrc.bb?h=3Dzeus=
) to see if it is possible to let the build host execute this step. Some co=
mments imply that this is the case. Consider, for instance, the one in line=
 257:
>
> Ensure we don't race against "make scripts" during cpio
>
> Unfortunately, I was unable to figure out how to do this. Is there a way=
 to let the recipe trigger this step automatically?
>

Nope. There is no way to do this on the build host. Not without
complex use of qemu-user to generate and package for the target
architecture. We cannot package the output of scripts in the target
package, since it matches the host architecture and this will trigger
a QA error.

If you happen to be x86 build host and x86 target (or ARM/ARM), you
can partially get away with just invoking the steps .. but this needs
to be in your own layer and is a hack, and not appropriate for core.

About 4 years ago, we were partially through doing this work, when the
person doing the qemu parts stopped working on the project. The
partial work is captured in bugzilla.

Cheers,

Bruce

> Thanks!
>=20
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
