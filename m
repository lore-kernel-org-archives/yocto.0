Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F174EE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 09:10:34 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id l8so3636142qaq.14
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 09:10:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=P0w8TBpYJuzJtnHgH3kWQ2aYFYb/JeVEZDf31IB/tXQ=;
	b=KxFcHXglGroi8fmy7a+kfw6vPfcpLX1sLg49j1xAWNlhScpwGyb96Xsimky/8GJ5nK
	xzaJlBv1gBlFmTfMBtgVg0BahUusvuhpluZYA3gLgDnym3ySEMiDLUuwIm/h6GPId56r
	RvdgPnLWejzSvThg4gcTZsOf4rfNaVAlfSnY4N2U6PWJAhsZh1ldYFOwv3NoxGRzYwmi
	hiklC+1wr9ttC//Gmj7fH1aU+x3yKX5t5D/PLk17bjIMXJKhx02ZzHhfxjAgewQfu9pU
	VguP6n3uNapOsJpIFl46gGnATyStt7VUklUNy9qdBEI0v+Erc/PkQsdLiTpeJSk9dUSL
	ocrw==
MIME-Version: 1.0
Received: by 10.49.127.199 with SMTP id ni7mr40536203qeb.17.1355245834221;
	Tue, 11 Dec 2012 09:10:34 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.128.40 with HTTP; Tue, 11 Dec 2012 09:10:34 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212110801200.23904@oneiric>
References: <alpine.DEB.2.02.1212110801200.23904@oneiric>
Date: Tue, 11 Dec 2012 09:10:34 -0800
X-Google-Sender-Auth: yqBg2RQSJ53FGulR0lYOEHhCk1Y
Message-ID: <CA+gsK-onggLFhVYTS3zwmrdvwkS_5oFDy4ai_A4WKzmZfyHdHA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkdvw7/FqzZH3X6EP2tMoVnnyka/bU6tfxKe1GkSXQJpM1BiF0nf4gsQdQaf6U2hSVfcwxw
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should users be able to run yocto's pre-built images standalone?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Dec 2012 17:10:35 -0000
Content-Type: multipart/alternative; boundary=047d7b6dcbd6883a2a04d096c251

--047d7b6dcbd6883a2a04d096c251
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,



> a basic question -- is it supported that users be able to download and
> run yocto's pre-built QEMU images without having to download an entire
> build system, and set up bitbake, etc?  theoretically, of course, it
> can be done, but it's not set up to do it conveniently (if it even
> should be).
>

IMHO that is exactly what the ADT installer does. OK, it could use some
enhancements but it lets you specify what pre-built images you would like
to use and sets it up, including QEMU and the related scripts.


>
>   first, one can't get yocto's qemu-related utilities without
> downloading either oe-core or a toolchain.  is that really necessary?
> how hard would it be to break out the QEMU stuff into a much smaller
> tarball if that's all people want?
>

I think you want at least QEMU, the scripts, the user-space NFS server and
the cross-toolchain. Quite frankly, what do you really do with just QEMU,
scripts and images? Either you want to build your own images then you need
Poky (the build system) or you want to do user-space development then you
need images and a cross-toolchain. Just booting an image into QEMU seems
quite boring to me.

>
>   and if that's done, certainly, the help messages from runqemu can be
> updated, since those utilities clearly assume they're running as part
> of a build infrastructure when that's not necessary.
>
> Fair enough, but if you could provide more details outlining what the
error message said, what the root cause of the problem was, and what you
think the error message should say, it would really help the developers to
make the improvements. Unless you are inclined to rummage through the code,
fix it and submit patches.

runqemu uses bitbake to determine the environment and infer the paths to
kernels and root fs images when using the short version of invoking it.
That is actually what the message says that you have on your webpage:

"In order for this script to dynamically infer paths to kernels or
filesystem images, you either need bitbake in your PATH or to source
oe-init-build-env before running this script"

However, you can directly invoke runqemu with paths to kernel and root fs
images:

$ runqemu /path/to/kernelimage /path/to/rootfsimage

and the paths can of course be absolute and relative. That is what ADT
does. ADT does not have bitbake included.


>   anyway, you can see the observations i made on my QEMU page.  it
> seems that, if you just want people to be able to *easily* fire up
> some pre-built images to see the beauty of yocto, you shouldn't make
> them download an entire build infrastructure they don't need.
>
> I looked at your page and, no offense, it seems more complicated to me
than it ought to be. Just use the ADT installer, provide your settings in
the adt-installer.conf file, and take it from there.


Cheers,
Rudi

--047d7b6dcbd6883a2a04d096c251
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Robert,<br><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">
<br>
a basic question -- is it supported that users be able to download and<br>
run yocto&#39;s pre-built QEMU images without having to download an entire<=
br>
build system, and set up bitbake, etc? =A0theoretically, of course, it<br>
can be done, but it&#39;s not set up to do it conveniently (if it even<br>
should be).<br></blockquote><div><br></div><div>IMHO that is exactly what t=
he ADT installer does. OK, it could use some enhancements but it lets you s=
pecify what pre-built images you would like to use and sets it up, includin=
g QEMU and the related scripts.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
<br>
=A0 first, one can&#39;t get yocto&#39;s qemu-related utilities without<br>
downloading either oe-core or a toolchain. =A0is that really necessary?<br>
how hard would it be to break out the QEMU stuff into a much smaller<br>
tarball if that&#39;s all people want?<br></blockquote><div><br></div><div>=
I think you want at least QEMU, the scripts, the user-space NFS server and =
the cross-toolchain. Quite frankly, what do you really do with just QEMU, s=
cripts and images? Either you want to build your own images then you need P=
oky (the build system) or you want to do user-space development then you ne=
ed images and a cross-toolchain. Just booting an image into QEMU seems quit=
e boring to me.=A0</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
=A0 and if that&#39;s done, certainly, the help messages from runqemu can b=
e<br>
updated, since those utilities clearly assume they&#39;re running as part<b=
r>
of a build infrastructure when that&#39;s not necessary.<br>
<br></blockquote><div>Fair enough, but if you could provide more details ou=
tlining what the error message said, what the root cause of the problem was=
, and what you think the error message should say, it would really help the=
 developers to make the improvements. Unless you are inclined to rummage th=
rough the code, fix it and submit patches.</div>
<div><br></div><div>runqemu uses bitbake to determine the environment and i=
nfer the paths to kernels and root fs images when using the short version o=
f invoking it. That is actually what the message says that you have on your=
 webpage:</div>
<div><br></div><div>&quot;<span style=3D"background-color:rgb(249,249,249);=
color:rgb(0,0,0);line-height:1.1em">In order for this script to dynamically=
 infer paths=A0</span><span style=3D"background-color:rgb(249,249,249);colo=
r:rgb(0,0,0);line-height:1.1em">to kernels or filesystem images, you either=
 need=A0</span><span style=3D"background-color:rgb(249,249,249);color:rgb(0=
,0,0);line-height:1.1em">bitbake in your PATH or to source oe-init-build-en=
v=A0</span><span style=3D"background-color:rgb(249,249,249);color:rgb(0,0,0=
);line-height:1.1em">before running this script&quot;</span></div>
<div><span style=3D"background-color:rgb(249,249,249);color:rgb(0,0,0);line=
-height:1.1em"><br></span></div><div><span style=3D"background-color:rgb(24=
9,249,249);color:rgb(0,0,0);line-height:1.1em">However, you can directly in=
voke runqemu with paths to kernel and root fs images:</span></div>
<div><span style=3D"background-color:rgb(249,249,249);color:rgb(0,0,0);line=
-height:1.1em"><br></span></div><div><font color=3D"#000000"><span style=3D=
"line-height:14.28819465637207px">$ runqemu /path/to/kernelimage /path/to/r=
ootfsimage</span></font></div>
<div><font color=3D"#000000"><span style=3D"line-height:14.28819465637207px=
"><br></span></font></div><div><font color=3D"#000000"><span style=3D"line-=
height:14.28819465637207px">and the paths can of course be absolute and rel=
ative. That is what ADT does. ADT does not have bitbake included.</span></f=
ont></div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
=A0 anyway, you can see the observations i made on my QEMU page. =A0it<br>
seems that, if you just want people to be able to *easily* fire up<br>
some pre-built images to see the beauty of yocto, you shouldn&#39;t make<br=
>
them download an entire build infrastructure they don&#39;t need.<br>
<br></blockquote><div>I looked at your page and, no offense, it seems more =
complicated to me than it ought to be. Just use the ADT installer, provide =
your settings in the adt-installer.conf file, and take it from there.</div>
<div>=A0</div><div><br></div><div>Cheers,</div><div>Rudi=A0</div></div></di=
v>

--047d7b6dcbd6883a2a04d096c251--
