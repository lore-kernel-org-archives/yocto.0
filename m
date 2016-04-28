Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AA7E00DE1; Thu, 28 Apr 2016 09:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50E76E00DDA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:16:20 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id u185so94525777iod.3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gwXZPBCChKN2D/L7zSFD7MUKOsO7kouZUntaQPYij0M=;
	b=goRYbCvXOvcSsiBLzYduYEbZs3VRMoEt86mKj8HGrmj9Cae+NdKIx165j3CN1TWmdr
	aSOKYHNyQgWrcSoDR/FxmhJCqdwClsmD8RAYcWsECfMh35Z2PmQhX7Aoc8pWP/Gu4Zua
	j8W7TuUwjvi8CtAyaGXX4u9/isaTrd5iDNi0Ay/LnwfwIaSK7xljdrca0hbIGcwSnYK7
	/6fYrin6HF0S6Ss7cbqCYgn/6wOWdAuUHRu9K42OCO+NRg5y42T5LxgVRBv2TN/0QvFZ
	rBX6d5/VRSmUEmsbFJen7PdGChq8Oz2fQpa1esZnI+z2HKCzObEOvKqYPqCdXOkcOCxu
	bKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gwXZPBCChKN2D/L7zSFD7MUKOsO7kouZUntaQPYij0M=;
	b=B0zLTFAticfzn4GDHXyO2d47oDIQA4rYmNvf860WYNCQK8hUhhluNsi9fF7+9Yz2pt
	Szv/U+JrSxYgx7J+ldYAme1eNT8T543gaeRBiIvMdPLeiZx2faYDTDm1QoguX1SFizd5
	9rSMF1m/8pr/WrZDud/6L3EsXhMcjG4uCXy1mLsxVpHoYKClE7JmuraD8j0Zj6pMnh/N
	p1JQqHDi8+RtdBpu1/k/u/c+Gx8rGBxSeg3PpI7VbFI84DIPUUYuoGXRj5tVdhHTwi9e
	okzZUa8mdn8WDxQv59lKxAxjam5S30Fk9d25ibymmYh8Es+x0Oc8AIvGVw/oj+kCPft4
	8lXw==
X-Gm-Message-State: AOPr4FWICoGvtgiEuTwBdYAnAMYTbgFDGSZ726jeQ/38w6E+c6dLA2TTShgw5FSZukjiRJvE1rHRB4M/R7aVdPH4
X-Received: by 10.107.179.136 with SMTP id c130mr17965362iof.99.1461860179861; 
	Thu, 28 Apr 2016 09:16:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Thu, 28 Apr 2016 09:16:00 -0700 (PDT)
In-Reply-To: <OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Apr 2016 17:16:00 +0100
Message-ID: <CAJTo0LasFQc_JpTncGnmww=wa6TgCd2FGPb9rf84MDgEnCyhQA@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 16:16:23 -0000
Content-Type: multipart/alternative; boundary=001a1148578cbb989005318dd8a5

--001a1148578cbb989005318dd8a5
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 17:09, <S.Jaritz@esa-grimma.de> wrote:

> EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'CFLAGS=${CFLAGS}
> -I${S}/include' 'BUILDDIR=${S}' 'DESTDIR=${D}'"
>

Neater to pass DESTDIR via do_install, so remove DESTDIR from here.

However you want to tell it where PREFIX is, and that goes into the build
files, so add PREFIX=${prefix}.  This will put the install into the right
directory (/usr) instead of the default (/usr/local).


> inherit autotools-brokensep
>

You're not using autotools so don't do this.


> do_compile() {
>         oe_runmake all 'CC=${CC}'
> }
>
> do_install() {
>         oe_runmake install 'DESTDIR=${D}'
> }
>


> FILES_${PN} += "/user/local"


The workaround didn't work as you put "user" instead of "usr", but by
passing PREFIX you can remove this line as pulling all of /usr/local into
PN would break packaging.

Ross

--001a1148578cbb989005318dd8a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2016 at 17:09,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><span class=3D""><font size=3D"2" fa=
ce=3D"sans-serif">EXTRA_OEMAKE =3D &quot;&#39;CC=3D${CC}&#39; &#39;RANLIB=
=3D${RANLIB}&#39;
&#39;AR=3D${AR}&#39; &#39;CFLAGS=3D${CFLAGS} -I${S}/include&#39; &#39;BUILD=
DIR=3D${S}&#39; &#39;DESTDIR=3D${D}&#39;&quot;</font>
<br></span></blockquote><div><br></div><div>Neater to pass DESTDIR via do_i=
nstall, so remove DESTDIR from here.</div><div><br></div><div>However you w=
ant to tell it where PREFIX is, and that goes into the build files, so add =
PREFIX=3D${prefix}.=C2=A0 This will put the install into the right director=
y (/usr) instead of the default (/usr/local).</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><span class=3D""><font size=3D"2" face=3D"sans-seri=
f">inherit autotools-brokensep</font>
<br></span></blockquote><div><br></div><div>You&#39;re not using autotools =
so don&#39;t do this.</div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D""><font size=3D"2" face=3D"sans-serif">do_compile() {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_run=
make
all &#39;CC=3D${CC}&#39;</font>
<br><font size=3D"2" face=3D"sans-serif">}</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">do_install() {</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_run=
make
install &#39;DESTDIR=3D${D}&#39;</font>
<br><font size=3D"2" face=3D"sans-serif">}</font>
<br></span></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><sp=
an class=3D""></span><font size=3D"2" face=3D"sans-serif">FILES_${PN} +=3D =
&quot;/user/local&quot;</font></blockquote><div><br></div><div>The workarou=
nd didn&#39;t work as you put &quot;user&quot; instead of &quot;usr&quot;, =
but by passing PREFIX you can remove this line as pulling all of /usr/local=
 into PN would break packaging.</div><div><br></div><div>Ross=C2=A0</div></=
div><br></div></div>

--001a1148578cbb989005318dd8a5--
