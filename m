Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 566ECE00736
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:58:22 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id ff1so3118193vbb.29
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:58:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=SjjmIqOl/N0jIJZ6rBcqmO33WvV7Kao7PywO6vYlwvs=;
	b=E2wC91TAVJk7veAbfuGss68tewXbo5ceUL0YPWreHGYrXbmUFn53MJqrV3DT0KkyKp
	vrcE4mUoJPYTrC417WlbWj0ODHrx74hpe+jPS1FGLu6nZBjcy8dSNb5oZATAlVVI+YcN
	eP6LWHOkUgGTfCi1VP1nbSlLwJ0XxRgXGfTNK8mKdDR4oPil83MgtJhgFBL2sjpij8kC
	nLo5k37YlBtLQQmQyxw9l+OlBi7BPHCbMofj31ohIzCZjeq7jrm3IPW70byYDHWFeymG
	vdwtdRoFPOJ8IaAYVBCfVG+3mSIq20Sa90O5iFYvZcRLSyWaIVAoN1ulRWnb+nNJ2zLH
	DVMA==
X-Received: by 10.52.26.229 with SMTP id o5mr5287382vdg.66.1360450701216; Sat,
	09 Feb 2013 14:58:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.229.195 with HTTP; Sat, 9 Feb 2013 14:58:01 -0800 (PST)
X-Originating-IP: [5.13.217.124]
In-Reply-To: <51115568.50505@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-3-git-send-email-lists@philipp-wagner.com>
	<5111545D.40906@r-finger.com> <51115568.50505@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 10 Feb 2013 00:58:01 +0200
Message-ID: <CAK18fxEDEEvySFoKpmYKj-2EAB4AWYoQhMuJyV+mAymS5Q78sg@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQkc/MS9Vd5uYU8I1nAiD+FIDHCiDkc0lhEKH/Pj56I779cOgy9sFJI+c0OSgn4yEFj657hz
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] Add RPROVIDES for OpenGL libraries
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
X-List-Received-Date: Sat, 09 Feb 2013 22:58:22 -0000
Content-Type: multipart/alternative; boundary=20cf3079bd90c7cdc304d5529c24

--20cf3079bd90c7cdc304d5529c24
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 5, 2013 at 8:54 PM, Philipp Wagner <lists@philipp-wagner.com>wrote:

> Am 05.02.2013 19:50, schrieb Tomas Frydrych:
> > On 30/01/13 21:51, Philipp Wagner wrote:
> >> https://github.com/djwillis/meta-raspberrypi/issues/55
> >>
> >>  PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
> >> +RPROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
> >
> > As I noted in the above issue, this really is wrong; there is *no* libgl
> > provided by the RPi firmware.
>
> In the bug report, Andrei also mentions that it is required for some
> reason, but I don't know exactly what the reason is.
>
> Andrei, could you explain that in more detail?
>

Well it was a workaround. In this way opengl distro features would point to
our libraries even if that is not the right thing to do. Think about
libsdl. I actually did this for this case as i remember. libsdl was a
dependency for omxplayer and libsdl was triggering mesa in build because of
this opengl dependency taken from DISTRO FEATURES. So I made this to trick
the package not to depend on mesa but on rpi graphic libraries.

But I dropped this ugly thing. We need a real way to fix this now. There is
a discussion on ml already about this.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3079bd90c7cdc304d5529c24
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Tue, Feb 5, 2013 at 8:54 PM, Philipp Wagner <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@philipp-wagne=
r.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Am 05.02.2013 19:50, schrieb Tomas Frydrych:=
<br>
<div>&gt; On 30/01/13 21:51, Philipp Wagner wrote:<br>
&gt;&gt; <a href=3D"https://github.com/djwillis/meta-raspberrypi/issues/55"=
 target=3D"_blank">https://github.com/djwillis/meta-raspberrypi/issues/55</=
a><br>
&gt;&gt;<br>
&gt;&gt; =A0PROVIDES =3D &quot;virtual/libgl virtual/libgles2 virtual/egl&q=
uot;<br>
&gt;&gt; +RPROVIDES =3D &quot;virtual/libgl virtual/libgles2 virtual/egl&qu=
ot;<br>
&gt;<br>
&gt; As I noted in the above issue, this really is wrong; there is *no* lib=
gl<br>
&gt; provided by the RPi firmware.<br>
<br>
</div>In the bug report, Andrei also mentions that it is required for some<=
br>
reason, but I don&#39;t know exactly what the reason is.<br>
<br>
Andrei, could you explain that in more detail?<br></blockquote><div><br></d=
iv><div>Well it was a=A0workaround. In this way opengl distro features woul=
d point to our libraries even if that is not the right thing to do. Think a=
bout libsdl. I actually did this for this case as i remember. libsdl was a =
dependency for omxplayer and libsdl was triggering mesa in build because of=
 this opengl dependency taken from DISTRO FEATURES. So I made this to trick=
 the package not to depend on mesa but on rpi graphic libraries.=A0</div>



<div><br></div><div>But I dropped this ugly thing. We need a real way to fi=
x this now. There is a=A0discussion=A0on ml already about this.=A0</div></d=
iv>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div styl=
e=3D"text-align:center">



<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>



</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" tar=
get=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</div></div>

--20cf3079bd90c7cdc304d5529c24--
