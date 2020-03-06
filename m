Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web10.8849.1583478265790871220
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 23:04:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W1rcKwus;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jonatan.p@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id j69so1101889ila.11
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 23:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Q7HftMAZsquS3rH89gtKRW867gj05/jgUodNkZt77qs=;
        b=W1rcKwushKmxBj7/JZGWxyj36Su9TLvyaicwoegZ4TqETXC7l5A7exYopM2Y2TYe/V
         h9Tg0V4zKUEyZ7P2PDF62gaAXpKucf2kMl60kzziDpeUUEa2oRzS6p4BY2LIcN75dCA0
         f3SK/xiBMzqXD+qcYbKfXyJLhaOoVRxtkX3upaLdrnw2WcLh2qP3QBugj0BllMPF1Q1f
         X+mQSB7W3rIfl9/tB6F6Sh//l6yV275X871fBADidR5IUQQsGEdDD0R8C++bteSXw+dw
         SbUBwKQ1o236T8gwSkyPV57fCSNYDLPj8qpvnhL/Hj70NKJL2XU6bf/D0Kj/32tIWyRY
         tMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Q7HftMAZsquS3rH89gtKRW867gj05/jgUodNkZt77qs=;
        b=rL6FkrK6e/PFhA+VaWl21uQzmol04hDeC3mhqvFCh49vTzVwg3hjB1geROjylWAFIO
         0SD6DhvHTUBJf9PcPKADRpFXwhT5JUE0BbJgZvHSLJqKILexYCdlu4pSuAfVVDSahvRn
         2PY+cOSV/r5So7nx9E4XPQvNb7mNsedZfe3U26peUvwOarzjbqxHCye+IWec5jdBE1eH
         fkiLTkK55mer3K7EhAxZ7AOMi69JFq7KkM6ECrq480J7Nk9CuJDHpWd+2GsMQUoGOZM3
         G/z8D+Cth7dXf/A4fgsLcZ7Fiw7xKgObPe3w7t1EBhENMRvyO9FV1G62I6Ay87LVbTFm
         lJUg==
X-Gm-Message-State: ANhLgQ0Ve0jLUZ6uNtUU4wJpHRFPadEhVVh0/GNUGwRy+0vi5uOkk/nM
	Ggq5CXguNmcF7s6UWwwrVYH31GB+w+f3fuY9Elo=
X-Google-Smtp-Source: ADFU+vst1Pro1yLRrx/X2/OcaXLf/b4f+nLFtswQ2QFaUqvYALNgi68tZRPCXLrcfAHDZ2wVAjc6WGf1+hJ+mAeowP8=
X-Received: by 2002:a92:7ed7:: with SMTP id q84mr1831571ill.307.1583478265259;
 Thu, 05 Mar 2020 23:04:25 -0800 (PST)
MIME-Version: 1.0
References: <20200305124740.2582832-1-jonatan.p@gmail.com> <296ae9eb-acb9-b823-b931-398a8cb4ae50@gmail.com>
In-Reply-To: <296ae9eb-acb9-b823-b931-398a8cb4ae50@gmail.com>
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
Date: Fri, 6 Mar 2020 08:04:14 +0100
Message-ID: <CAKm+giPxnLXTcXPoCBPVGk11TWvj3J5xpm3Z3sF=G1X29yWMMg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/3] sssd: Add PACKAGECONFIG for python2
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Armin,

On Thu, Mar 5, 2020 at 4:18 PM akuster808 <akuster808@gmail.com> wrote:
>
> On 3/5/20 4:47 AM, Jonatan P=C3=A5lsson wrote:
>
> Fixes the following build error:
>
>     .. snip ..
>     | checking for python2... no
>     | checking for python3... (cached) python3.8
>     | configure: error:
>     | The program python2 was not found in search path.
>     | Please ensure that it is installed and its directory is included in=
 the search
>     | path. It is required for building python2 bindings. If you do not w=
ant to build
>     | them please use argument --without-python2-bindings when running co=
nfigure.
>     | WARNING: exit code 1 from a shell command.
>
> Signed-off-by: Jonatan P=C3=A5lsson <jonatan.p@gmail.com>
> ---
>  recipes-security/sssd/sssd_1.16.4.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd=
/sssd_1.16.4.bb
> index c381c32..9feba14 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -33,6 +33,7 @@ PACKAGECONFIG[ssh] =3D "--with-ssh, --with-ssh=3Dno, "
>  PACKAGECONFIG[samba] =3D "--with-samba, --with-samba=3Dno, samba"
>  PACKAGECONFIG[selinux] =3D "--with-selinux, --with-selinux=3Dno --with-s=
emanage=3Dno, libselinux"
>  PACKAGECONFIG[manpages] =3D "--with-manpages, --with-manpages=3Dno"
> +PACKAGECONFIG[python2] =3D "--with-python2-bindings, --without-python2-b=
indings, python, python"
>
> Python2 is not supported in Master so maybe append EXTRA_OECONF  with --w=
ithout-python2-binding.

Ah, I see. I'll prepare a new patch with this.

> I can take this for zeus thou.

For zeus, a PACKAGECONFIG entry for python2 is available, but the
RDEPENDS and DEPENDS entries are missing. I'll prepare a patch to add
those entries.

Thanks,
Jonatan
