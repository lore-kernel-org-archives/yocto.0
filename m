Return-Path: <djwelch666@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAEECE00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 08:59:24 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id bj1so7306544pad.39
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 08:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=5F82WJqNgorJyufAbrjJG7M3vLC9eOTh9MdqGWWdnhQ=;
	b=Ze8usWwYnoKGQPTjrlZb8WXzWz3p5BQqY7R9NINsiqMbGGNobSUVJSYORbjqbdOsCR
	TYXCirU/a6UXq+w2kF/i8OwQXTETcrPW8DO1Wo18ZhbZ5iMOKuBzLjrmCX+heWfK9vhO
	VZq/CS8/lrPghhFfCKs/WzJne9MSS3u16CpPTJRxnfTGsyRP8jNHl5rP16cxqFHdL+Fo
	58F0W2i7VUIGINmdh7oSZpshclUbR1y3DeeB5BvB8QR+wYHP+xv8LzGMRlSZjf+mUPun
	kSc22GYZ7kINJpM+Q5pSBi7/JAIIRwBivsAOSR3zMnhXYNCa9WXoO1Qef+ePSKukxzg4
	PEMw==
MIME-Version: 1.0
X-Received: by 10.68.236.100 with SMTP id ut4mr38129830pbc.29.1391446763983;
	Mon, 03 Feb 2014 08:59:23 -0800 (PST)
Received: by 10.68.40.33 with HTTP; Mon, 3 Feb 2014 08:59:23 -0800 (PST)
In-Reply-To: <52EFC3AC.9030601@googlemail.com>
References: <CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com>
	<52EFC3AC.9030601@googlemail.com>
Date: Mon, 3 Feb 2014 16:59:23 +0000
Message-ID: <CACP9YJd4-fp+Pzj+2S7jPUV525T28Px1at4ikza33e9sERszNA@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: File not found when trying to run an executable not build by Yocto
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
X-List-Received-Date: Mon, 03 Feb 2014 16:59:28 -0000
Content-Type: multipart/alternative; boundary=047d7b33d99c175a3404f1837244

--047d7b33d99c175a3404f1837244
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 3, 2014 at 4:28 PM, Christian Ege <k4230r6@gmail.com> wrote:

>  Hi,
>
> Hi,
>
>  I am building an image for an embedded system using the chiefriver and
> kernel 3.12.9.  I am using Ubuntu as our base system.
>
>  The image builds and boots fine which is great but we have some binaries
> built on Ubuntu which must run on the Yocto image.  When we copy these
> across and try and run them we get a "File Not Found" error.
>
>  Why would this be?  Doing file on our ubuntu executables we get:
>
>  /bin/true: ELF 64-bit LSB executable, x86-64, version 1 (SYSV),
> dynamically linked (uses shared libs), for GNU/Linux 2.6.24,
> BuildID[sha1]=0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82, stripped
>
>   Just for the sake of completeness:
> - Have you either copied the files to /usr/bin or using ./executable_name?
> - Have you made a chmod+x executable_name before?
>

I was using ./.  The files are executable.


>
> Sometimes transfering files over ftp in ASCII mode results in funny
> behaviours....
>

Scp'ed so should be fine.


>
> regrads,
> Christian
>
>  The Yocto executables are the same except instead of GNU/Linux 2.6.24 it
> is 2.6.16.  It that a problem?
>
>  Also, on ubuntu we are running libc-2.17 but on Yocto it is libc-2.18.
>  Is that a problem?
>
>  Thanks for any assistance,
> Dave
>
>
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b33d99c175a3404f1837244
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Feb 3, 2014 at 4:28 PM, Christian Ege <span dir=3D"ltr">&lt=
;<a href=3D"mailto:k4230r6@gmail.com" target=3D"_blank">k4230r6@gmail.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Hi,<br>
    </div><div class=3D"im">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I am building an image for an embedded system using the
          chiefriver and kernel 3.12.9. =A0I am using Ubuntu as our base
          system. =A0</div>
        <div><br>
        </div>
        <div>The image builds and boots fine which is great but we have
          some binaries built on Ubuntu which must run on the Yocto
          image. =A0When we copy these across and try and run them we get
          a &quot;File Not Found&quot; error.</div>
        <div><br>
        </div>
        <div>Why would this be? =A0Doing file on our ubuntu executables we
          get:</div>
        <div><br>
        </div>
        <div>/bin/true: ELF 64-bit LSB executable, x86-64, version 1
          (SYSV), dynamically linked (uses shared libs), for GNU/Linux
          2.6.24,
          BuildID[sha1]=3D0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82,
          stripped<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote></div>
    Just for the sake of completeness:<br>
    - Have you either copied the files to /usr/bin or using
    ./executable_name? <br>
    - Have you made a chmod+x executable_name before?<br></div></blockquote=
><div><br></div><div>I was using ./. =A0The files are executable.</div><div=
>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
<div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <br>
    Sometimes transfering files over ftp in ASCII mode results in funny
    behaviours....<br></div></blockquote><div><br></div><div>Scp&#39;ed so =
should be fine.</div><div>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div bgc=
olor=3D"#FFFFFF" text=3D"#000000">

    <br>
    regrads,<br>
    Christian<br>
    <br>
    <blockquote type=3D"cite"><div class=3D"im">
      <div dir=3D"ltr">
        <div>The Yocto executables are the same except instead of
          GNU/Linux 2.6.24 it is 2.6.16. =A0It that a problem?</div>
        <div><br>
        </div>
        <div>Also, on ubuntu we are running libc-2.17 but on Yocto it is
          libc-2.18. =A0Is that a problem?</div>
        <div><br>
        </div>
        <div>Thanks for any assistance,</div>
        <div>Dave</div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      </div><pre>_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--047d7b33d99c175a3404f1837244--
