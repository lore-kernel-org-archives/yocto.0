Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0EBAE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 10:41:26 -0800 (PST)
Received: by lagw12 with SMTP id w12so3829482lag.35
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 10:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Tjm4Si1o1bBMjJQvi5mQgVWD5tN5SvK4TZHb4qj+CtM=;
	b=TUGlJZwArNb9TFWWe4bquhO4eSOw9kmYYZudMOFJxE49s84wGiUKGqkFB4dlFh+ovr
	GT6RWXotHBDPQlFSdgaMTtiuw+aN1f+v3LBR0ldRRy8DDsF1HIZiAp3TISZhBClCygag
	bhUdKK+BHLGEYuvjDIwOENKvcR6FRPIiHKAVY=
MIME-Version: 1.0
Received: by 10.152.125.20 with SMTP id mm20mr2970498lab.6.1329417685140; Thu,
	16 Feb 2012 10:41:25 -0800 (PST)
Received: by 10.152.111.225 with HTTP; Thu, 16 Feb 2012 10:41:25 -0800 (PST)
In-Reply-To: <CADzUK1+MjieJUsHcafSqGetUXiKVKs+4GdrqE4eRA8SJXjhJhg@mail.gmail.com>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
	<1329321197.30001.6.camel@babel.joshhome>
	<CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
	<1329368164.2747.9.camel@babel.joshhome>
	<1329378772.2747.24.camel@babel.joshhome>
	<CADzUK1+MjieJUsHcafSqGetUXiKVKs+4GdrqE4eRA8SJXjhJhg@mail.gmail.com>
Date: Thu, 16 Feb 2012 10:41:25 -0800
Message-ID: <CAMKF1sopsgTRZ013nek7pJoc6hAPKCrQrOe_2j2baoO2+MCWcQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Thu, 16 Feb 2012 18:41:27 -0000
Content-Type: multipart/alternative; boundary=f46d04374589e183bc04b9192c35

--f46d04374589e183bc04b9192c35
Content-Type: text/plain; charset=UTF-8

On Thursday, February 16, 2012, Autif Khan <autif.mlist@gmail.com> wrote:
>> Hello,
>>
>> On Thu, 2012-02-16 at 10:26 +0530, Joshua Immanuel wrote:
>>> Can you please explain little bit more on what INSANE_SKIP_${PN} =
>>> "dev-so" does. I don't find any documentation on it.
>>
>> I guess, it suppresses the warnings stating that an non-dev package
>> contains symlink. This is the warning I got, when I packaged protobuf
>> for yocto
>
> In the e-mail I mentioned that if you are using M2 1.2 (means the
> milestone 2 of version 1.2). 1,2 final will be released sometime in
> the next few weeks/months.
>
> Sometime between 1.1 and 1.2 M2 - the behavior has been changed where
> the warning you described below has been changed to an error - thereby
> - the said .so files are not actually included.
>
> This does not apply if you are using 1.0 or 1.1 (not sure about 1.1
> myself - I jumped from 1.0 to 1.2 M2)
>
> Eventually - if/when you will be using a newer release of yocto - your
> recipe will fail to work as expected - unless you have that insane
> skip.
>


Did you even try to understand what his original problem was ?
If not go back to first post and reread it


>
>>
>>> WARNING: QA Issue: non -dev/-dbg/-nativesdk package contains symlink
.so:
>>> protobuf path
'/work/core2-poky-linux/protobuf-2.4.1-r1/packages-split/protobuf/usr/lib/libprotobuf.so'
>>> WARNING: QA Issue: protobuf:
/work/core2-poky-linux/protobuf-2.4.1-r1/packages-split/protobuf/usr/lib/libprotobuf.so
>>> contains probably-redundant RPATH /usr/lib
>>
>> Adding the line INSANE_SKIP_${PN} = "dev-so" suppressed the above
>> warnings.
>
> This is correct.
>

--f46d04374589e183bc04b9192c35
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, February 16, 2012, Autif Khan &lt;<a href=3D"mailto:au=
tif.mlist@gmail.com">autif.mlist@gmail.com</a>&gt; wrote:<br>&gt;&gt; Hello=
,<br>&gt;&gt;<br>&gt;&gt; On Thu, 2012-02-16 at 10:26 +0530, Joshua Immanue=
l wrote:<br>
&gt;&gt;&gt; Can you please explain little bit more on what INSANE_SKIP_${P=
N} =3D<br>&gt;&gt;&gt; &quot;dev-so&quot; does. I don&#39;t find any docume=
ntation on it.<br>&gt;&gt;<br>&gt;&gt; I guess, it suppresses the warnings =
stating that an non-dev package<br>
&gt;&gt; contains symlink. This is the warning I got, when I packaged proto=
buf<br>&gt;&gt; for yocto<br>&gt;<br>&gt; In the e-mail I mentioned that if=
 you are using M2 1.2 (means the<br>&gt; milestone 2 of version 1.2). 1,2 f=
inal will be released sometime in<br>
&gt; the next few weeks/months.<br>&gt;<br>&gt; Sometime between 1.1 and 1.=
2 M2 - the behavior has been changed where<br>&gt; the warning you describe=
d below has been changed to an error - thereby<br>&gt; - the said .so files=
 are not actually included.<br>
&gt;<br>&gt; This does not apply if you are using 1.0 or 1.1 (not sure abou=
t 1.1<br>&gt; myself - I jumped from 1.0 to 1.2 M2)<br>&gt;<br>&gt; Eventua=
lly - if/when you will be using a newer release of yocto - your<br>&gt; rec=
ipe will fail to work as expected - unless you have that insane<br>
&gt; skip.<br>&gt;<br><br><br>Did you even try to understand what his origi=
nal problem was ?<br>If not go back to first post and reread it<br><br><br>=
&gt;<br>&gt;&gt;<br>&gt;&gt;&gt; WARNING: QA Issue: non -dev/-dbg/-nativesd=
k package contains symlink .so:<br>
&gt;&gt;&gt; protobuf path &#39;/work/core2-poky-linux/protobuf-2.4.1-r1/pa=
ckages-split/protobuf/usr/lib/libprotobuf.so&#39;<br>&gt;&gt;&gt; WARNING: =
QA Issue: protobuf: /work/core2-poky-linux/protobuf-2.4.1-r1/packages-split=
/protobuf/usr/lib/libprotobuf.so<br>
&gt;&gt;&gt; contains probably-redundant RPATH /usr/lib<br>&gt;&gt;<br>&gt;=
&gt; Adding the line INSANE_SKIP_${PN} =3D &quot;dev-so&quot; suppressed th=
e above<br>&gt;&gt; warnings.<br>&gt;<br>&gt; This is correct.<br>&gt;

--f46d04374589e183bc04b9192c35--
