Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web09.34625.1629170800242965771
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 20:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iR30El4f;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id g6so10484575qvj.8
        for <yocto@lists.yoctoproject.org>; Mon, 16 Aug 2021 20:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KqgwkChCXdOZDck5J/bX1m4VWOHk/M/97dUXfZ1QbjI=;
        b=iR30El4ftMlSSnYJ8l70juXKzl8mU95jnB2mPZTkgPGEpOMQKdXzHLsvmWHGcKvmS/
         WXUP6odOmw9cRvztt3hWU5azB+wQ5GZaQVtpBThri8qa7IPaeabGQVtH1qmRzOdhYToA
         O/An0jPuPgkiMYZ7+gCbikVybKvW9F19sqeUqRkvSc3aFDphf8u4JL7U5jFUKu4uKPdA
         moK24HsLZdyOk/YkY4w4y75aqh8E0ufEJabjw3jommzB8TbjIhMR8FbLDHgIPGW6S5je
         PNAzP4RgXvfvW43blwSKBGtv1F9qJjb73jvQ67gjTDacXH+9gR3R2cfc9eKWVVRAw+TQ
         MWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KqgwkChCXdOZDck5J/bX1m4VWOHk/M/97dUXfZ1QbjI=;
        b=gzv6CEdg9GTBHtqX4t902lZOGQrZOKvuC4eRb2OZA7tir5WY84QSGattQPoVRgG5M0
         RXoUMpO3gdmJJz9+F9xGQMzy9ApGzotldvrBuwCocxczzSMeE9Q1JAMN9Ygh7UUIl1od
         WqtXG3gG+bkFgdU+P8DCmUYVOux3SkaPXIaZlaRmcFTPgmXHgXqbsaCdP7RxURtdhe9K
         ImAOMXOG0/xRT3T6PJINnlP3ACNsNp575LvEJdNkB0lAdHg/K+lBgVzPaMxo7Oz3NUZx
         nKQPWCzv14xjuC3rgdLEO3HNiawZr9cQPPx0td/9Ur748DPDduz5SYoaAFxiQx0296x2
         QdFw==
X-Gm-Message-State: AOAM530W5rnO7G0/C6UAyGitiF+ZcL607bspJ0zot3almOHYbnsKc+Au
	7TR//e+ElN4ANTST77rDtRChy7Cx8wm3Vq5XOjM=
X-Google-Smtp-Source: ABdhPJwiC0uj+dd37ijmuQtqRLXQx6AjuQx4VsLD6gh/DClF6MSYGYfUxFKDSCsWEAX6lRpJ5UvdxEoWvrHYzJ4Xhbs=
X-Received: by 2002:ad4:5f0d:: with SMTP id fo13mr1279338qvb.31.1629170799357;
 Mon, 16 Aug 2021 20:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210817013605.5760-1-okaya@kernel.org>
In-Reply-To: <20210817013605.5760-1-okaya@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 16 Aug 2021 20:26:28 -0700
Message-ID: <CAMKF1sqpLA2NeM1N-Ro0+aqm_yhvaD7XyxMnN_HZ1NBDm8nLgQ@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH 1/3] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>
Cc: jpewhacker@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c6322a05c9b8e26d"

--000000000000c6322a05c9b8e26d
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 16, 2021 at 6:36 PM Sinan Kaya <okaya@kernel.org> wrote:

> Dynamically linked protoc.exe is failing as follows:
>
> [libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
> File already exists in database: google/protobuf/descriptor.proto
> [libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
> GeneratedDatabase()->Add(encoded_file_descriptor, size):
>
> Switch to static linkage per upstream recommendation.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  recipes-devtools/protobuf/protobuf_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend
>
> diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend
> b/recipes-devtools/protobuf/protobuf_%.bbappend
> new file mode 100644
> index 0000000..7e62ff6
> --- /dev/null
> +++ b/recipes-devtools/protobuf/protobuf_%.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF:append:class-nativesdk = " --disable-shared"


This is not an inert change can it use some mingw specific override as well

>
> --
> 2.17.1
>
>
> 
>
>

--000000000000c6322a05c9b8e26d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Aug 16, 2021 at 6:36 PM Sinan Kaya &lt;<a href=3D"m=
ailto:okaya@kernel.org">okaya@kernel.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)">Dynamically linked protoc.exe is failing as follows:<br>
<br>
[libprotobuf ERROR google/protobuf/descriptor_database.cc:641]<br>
File already exists in database: google/protobuf/descriptor.proto<br>
[libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:<br>
GeneratedDatabase()-&gt;Add(encoded_file_descriptor, size):<br>
<br>
Switch to static linkage per upstream recommendation.<br>
<br>
Signed-off-by: Sinan Kaya &lt;<a href=3D"mailto:okaya@kernel.org" target=3D=
"_blank">okaya@kernel.org</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/protobuf/protobuf_%.bbappend | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
=C2=A0create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend<br>
<br>
diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend b/recipes-devtoo=
ls/protobuf/protobuf_%.bbappend<br>
new file mode 100644<br>
index 0000000..7e62ff6<br>
--- /dev/null<br>
+++ b/recipes-devtools/protobuf/protobuf_%.bbappend<br>
@@ -0,0 +1 @@<br>
+EXTRA_OECONF:append:class-nativesdk =3D &quot; --disable-shared&quot;</blo=
ckquote><div dir=3D"auto"><br></div><div dir=3D"auto">This is not an inert =
change can it use some mingw specific override as well=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,20=
4,204)" dir=3D"auto"><br>
-- <br>
2.17.1<br>
<br>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000c6322a05c9b8e26d--
