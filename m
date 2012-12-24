Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC92E0146D
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:12:03 -0800 (PST)
Received: by mail-la0-f44.google.com with SMTP id d3so8004881lah.3
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 19:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JoSCMAcwQEYvTra6QnuJ0QnDTlzfnwR6ECmsd0MgdAw=;
	b=K+vfWsgSSqJG156pouOT81pY9ZSr6zU+8FcGwbnKwpZfMCaw8SGjb9X+IayVVP/jmf
	apaSynVAxBnwfqRjmomBqPU+45jUs6v9yQwmsIDU1RCKLZ55qGwqcqGAbA66WBuV/55c
	7ouqHemz0fd4N+nlbx4gy1XUa/+H1cUtu8EFkvK6RTzadwgA8kSCEMg6Am+6Nc6tbL9V
	unvnMtXW91dtYOF++UhfGVF6As2OCVPAhiVZg5WBFKYB5grdiEJ1WdS66Q+BkQjOVlTc
	A/hQuZWdQpkSrmXwgRHjxck8i9XJtPVTIr8xBtlscmN4Z5H5nACBYjwkOok2nKJudR2b
	C9WQ==
MIME-Version: 1.0
Received: by 10.112.50.205 with SMTP id e13mr8170650lbo.57.1356318721478; Sun,
	23 Dec 2012 19:12:01 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Sun, 23 Dec 2012 19:12:01 -0800 (PST)
In-Reply-To: <-2529861647849882481@unknownmsgid>
References: <-2529861647849882481@unknownmsgid>
Date: Sun, 23 Dec 2012 23:12:01 -0400
Message-ID: <CADkTA4N3yAAgtsxtSy_Dg=h2-4sK=DJ5rpR71x1XFjkyq47Tqw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Lai Eddy <eddy.lai.tw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: no /tmp/work/../linux-standard-build source output
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
X-List-Received-Date: Mon, 24 Dec 2012 03:12:03 -0000
Content-Type: multipart/alternative; boundary=f46d0401fe3b988f4c04d1908f76

--f46d0401fe3b988f4c04d1908f76
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 23, 2012 at 7:10 PM, Lai Eddy <eddy.lai.tw@gmail.com> wrote:

> Hi,
>
> I=92m using yocto 1.3 (poky-8.0) with jasperforest BSP,
> sometimes =93bitbake core-image-minimal=94 did create files in
> /tmp/work/xxx-poky-linux/linux-yocto-xxx/linux-xxx-standard-build , but
> always create new image in /tmp/deploy/image folder (file date time is ne=
w)
>

Have you looked in:

  /tmp/work/xxx-poky-linux/linux-yocto-xxx/linux

That's your source directory. The linux-yocto recipes build with split
source and object directories.

Cheers,

Bruce


> every =93bitbake core-image-minimal=94 build finished with successfully, =
why
> there=92s no source files in the linux-xxx-standard-build? will the conte=
nt
> of the /tmp/deply/image build with previous-built binarys?
>
> Eddy Lai / NCUT Taiwan
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--f46d0401fe3b988f4c04d1908f76
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Dec 23, 2012 at 7:10 PM, Lai Eddy <span dir=3D"ltr">&lt;<a =
href=3D"mailto:eddy.lai.tw@gmail.com" target=3D"_blank">eddy.lai.tw@gmail.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><div style=3D"font-family:&#39;Microsoft JhengHei UI&=
#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Ma=
lgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&=
#39;,Ebrima,sans-serif;font-size:16px">

<div>Hi,</div><div>=A0</div><div>I=92m using yocto 1.3 (poky-8.0) with jasp=
erforest BSP,</div><div>sometimes=A0=93bitbake core-image-minimal=94 did cr=
eate files in /tmp/work/xxx-poky-linux/linux-yocto-xxx/linux-xxx-standard-b=
uild , but always create new image in /tmp/deploy/image folder (file date t=
ime is new)</div>
</div></div></blockquote><div><br></div><div style>Have you looked in:</div=
><div style><br></div><div style><span style=3D"font-family:&#39;Microsoft =
JhengHei UI&#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&=
#39;,&#39;Malgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,=
&#39;Lao UI&#39;,Ebrima,sans-serif;font-size:16px">=A0 /tmp/work/xxx-poky-l=
inux/</span><span style=3D"font-family:&#39;Microsoft JhengHei UI&#39;,Cali=
bri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Malgun Goth=
ic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#39;,Ebri=
ma,sans-serif;font-size:16px">linux-yocto-xxx/linux=A0</span><br>
</div><div style><span style=3D"font-family:&#39;Microsoft JhengHei UI&#39;=
,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Malgun=
 Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#39;=
,Ebrima,sans-serif;font-size:16px"><br>
</span></div><div style><span style=3D"font-family:&#39;Microsoft JhengHei =
UI&#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39=
;Malgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao =
UI&#39;,Ebrima,sans-serif;font-size:16px">That&#39;s your source directory.=
 The linux-yocto recipes build with split</span></div>
<div style><span style=3D"font-family:&#39;Microsoft JhengHei UI&#39;,Calib=
ri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Malgun Gothi=
c&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#39;,Ebrim=
a,sans-serif;font-size:16px">source and object directories.</span></div>
<div style><span style=3D"font-family:&#39;Microsoft JhengHei UI&#39;,Calib=
ri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Malgun Gothi=
c&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#39;,Ebrim=
a,sans-serif;font-size:16px"><br>
</span></div><div style><span style=3D"font-family:&#39;Microsoft JhengHei =
UI&#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39=
;Malgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao =
UI&#39;,Ebrima,sans-serif;font-size:16px">Cheers,</span></div>
<div style><span style=3D"font-family:&#39;Microsoft JhengHei UI&#39;,Calib=
ri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39;Malgun Gothi=
c&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao UI&#39;,Ebrim=
a,sans-serif;font-size:16px"><br>
</span></div><div style><span style=3D"font-family:&#39;Microsoft JhengHei =
UI&#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei UI&#39;,&#39=
;Malgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tunga,&#39;Lao =
UI&#39;,Ebrima,sans-serif;font-size:16px">Bruce</span></div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div><div style=3D"font-family:&#39;Microsof=
t JhengHei UI&#39;,Calibri,&#39;Segoe UI&#39;,Meiryo,&#39;Microsoft YaHei U=
I&#39;,&#39;Malgun Gothic&#39;,&#39;Khmer UI&#39;,&#39;Nirmala UI&#39;,Tung=
a,&#39;Lao UI&#39;,Ebrima,sans-serif;font-size:16px">

<div>every=A0=93bitbake core-image-minimal=94 build finished with successfu=
lly, why there=92s no source files in the linux-xxx-standard-build?=A0will =
the content of the /tmp/deply/image build with=A0previous-built=A0binarys?=
=A0</div><div>

=A0</div><div>Eddy Lai / NCUT Taiwan</div></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Th=
ou shalt not follow the NULL pointer, for chaos and madness await thee at i=
ts end&quot;
</div></div>

--f46d0401fe3b988f4c04d1908f76--
