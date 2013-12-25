Return-Path: <cazfi74@gmail.com>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCBECE00840
	for <yocto@yoctoproject.org>; Wed, 25 Dec 2013 03:47:47 -0800 (PST)
Received: by mail-qe0-f48.google.com with SMTP id gc15so7192893qeb.7
	for <yocto@yoctoproject.org>; Wed, 25 Dec 2013 03:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=rIH9Fi0jSSg1dVXHwzK1lYac1UQjyOTuoEtE/8633Ho=;
	b=GhU4ACIHoT6w3kfkFHJe/R2UNzVNCvWE5WXuEJItXSmwg5YvmwseAdC0tiY6NsLJsM
	gOj4Nslgin6v98puoxx0Rn7xkmI0ddxRl2I4eTxAMkSbP6pcVunh7/kguqKZChn5yeff
	T6fo1/Uf4Cr5HUeye2BKfL9i6RvRBPlRSxM7uazDcfChaDlScuvpYfqFcjAo6MKIKngW
	hsxqCF/9oeyUQjXCKTunOW+J3AoHUl0/UfMvJUphnKdZ/181g1TGFIS8mNO7gFWFREdr
	H1tQUJBejFHYGdUWO4vVSqK51uTkJyztaScDXw1ZeJH5l7ymDfRdgdMTvkYV9s/ATW7n
	O6pg==
MIME-Version: 1.0
X-Received: by 10.49.109.200 with SMTP id hu8mr62899045qeb.72.1387972066760;
	Wed, 25 Dec 2013 03:47:46 -0800 (PST)
Received: by 10.224.215.8 with HTTP; Wed, 25 Dec 2013 03:47:46 -0800 (PST)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A72C5687008@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A72C5687008@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Wed, 25 Dec 2013 13:47:46 +0200
Message-ID: <CAF6bG8c8v00U=g0vSXz6PW4OwUp4iHkcYcRT5QJyM=JOX081DA@mail.gmail.com>
From: Marko Lindqvist <cazfi74@gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Passing more than one md5sum in yocto
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
X-List-Received-Date: Wed, 25 Dec 2013 11:47:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 December 2013 13:37, Rohit2 Jindal <rohit2.jindal@aricent.com> wrote:
> Hi,
>
> Can u suggest me a way that we can pass more than one md5sum in yocto for
> two different sources to be downloaded.
>
>
>
> SRC_URI =3D "\
>
>      http://ftp.gnu.org/gnu/glibc/glibc-ports-2.13.tar.gz\
>
>         http://ftp.gnu.org/gnu/glibc/glibc-2.13.tar.gz\
>
> "
>
> SRC_URI[md5sum] =3D "094e3c9b57da605917a780ab24575187"
>
> SRC_URI[sha256sum] =3D
> "41cbdc05bd7b233464d649b59b34405e5bf3998522640b9f98f2c4eb91e87322"
>
> SRC_URI[md5sum] =3D "fafabe01cb9748acb0a11a6879ebaa7e"
>
> SRC_URI[sha256sum] =3D
> "bd90d6119bcc2898befd6e1bbb2cb1ed3bb1c2997d5eaa6fdbca4ee16191a906"
>
>
>
> I want to do like this but everytime it gives error due to glibc-ports it
> say mismatch of md5sum as it consider md5sum as fafb=E2=80=A6
>
>
>
>
>
> I tried to make it separated but that also doesnot work
>
>
>
>
>
> SRC_URI =3D "\
>
>
> https://launchpad.net/glibc/head/2.13/+download/glibc-ports-2.13.tar.gz"
>
>
>
>
>
> SRC_URI[md5sum] =3D "094e3c9b57da605917a780ab24575187"
>
> SRC_URI[sha256sum] =3D
> "41cbdc05bd7b233464d649b59b34405e5bf3998522640b9f98f2c4eb91e87322"
>
>
>
> SRC_URI +=3D
> "https://launchpad.net/glibc/head/2.13/+download/glibc-2.13.tar.gz=E2=80=
=9D
>
> SRC_URI[md5sum] +=3D "fafabe01cb9748acb0a11a6879ebaa7e"
>
> SRC_URI[sha256sum] +=3D
> "bd90d6119bcc2898befd6e1bbb2cb1ed3bb1c2997d5eaa6fdbca4ee16191a906"
>
>
>
>
>
> Please help me out suggesting the proper way.
>
>
>
> Regards,
>
> Rohit Jindal
>

 See readline_6.2.bb for an example.

 You give each source package a name property like:
 SRC_URI =3D "https://launchpad.net/glibc/head/2.13/+download/glibc-2.13.ta=
r.gz;name=3Dglibc
\

https://launchpad.net/glibc/head/2.13/+download/glibc-ports-2.13.tar.gz;nam=
e=3Dports"


 and specify checksums to for these names

 SRC_URI[glibc.md5sum] =3D "..."
 SRC_URI[glibc.sha256sum =3D "..."
 SRC_URI[ports.md5sum] =3D "..."
 SRC_URI[ports.sha256.sum] =3D "...




 - ML

