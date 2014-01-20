Return-Path: <ashish.dalela@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69C11E003D8
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 21:45:46 -0800 (PST)
Received: by mail-la0-f46.google.com with SMTP id b8so5176347lan.19
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 21:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6pQVvoSVC7osE5NhN86c6ys404M3/ct23EerfO9djk8=;
	b=knuJmepbHbIrJNu9s0z1CntQitIsaezzKG8SfeF3AFHXIQi6m82GB/MiVQAf4rqtbn
	6jfsneOFcKM6PMrA/r53ixICHH30jwyUn2/JT2hk148ZaYNqD2NjF1pAsm8D3kvwO6ZM
	abntaWS+Idfeq6fS1htwWJek7MO/wbiA/+Glg65dO9jiLZILErc0KSimU+QZj2OYenBn
	IHIQHizfLrtu4AA/V8qhXR3wNCAze8OTJ1p+YTH+FssJRtNKTgAaJRzye7geXp9ucaVM
	MuNeT/MdkDmUlnsYU9fX/zF90JmPlSKng+BRKAYdjST4sWvpQxXT6+sJFeIgBYwAu+XE
	3uYA==
MIME-Version: 1.0
X-Received: by 10.112.150.100 with SMTP id uh4mr10122697lbb.3.1390196744305;
	Sun, 19 Jan 2014 21:45:44 -0800 (PST)
Received: by 10.112.96.198 with HTTP; Sun, 19 Jan 2014 21:45:44 -0800 (PST)
In-Reply-To: <CABhkJRf5PSkpjwzdD2Wweo02QTV2vLq9WSL33aY7+7dKRBfeog@mail.gmail.com>
References: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
	<CAMKF1sqjX1R4M7+HFgHz43WmG+PwEN=8RJpYP1-tO7p4ny4OwA@mail.gmail.com>
	<CABhkJRf5PSkpjwzdD2Wweo02QTV2vLq9WSL33aY7+7dKRBfeog@mail.gmail.com>
Date: Mon, 20 Jan 2014 11:15:44 +0530
Message-ID: <CABhkJRc_V2uA40Hct1FbJ8GpBMSsum+NRm8Hkq9Z18spqfWxag@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-oracle-java fails
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
X-List-Received-Date: Mon, 20 Jan 2014 05:45:47 -0000
Content-Type: multipart/alternative; boundary=047d7b33da5c1cc1bf04f06067a2

--047d7b33da5c1cc1bf04f06067a2
Content-Type: text/plain; charset=ISO-8859-1

I need help on this one to resolve the problem. I have noticed that the
Java download from Oracle website has library dependencies on both .52 and
.53 versions. This in itself is unusual because in Yocto we expect only one
library version. But, as it may be, to use this recipe I need to get two
versions of libav.

1. How can I force libav recipe to build two versions (.52 and .53) instead
of one? I am currently copying .53 to .52 in the do_install_append, but it
doesn't seem to help.

2. How does Yocto build determine that a package does not support a
particular version? What files/data is it looking up before it comes to
that conclusion?

Thanks
-Ashish



On Sat, Jan 18, 2014 at 1:46 AM, Ashish Dalela <ashish.dalela@gmail.com>wrote:

> I already have the following in my jdk and jre recipes:
>
> DEPENDS = "libav gtk+ libxslt libxtst"
>
> Should I have RDEPENDS?
>
> Thanks
> -Ashish
>
>
> On Sat, Jan 18, 2014 at 1:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Fri, Jan 17, 2014 at 11:46 AM, Ashish Dalela <ashish.dalela@gmail.com>
>> wrote:
>> >
>> > Hi,
>> >
>> > I'm trying to build JDK and JRE using the meta-oracle-java recipes. The
>> > recipes build fine, but during do_rootfs (core-image-basic) I see the
>> > following errors:
>> >
>> > FOR JRE:
>> > | Computing transaction...error: Can't install
>> > oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides
>> libavcodec.so.52
>> >
>> > FOR JDK:
>> > | Computing transaction...error: Can't install
>> > oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides
>> > libavcodec.so.52(LIBAVCODEC_52)
>> >
>> > meta/recipes-multimedia/libav/libav_0.7.4.bb builds libavcodec.so.53.
>> >
>> > Does anyone know how to fix this issue?
>>
>> add libav to DEPENDS in recipe which is providing oracle-jse-jdk
>>
>> >
>> > I already tried manually copying libavcodec.so.53 to libavcodec.so.52
>> but it
>> > does not help.
>> >
>> > Thanks
>> > -Ashish
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--047d7b33da5c1cc1bf04f06067a2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I need help on this one to resolve the problem. I have not=
iced that the Java download from Oracle website has library dependencies on=
 both .52 and .53 versions. This in itself is unusual because in Yocto we e=
xpect only one library version. But, as it may be, to use this recipe I nee=
d to get two versions of libav.<div>
<br></div><div>1. How can I force libav recipe to build two versions (.52 a=
nd .53) instead of one? I am currently copying .53 to .52 in the do_install=
_append, but it doesn&#39;t seem to help.=A0</div><div><br></div><div>2. Ho=
w does Yocto build determine that a package does not support a particular v=
ersion? What files/data is it looking up before it comes to that conclusion=
?=A0</div>
<div><br></div><div>Thanks</div><div>-Ashish</div><div><br></div></div><div=
 class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Jan 18, 2=
014 at 1:46 AM, Ashish Dalela <span dir=3D"ltr">&lt;<a href=3D"mailto:ashis=
h.dalela@gmail.com" target=3D"_blank">ashish.dalela@gmail.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I already have the followin=
g in my jdk and jre recipes:<div><br></div><div><div>DEPENDS =3D &quot;liba=
v gtk+ libxslt libxtst&quot;</div>
</div><div><br></div><div>Should I have RDEPENDS?</div><div><br></div><div>
Thanks</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>-Ashish</di=
v></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D=
"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Jan 18, 2014 at 1:=
23 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com"=
 target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Fri, Jan 17, 2014 at 11:46 AM, Ashis=
h Dalela &lt;<a href=3D"mailto:ashish.dalela@gmail.com" target=3D"_blank">a=
shish.dalela@gmail.com</a>&gt; wrote:<br>


&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to build JDK and JRE using the meta-oracle-java recipes=
. The<br>
&gt; recipes build fine, but during do_rootfs (core-image-basic) I see the<=
br>
&gt; following errors:<br>
&gt;<br>
&gt; FOR JRE:<br>
&gt; | Computing transaction...error: Can&#39;t install<br>
&gt; oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides libavcodec.s=
o.52<br>
&gt;<br>
&gt; FOR JDK:<br>
&gt; | Computing transaction...error: Can&#39;t install<br>
&gt; oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides<br>
&gt; libavcodec.so.52(LIBAVCODEC_52)<br>
&gt;<br>
&gt; meta/recipes-multimedia/libav/<a href=3D"http://libav_0.7.4.bb" target=
=3D"_blank">libav_0.7.4.bb</a> builds libavcodec.so.53.<br>
&gt;<br>
&gt; Does anyone know how to fix this issue?<br>
<br>
</div>add libav to DEPENDS in recipe which is providing oracle-jse-jdk<br>
<div><br>
&gt;<br>
&gt; I already tried manually copying libavcodec.so.53 to libavcodec.so.52 =
but it<br>
&gt; does not help.<br>
&gt;<br>
&gt; Thanks<br>
&gt; -Ashish<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b33da5c1cc1bf04f06067a2--
