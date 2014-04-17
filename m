Return-Path: <ronaldo.viera@gmail.com>
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 348DBE00C1A;
	Thu, 17 Apr 2014 10:23:31 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id w10so582115pde.10
	for <multiple recipients>; Thu, 17 Apr 2014 10:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fCax+ZtOTw4zEaqD9FyUgeGIP0krRd4BhUbNd9iOHLQ=;
	b=Cn0645penNHNzwUlPnmr73YSNbIGVJTceF6hu+uIV7SLV+nEiidJWHJ0rv0X3K9dUh
	MIe+ythsnGFmUCOsjWnT3xryhROhFz4MuE+wxJ9G8rlKqyOAK2vyup+NtDI0SFNFbntI
	F+6Mh+U+QMy7BYJHRlYuOPO1z8ksGrT/Nev1kkq02EgB6ENw794dX2hvo2r6u0UwonpC
	XZRjS65vhzJrxRDit2BIYLYWNAM1QTGTPZdokEK6WSbQLQunLurx9t/h+8Z/TxxkWUhN
	6yxchWfuD8aQQL9QfY7lZeNx0L62ATmQefOLX/hqQyLnBjqxnOWIsFDwk368kxys63Th
	G1nQ==
X-Received: by 10.66.142.201 with SMTP id ry9mr16936378pab.14.1397755411364;
	Thu, 17 Apr 2014 10:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.83.226 with HTTP; Thu, 17 Apr 2014 10:23:11 -0700 (PDT)
In-Reply-To: <534EFAAB.2010706@yoctoproject.org>
References: <CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com>
	<534EFAAB.2010706@yoctoproject.org>
From: Ronaldo Nunez <ronaldo.viera@gmail.com>
Date: Thu, 17 Apr 2014 14:23:11 -0300
Message-ID: <CALTF=oL8u8PzxKt3cJZ+MxOHQ+bd0wcm37xk+hX_yW15OH2aMA@mail.gmail.com>
To: Michael Halstead <michael@yoctoproject.org>
Cc: yocto@yoctoproject.org
Subject: Re: Git fetch with user/pass in a recipe
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
X-List-Received-Date: Thu, 17 Apr 2014 17:23:33 -0000
Content-Type: multipart/alternative; boundary=001a11344126c701f104f7404a4a

--001a11344126c701f104f7404a4a
Content-Type: text/plain; charset=UTF-8

Thank you Michael! Worked as a charm!


2014-04-16 18:48 GMT-03:00 Michael Halstead <michael@yoctoproject.org>:

>  On 04/16/2014 02:15 PM, Ronaldo Nunez wrote:
>
> Hi all!
>
>  I'm trying to create a custom recipe to a proprietary software from my
> company. The code should be fetched from a git server, with username and
> password authentication through a http connection (port 8080).
>
>  From the terminal I use the following command line to clone the project:
>
>  $ git clone http://username:pass@server:8080/project.git
>
>  well in the bitbake recipe, I tried the following in SRC_URI variable,
> with no success:
>
>  SRC_URI = "git://username:pass@server:8080/project.git;protocol=http"<git://username:pass@server:8080/project.git;protocol=http>
>
>  I also tried:
>
>  SRC_URI = "git://server:8080/project.git;protocol=http;user=username"
>
>
> It isn't mentioned at
> http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#git-fetcherbut looking at
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/git.py?h=dorait seems that including the password as part of the user parameter should
> work.
>
> For example,
> SRC_URI =
> "git://server:8080/project.git;protocol=http;user=username:password"
>
>
> Michael Halstead
> Yocto Project / Sys Admin
>
>
>
>  Again, with no success.
>
>  Well, any help is welcome. Thanks in advance.
>
>  --
> Ronaldo Nunez
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Ronaldo Nunez

--001a11344126c701f104f7404a4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Michael! Worked as a charm!=C2=A0</div><div clas=
s=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-04-16 18:48 GMT-0=
3:00 Michael Halstead <span dir=3D"ltr">&lt;<a href=3D"mailto:michael@yocto=
project.org" target=3D"_blank">michael@yoctoproject.org</a>&gt;</span>:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">
    <div>On 04/16/2014 02:15 PM, Ronaldo Nunez
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi all!
        <div><br>
        </div>
        <div>I&#39;m trying to create a custom recipe to a proprietary
          software from my company. The code should be fetched from a
          git server, with username and password authentication through
          a http connection (port 8080).</div>
        <div><br>
        </div>
        <div>From the terminal I use the following command line to clone
          the project:</div>
        <div><br>
        </div>
        <div>$ git clone <a href=3D"http://username:pass@server:8080/projec=
t.git" target=3D"_blank">http://username:pass@server:8080/project.git</a></=
div>
        <div><br>
        </div>
        <div>well in the bitbake recipe, I tried the following in
          SRC_URI variable, with no success:</div>
        <div><br>
        </div>
        <div>SRC_URI =3D
          <a href=3D"mailto:git://username:pass@server:8080/project.git;pro=
tocol=3Dhttp" target=3D"_blank">&quot;git://username:pass@server:8080/proje=
ct.git;protocol=3Dhttp&quot;</a></div>
        <div><br>
        </div>
        <div>I also tried:</div>
        <div><br>
        </div>
        <div>
          <div>SRC_URI =3D
            &quot;git://server:8080/project.git;protocol=3Dhttp;user=3Duser=
name&quot;<br>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div>
    It isn&#39;t mentioned at
    <a href=3D"http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bit=
bake-user-manual.html#git-fetcher" target=3D"_blank">http://www.yoctoprojec=
t.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#git-fetcher</a>
    but looking at
    <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/=
lib/bb/fetch2/git.py?h=3Ddora" target=3D"_blank">http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/git.py?h=3Ddora</a>
    it seems that including the password as part of the user parameter
    should work.<br>
    <br>
    For example,<br>
    SRC_URI =3D
    &quot;git://server:8080/project.git;protocol=3Dhttp;user=3Dusername:pas=
sword&quot;<span class=3D"HOEnZb"><font color=3D"#888888"><br>
    <br>
    <br>
    <pre cols=3D"72">Michael Halstead
Yocto Project / Sys Admin</pre></font></span><div class=3D"">
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
          </div>
          <div><br>
          </div>
          <div>Again, with no success.</div>
          <div><br>
          </div>
          <div>Well, any help is welcome. Thanks in advance.</div>
          <div><br>
          </div>
          -- <br>
          <div dir=3D"ltr">Ronaldo Nunez</div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div></div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr">Ronaldo Nunez</div>
</div>

--001a11344126c701f104f7404a4a--
