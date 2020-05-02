Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.13383.1588456033200139646
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 May 2020 14:47:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=K9BI+dqX;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id e26so4057800wmk.5
        for <yocto@lists.yoctoproject.org>; Sat, 02 May 2020 14:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ScAMq3JnSmErMcgvkt5axzcRjnqNwsId+yaZrMxAuJ0=;
        b=K9BI+dqXCxopZc9YgNduHc8hodOi6UrlYHuig08o8GC+uGwONmTLxl3oT2CcDagPZA
         xr0G7YGW9ltxwkpaFB1/emfaubtBoWUqYmae8cpLqYIAHMP9qlSAsaq5E8OAG53NpVvk
         8VQdLrqaCBXAt6KrZaSTiGscfVtJ5qujqM7KRoHEkZfA+jJdcFFcVjftQpx3ptTvt16t
         pFb5EOcZ8TR0YmuvQqhp1ypJXBHkf1Rny4beA+UTAnH/tG+1nFyDBBP+HiQmYYePr55q
         utvwNJ0hJQyRIwj+zfKMsSPzv15P558hOgBud7i/HGbfdyvmpCIYVxt29IVJp1bnsjS2
         n//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ScAMq3JnSmErMcgvkt5axzcRjnqNwsId+yaZrMxAuJ0=;
        b=HdXcvDMHmawhRlccDnvpf4Uy+0uDL0/4f70rP8a7UyaLknQ7pCYXOeg1yEY6Eu4rYh
         +nII12I5i/9+c01dXt7OUQWlTenq96+LKSUNCHH7otJtVnyfaBu2lCAI5tHdqzt90idV
         xz034/WFJq8wpbJ/2Jw0uHvY7yNYCgmjPV7GFxtg29okv2lLc/gfVKtgSSdcU5QHp1dG
         J1jcYqN0HxSO0V/Sla0sIkyQ0ggR1DXNn9Njyei8Rpt4qA6rPKO+3zPuA7C44DtD4CRv
         e6z1FiH4IV+I+TkHZKyUEdj5RWalqMOQ8C0nZ3ypkZl8DcJTL4YkD/12bvqjFBl2oq4v
         YuIw==
X-Gm-Message-State: AGi0PuYDNzE3IshCIPij26x/Wor7GfrNk7DKiQ6LmVZO31sEvu3xXm1i
	KtWyoiFHvGWTBW1ULEmfG78wwvLcm4zDFgLqb04izQ==
X-Google-Smtp-Source: APiQypJ5n5zuS8F677QTBEVudSKgyO5Tbw0HJvQF3s3kj70MGCKzHrQx5wAtAHBq59XYdy70cIigLEab2LYq33nvwWw=
X-Received: by 2002:a1c:5683:: with SMTP id k125mr6140731wmb.17.1588456031596;
 Sat, 02 May 2020 14:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <aaffec18-b081-bcc4-4508-9cd3f7c24c03@ibeeto.com>
In-Reply-To: <aaffec18-b081-bcc4-4508-9cd3f7c24c03@ibeeto.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Sat, 2 May 2020 16:47:02 -0500
Message-ID: <CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com>
Subject: Re: [yocto] [WIC] Multiple WKS Files
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008131aa05a4b13da8"

--0000000000008131aa05a4b13da8
Content-Type: text/plain; charset="UTF-8"

On Sat, May 2, 2020, 1:22 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> eMMC devices commonly have three hardware partitions: two boot
> partitions and a user partition. I was looking for a convenient way to
> have wic build an image for the boot partition and one for the user
> partition. However, that does not seem to be possible right out of the
> box. The variable WKS_FILE only accepts one file and not a list. The
> class image_types_wic.bbclass uses WKS_FILES internally but that seems
> to be a search list and the code only builds the file it finds first.


I think part of the problem is that wks files are tied to a rootfs image,
so it's not currently possible to have multiple because there is no way to
differentiate them. Also because of that it's a little odd to have a wks
file that doesn't reference the rootfs it's built with.

You might be able to do it by making a simple dummy image recipe for the
boot partition(s), then overriding the WKS_FILE variable for the image with
a pn override in the machine.conf file (e.g. WKS_FILE_pn-my-emmc-boot =
"emmc-boot.wks" )


> Is my understanding correct?
>
> Any smart ideas to make this work?
>
> Thanks,
> Rudi
>
>
>
>
> 
>

--0000000000008131aa05a4b13da8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, May 2, 2020, 1:22 PM Rudolf J Streif &lt;<a hr=
ef=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">eMMC devices commonly have thre=
e hardware partitions: two boot<br>
partitions and a user partition. I was looking for a convenient way to<br>
have wic build an image for the boot partition and one for the user<br>
partition. However, that does not seem to be possible right out of the<br>
box. The variable WKS_FILE only accepts one file and not a list. The<br>
class image_types_wic.bbclass uses WKS_FILES internally but that seems<br>
to be a search list and the code only builds the file it finds first.</blo=
ckquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I think p=
art of the problem is that wks files are tied to a rootfs image, so it&#39;=
s not currently possible to have multiple because there is no way to differ=
entiate them. Also because of that it&#39;s a little odd to have a wks file=
 that doesn&#39;t reference the rootfs it&#39;s built with.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">You might be able to do it by making=
 a simple dummy image recipe for the boot partition(s), then overriding the=
 WKS_FILE variable for the image with a pn override in the machine.conf fil=
e (e.g. WKS_FILE_pn-my-emmc-boot =3D &quot;emmc-boot.wks&quot; )</div><div =
dir=3D"auto"><br></div><div dir=3D"auto"></div><div dir=3D"auto"><div class=
=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Is my understanding correct?<br>
<br>
Any smart ideas to make this work?<br>
<br>
Thanks,<br>
Rudi<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div></div></div>

--0000000000008131aa05a4b13da8--
