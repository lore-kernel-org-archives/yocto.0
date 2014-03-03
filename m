Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B82C9E009E3
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:44:08 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id oz11so2943047veb.6
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JaATWkiteVFfzqbV5pfvl6S6ALbmQA7t579cGdBl0HA=;
	b=nFXA3xebUrNKfT08mAXqKjOHTwF4htQWrRmttWxV/KSPWZODWdP+9j/+tof0365yLE
	zMxXv84mj4/MDR9E2AMqeFeZ+TmLKiWl5dSlCcaQCmRt6aQTX0ehn/HD48i2rD52lk+m
	Gfs5RhD3e/l8ZvZ6VNhj8GriznDiu6VTqh3XlNAu882lprqA/JCve249Z3msH2FTZglo
	D7HqgMf9kC26PHPWqyiY3GWILICqp9g17sWBICdGjJcXrUfJUzRyAm8hsLHmDti9BPk1
	y6DWXtgFR3iIRtuTik08pK8INFSLRafKK4nQclkyLvmV+e/cuj3333y/k3JeFvDRHM+G
	p8mQ==
MIME-Version: 1.0
X-Received: by 10.220.249.6 with SMTP id mi6mr829741vcb.33.1393865047463; Mon,
	03 Mar 2014 08:44:07 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 08:44:07 -0800 (PST)
In-Reply-To: <CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<53149766.2050608@dynamicdevices.co.uk>
	<2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
Date: Mon, 3 Mar 2014 09:44:07 -0700
Message-ID: <CAA7h+EoGtVAEMCaa6iamy4UKkrWRU4b4UVPAnUD2S06Dzwj+-A@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:44:11 -0000
Content-Type: multipart/alternative; boundary=089e013a062c04dc3a04f3b67f67

--089e013a062c04dc3a04f3b67f67
Content-Type: text/plain; charset=ISO-8859-1

Wrong one, sorry about that. Here is the output:

SRC_URI="http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gzfile://makefile.patch
file://msggen.pl.patch file://reautoconf.patch
file://user-declared-default-constructor.patch"


On Mon, Mar 3, 2014 at 9:40 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:

> Here is the ouput:
>
> SRC_URI="
> ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gzfile://re.patch"
>
>
> On Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Monday 03 March 2014 14:53:26 Alex J Lennon wrote:
>> > On 03/03/2014 14:36, Rick Bianchi wrote:
>> > > Does anyone know how I can get around this error? There is no such
>> > > package on sourceforge "Fetcher failure for URL:
>> > > 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
>> > > Unable to fetch URL from any source."
>> >
>> > Rick, as Paul mentioned there seems to be something really strange
>> going on.
>> >
>> > If you look in the docbook-utils-native recipe (which is at r3 for me in
>> > master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14
>> >
>> > That recipe doesn't use the openjade tarball although it has a
>> > dependency on openjade-native
>> >
>> > If you look at the openjade-native recipe it is at version 1.3.2
>> >
>> > So, you'd expect docbook-utils-native to be pulling down a 0.6.14
>> > docbook tarball, or if you were building openjade-native you'd expect
>> > the openjade 1.3.2 tarball to be pulled down (I believe)
>> >
>> > So it looks as though somehow there's some kind of corruption that is
>> > mixing up openjade with the 0.6.14 of docbook for some reason.
>> >
>> > i.e. I don't believe you're going to find a tarball of an
>> > openjade-0.6.14 release.
>>
>> This is my assessment of what's happening also. I can't understand how
>> this
>> could ever happen, but it looks like SRC_URI is being mixed up between
>> the two
>> recipes, and this is on the dylan (old stable) branch as well.
>>
>> > It might be better to try checkout out your layers again and doing a
>> > rebuild from scratch ?
>>
>> Before doing this, Rick could you run the following and post the output:
>>
>> bitbake -e docbook-utils-native | grep ^SRC_URI=
>>
>> Thanks,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>

--089e013a062c04dc3a04f3b67f67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wrong one, sorry about that. Here is the output:<br><=
/div><div><br></div><div>SRC_URI=3D&quot;<a href=3D"http://downloads.source=
forge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net=
/openjade/openjade-0.6.14.tar.gz</a>            file://makefile.patch      =
      file://msggen.pl.patch            file://reautoconf.patch            =
file://user-declared-default-constructor.patch&quot;<br>
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Mon, Mar 3, 2014 at 9:40 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirickkutta@g=
mail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Here is the ouput:<br>=
</div><div><br></div><div>SRC_URI=3D&quot;<a href=3D"ftp://sources.redhat.c=
om/pub/docbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz" target=
=3D"_blank">ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/d=
ocbook-utils-0.6.14.tar.gz</a>      file://re.patch&quot;<br>

</div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Mon, Mar 3, 2014 at 9:27 AM, Paul=
 Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:=
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Monday 03 March 2014 14:53:26 Alex J=
 Lennon wrote:<br>
&gt; On 03/03/2014 14:36, Rick Bianchi wrote:<br>
&gt; &gt; Does anyone know how I can get around this error? There is no suc=
h<br>
&gt; &gt; package on sourceforge &quot;Fetcher failure for URL:<br>
&gt; &gt; &#39;<a href=3D"http://downloads.sourceforge.net/openjade/openjad=
e-0.6.14.tar.gz" target=3D"_blank">http://downloads.sourceforge.net/openjad=
e/openjade-0.6.14.tar.gz</a>&#39;.<br>
&gt; &gt; Unable to fetch URL from any source.&quot;<br>
&gt;<br>
&gt; Rick, as Paul mentioned there seems to be something really strange goi=
ng on.<br>
&gt;<br>
&gt; If you look in the docbook-utils-native recipe (which is at r3 for me =
in<br>
&gt; master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14<br>
&gt;<br>
&gt; That recipe doesn&#39;t use the openjade tarball although it has a<br>
&gt; dependency on openjade-native<br>
&gt;<br>
&gt; If you look at the openjade-native recipe it is at version 1.3.2<br>
&gt;<br>
&gt; So, you&#39;d expect docbook-utils-native to be pulling down a 0.6.14<=
br>
&gt; docbook tarball, or if you were building openjade-native you&#39;d exp=
ect<br>
&gt; the openjade 1.3.2 tarball to be pulled down (I believe)<br>
&gt;<br>
&gt; So it looks as though somehow there&#39;s some kind of corruption that=
 is<br>
&gt; mixing up openjade with the 0.6.14 of docbook for some reason.<br>
&gt;<br>
&gt; i.e. I don&#39;t believe you&#39;re going to find a tarball of an<br>
&gt; openjade-0.6.14 release.<br>
<br>
</div>This is my assessment of what&#39;s happening also. I can&#39;t under=
stand how this<br>
could ever happen, but it looks like SRC_URI is being mixed up between the =
two<br>
recipes, and this is on the dylan (old stable) branch as well.<br>
<div><br>
&gt; It might be better to try checkout out your layers again and doing a<b=
r>
&gt; rebuild from scratch ?<br>
<br>
</div>Before doing this, Rick could you run the following and post the outp=
ut:<br>
<br>
bitbake -e docbook-utils-native | grep ^SRC_URI=3D<br>
<br>
Thanks,<br>
Paul<br>
<span><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--089e013a062c04dc3a04f3b67f67--
