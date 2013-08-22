Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9178BE00406
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:19:34 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id i10so3758798oag.30
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 08:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z7q56sec3gnfybcCzyFtN/KCA+dpVBVZO67Hn6LYFvc=;
	b=sf1m7ynCWJCJ9pOANu3J4M63Ofqbnj7KhWHBCkEzlgoK7ilKdwqg1uiOo1P7GXY6wn
	lCWmEu0SLu0VzRE+18JmjLezirm/D6XbnufhulBfLYjzJarTici6dwhXAwGlo6ACArPH
	yZGF3Lkfn8xGUnU3Jf5BJK+mgqizfPUTmEzRK6Sdb4prc15kUN5SJPaZCx4AI7zOxam4
	xXJGDRGuiWKHfFnoiYAQMM8/M9oV3C02CkIBV8ne+dhXrnAemjBB2n9GVJPXqvL0p1TS
	pqyeLhQAeRUEPUAlEGr/JpBK5DkNJZif6b8Z9nXPczxJI2QFUmTNFXEcA9Tr9HZl1kIV
	2RRw==
MIME-Version: 1.0
X-Received: by 10.60.47.129 with SMTP id d1mr2853661oen.84.1377184771792; Thu,
	22 Aug 2013 08:19:31 -0700 (PDT)
Received: by 10.76.1.194 with HTTP; Thu, 22 Aug 2013 08:19:31 -0700 (PDT)
In-Reply-To: <CAFyqS9pM4d+HffKvW9NfFBSnqYVkTRuNMTx_pU2BsdOdwFd-_g@mail.gmail.com>
References: <CAFyqS9pM4d+HffKvW9NfFBSnqYVkTRuNMTx_pU2BsdOdwFd-_g@mail.gmail.com>
Date: Thu, 22 Aug 2013 17:19:31 +0200
Message-ID: <CAMvUbCyNcRYvwWzFTQ0YUb7XcciWxx_bO4OsksUyF-4cBJvS4Q@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cross-compilation of kernel does not work with the generated toolchain?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Aug 2013 15:19:35 -0000
Content-Type: multipart/alternative; boundary=001a11c303f21ce48204e48ad19a

--001a11c303f21ce48204e48ad19a
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Hans,

On Thu, Aug 22, 2013 at 5:10 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> Hi. I am trying to build a kernel using our bitbaked and populated
> toolchain. It works fine for user-space application but when trying to
> compile the kernel we get
> ...
>   HOSTCC  scripts/dtc/srcpos.o
> In file included from scripts/dtc/dtc.h:25,
>                  from scripts/dtc/srcpos.c:24:
> /usr/include/string.h:546: error: expected declaration specifiers or
> '...' before '__locale_t'
> /usr/include/string.h:547: error: nonnull argument with out-of-range
> operand number (argument 1, operand 3)
> /usr/include/string.h:550: error: expected declaration specifiers or
> '...' before '__locale_t'
> /usr/include/string.h:551: error: nonnull argument with out-of-range
> operand number (argument 1, operand 4)
> make[2]: *** [scripts/dtc/srcpos.o] Error 1
> make[1]: *** [scripts/dtc] Error 2
> make: *** [scripts] Error 2
>
> /usr/include/string.h ??? That must be wrong, or? I expected it to
> pickup the standard headerfiles from our toolchain, not the ones on
> the build host. That will surely clash with the version of the
> compiler being used.
>
> Any ideas what might be wrong here?
>
> Note that the scripts/dtc/dtc tool is not built for the target, but is a
build host native tool to compile a device tree.

So it is expected it uses host includes.

Just to be sure, you are building the kernel outside  of Yocto, just using
the cross toolchain from Yocto?

Regards,

Leon.

--001a11c303f21ce48204e48ad19a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra">Hello Hans,<br></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Aug 22, 2013 at=
 5:10 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beck=
erus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi. I am trying to build a kernel using our =
bitbaked and populated<br>
toolchain. It works fine for user-space application but when trying to<br>
compile the kernel we get<br>
...<br>
=A0 HOSTCC =A0scripts/dtc/srcpos.o<br>
In file included from scripts/dtc/dtc.h:25,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from scripts/dtc/srcpos.c:24:<br>
/usr/include/string.h:546: error: expected declaration specifiers or<br>
&#39;...&#39; before &#39;__locale_t&#39;<br>
/usr/include/string.h:547: error: nonnull argument with out-of-range<br>
operand number (argument 1, operand 3)<br>
/usr/include/string.h:550: error: expected declaration specifiers or<br>
&#39;...&#39; before &#39;__locale_t&#39;<br>
/usr/include/string.h:551: error: nonnull argument with out-of-range<br>
operand number (argument 1, operand 4)<br>
make[2]: *** [scripts/dtc/srcpos.o] Error 1<br>
make[1]: *** [scripts/dtc] Error 2<br>
make: *** [scripts] Error 2<br>
<br>
/usr/include/string.h ??? That must be wrong, or? I expected it to<br>
pickup the standard headerfiles from our toolchain, not the ones on<br>
the build host. That will surely clash with the version of the<br>
compiler being used.<br>
<br>
Any ideas what might be wrong here?<br>
<br></blockquote></div>Note that the scripts/dtc/dtc tool is not built for =
the target, but is a build host native tool to compile a device tree.<br><b=
r></div><div class=3D"gmail_extra">So it is expected it uses host includes.=
<br>
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Just =
to be sure, you are building the kernel outside=A0 of Yocto, just using the=
 cross toolchain from Yocto?<br><br>Regards,<br><br>Leon.<br></div></div>

--001a11c303f21ce48204e48ad19a--
