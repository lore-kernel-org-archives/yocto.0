Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
 by mx.groups.io with SMTP id smtpd.web11.4448.1630410923183904279
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 04:55:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.82, mailfrom: f_l_k@t-online.de)
Received: from fwd38.aul.t-online.de (fwd38.aul.t-online.de [172.20.26.138])
	by mailout05.t-online.de (Postfix) with SMTP id 0E58B89C6
	for <yocto@lists.yoctoproject.org>; Tue, 31 Aug 2021 13:55:03 +0200 (CEST)
Received: from [192.168.178.33] (XZbfrgZJYhKrdmudzbD-vSDjZiqIj64Z3MVsKdbfxGqyhcJvVhuqyXu6kSCh8XaQVZ@[84.163.33.231]) by fwd38.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mL2M2-2HGjnU0; Tue, 31 Aug 2021 13:55:02 +0200
Subject: Re: [yocto] editing Makefile after configure stage to disable -Werror
To: yocto@lists.yoctoproject.org
References: <CAKAnv4G_EQ56PqvP0aO1g+JfzMZTrsTGLLXCiqE0xzg3arQyww@mail.gmail.com>
From: "Markus Volk" <f_l_k@t-online.de>
Message-ID: <4e6507f0-00a7-9ef7-00de-e68b793adf2e@t-online.de>
Date: Tue, 31 Aug 2021 13:55:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKAnv4G_EQ56PqvP0aO1g+JfzMZTrsTGLLXCiqE0xzg3arQyww@mail.gmail.com>
X-ID: XZbfrgZJYhKrdmudzbD-vSDjZiqIj64Z3MVsKdbfxGqyhcJvVhuqyXu6kSCh8XaQVZ
X-TOI-EXPURGATEID: 150726::1630410902-00010279-4656D04D/0/0 CLEAN NORMAL
X-TOI-MSGID: 67ac84d7-873c-44d5-92e9-2ff587a23f38
Content-Type: multipart/alternative;
 boundary="------------9D41BAD55BF91DEF7FAD4E3F"
Content-Language: en-US

--------------9D41BAD55BF91DEF7FAD4E3F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

you could try to add a line like this to your recipe:

CFLAGS:append =3D " -Wno-error=3Dmissing-attributes"


Am 31.08.21 um 08:41 schrieb Ivan Riabtsov:
> Hello, I have the following error:
>
> ../../elfutils-0.166/libelf/libelfP.h:53:30: error: =E2=80=98__elf64_msiz=
e=E2=80=99
> specifies less restrictive attribute than its target =E2=80=98elf64_fsize=
=E2=80=99:
> =E2=80=98const=E2=80=99 [-Werror=3Dmissing-attributes]
>
> i try to solve this by patch:
>
> diff -Naur elfutils-0.166_orig/libelf/libelfP.h elfutils-0.166/libelf/lib=
elfP.h
> --- elfutils-0.166_orig/libelf/libelfP.h 2016-01-12 15:49:19.000000000 +0=
300
> +++ elfutils-0.166/libelf/libelfP.h 2021-08-30 19:38:44.866175082 +0300
> @@ -48,6 +48,8 @@
>
>
>   /* Helper Macros to write 32 bit and 64 bit functions.  */
> +#pragma GCC diagnostic push
> +#pragma GCC diagnostic ignored "-Wmissing-attributes"
>   #define __elfw2_(Bits, Name) __elf##Bits##_##Name
>   #define elfw2_(Bits, Name) elf##Bits##_##Name
>   #define ElfW2_(Bits, Name) Elf##Bits##_##Name
> @@ -632,4 +634,5 @@
>   #define INVALID_NDX(ndx, type, data) \
>     unlikely ((data)->d_size / sizeof (type) <=3D (unsigned int) (ndx))
>
> +#pragma GCC diagnostic pop
>   #endif  /* libelfP.h */
>
>
> But the patch does  not work, error appears again.
>
>
> i try to add --disable-werror to configure flags, but i have follows warn=
ing:
>
> configure: WARNING: unrecognized options: --disable-werror.
>
>
> The only solution to the problem I could think of is editing the
> Makefile after configuration, please tell me how this can be done?
>
>=20
>

--------------9D41BAD55BF91DEF7FAD4E3F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>you could try to add a line like this to your recipe:</p>
    <p>CFLAGS:append =3D " -Wno-error=3Dmissing-attributes"</p>
    <br>
    <div class=3D"moz-cite-prefix">Am 31.08.21 um 08:41 schrieb Ivan
      Riabtsov:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKAnv4G_EQ56PqvP0aO1g+JfzMZTrsTGLLXCiqE0xzg3arQyww@mail.gmail.=
com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hello, I have the following er=
ror:

../../elfutils-0.166/libelf/libelfP.h:53:30: error: =E2=80=98__elf64_msize=
=E2=80=99
specifies less restrictive attribute than its target =E2=80=98elf64_fsize=
=E2=80=99:
=E2=80=98const=E2=80=99 [-Werror=3Dmissing-attributes]

i try to solve this by patch:

diff -Naur elfutils-0.166_orig/libelf/libelfP.h elfutils-0.166/libelf/libel=
fP.h
--- elfutils-0.166_orig/libelf/libelfP.h 2016-01-12 15:49:19.000000000 +030=
0
+++ elfutils-0.166/libelf/libelfP.h 2021-08-30 19:38:44.866175082 +0300
@@ -48,6 +48,8 @@


 /* Helper Macros to write 32 bit and 64 bit functions.  */
+#pragma GCC diagnostic push
+#pragma GCC diagnostic ignored "-Wmissing-attributes"
 #define __elfw2_(Bits, Name) __elf##Bits##_##Name
 #define elfw2_(Bits, Name) elf##Bits##_##Name
 #define ElfW2_(Bits, Name) Elf##Bits##_##Name
@@ -632,4 +634,5 @@
 #define INVALID_NDX(ndx, type, data) \
   unlikely ((data)-&gt;d_size / sizeof (type) &lt;=3D (unsigned int) (ndx)=
)

+#pragma GCC diagnostic pop
 #endif  /* libelfP.h */


But the patch does  not work, error appears again.


i try to add --disable-werror to configure flags, but i have follows warnin=
g:

configure: WARNING: unrecognized options: --disable-werror.


The only solution to the problem I could think of is editing the
Makefile after configuration, please tell me how this can be done?
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------9D41BAD55BF91DEF7FAD4E3F--
