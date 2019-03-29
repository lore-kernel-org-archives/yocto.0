Return-Path: <linuxhippy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A64E00D26; Fri, 29 Mar 2019 05:48:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (linuxhippy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB144E00D20
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 05:48:51 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id i2so1173829pgj.11
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 05:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=PXXj6fb5gV/3jQbpsxxaJC7uuCkt7oBOeaoLWpx3pgw=;
	b=kQD8U5Bn2p9kyMBkUoPPYpIblrMYeUDOEjohUTVPjat9oHAmrbE+8YZMs6HHY6A2tv
	22TIOQ0rrsuPXS7LAyvj6+BANw57qV6k7akKo7JWlA1hxmqh+O492OSgLnsVsq96schr
	v52O+3PXmtLeHPlYpPOY+jtz+00HkB7XzQoIQuxb5ge6ygR7w/txz+GGQnpNNS1NHAoX
	9VgAKRe3uozGwyvvm+6PgAzVpOA72cdbcO33Ew+9vwUpFiOmbW43NhKSvCdnDt6bTfZX
	alkbohrwf3x/5ZIse/uyFkOuIkaK6ES2+8VzU7eBDLuBVSBSx3HBmxDFwjwJ8ATwsB5o
	6NbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=PXXj6fb5gV/3jQbpsxxaJC7uuCkt7oBOeaoLWpx3pgw=;
	b=Vnrs1M2S951OMxQYd+raq15lpfnMMC/S2lDAGQoS+kXk9tdCx/a/UGFk+4JUUnJ/mm
	CgDve+QwofY42rWuXFSwOQ7cG5j4ARD4+j1b6H6MuOUAo0v93T1KCIE0m1JiqdaT+xGP
	2m9hZ25WpDu5/LjmtPeZ8KZyJrTIlNPAbUb9pUEjnbrKFMKp5wXRvz4RF2h2thQUa5qP
	RGmNBg8tIXDSRypUsI5lVC7D/W0vgu12ZH/n8PH4jpaJiT93a9rDlwTpSAS8YGgmX81/
	CWbeVPtqjXmgia+xovAZobLK+hOWQXcm00+qvWzFPbranCHzOQHmc+tcsbuaMl6PUloQ
	NyyQ==
X-Gm-Message-State: APjAAAUkoUjGvroUfWFQ/d/T9S6rdiZ5S3lgjbNvXvISecibEPFj7Rv7
	N1XQtYqi7NCBQMVR0HjUgIBYYLH2GuMylc0crf2Csg==
X-Google-Smtp-Source: APXvYqx0cm5InkHAM2MjUMrLOr88+VmreUp6ETJm8Fu4MPdgJG2S/KfCZEqCHlE5K+bm0gbxwA3/TtXBcTQ4BgemELI=
X-Received: by 2002:a63:7153:: with SMTP id b19mr39467489pgn.289.1553863730331;
	Fri, 29 Mar 2019 05:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
	<CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
	<CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
	<CAFvQSYRMG5VHoCbbZ6fHuRjT+Mae22XsERJCKgfNigX_eWu74w@mail.gmail.com>
	<CAJTo0LZB0siaFty7_K1J3b1JS8uG5JOwow=12fzuL0qSovuwtw@mail.gmail.com>
In-Reply-To: <CAJTo0LZB0siaFty7_K1J3b1JS8uG5JOwow=12fzuL0qSovuwtw@mail.gmail.com>
From: Clemens Eisserer <linuxhippy@gmail.com>
Date: Fri, 29 Mar 2019 13:48:37 +0100
Message-ID: <CAFvQSYRppKFuJTBJyediTxVmcoJAtwmT4ffj=RYuFErr6ohU9A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Fri, 29 Mar 2019 12:48:52 -0000
Content-Type: multipart/alternative; boundary="000000000000ad081b05853b179f"

--000000000000ad081b05853b179f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Burton,

Indeed, the luajit package contained the luajit.pc file as expected.

The issue was the _$PN appended to DEPENDS, when I removed it the build
succeeded:
changing DEPENDS_${PN} =3D "luajit" to DEPENDS =3D "luajit" did the trick.

However, I am still puzzled what happens here and why it worked before.

Br, Clemens




Am Fr., 29. M=C3=A4rz 2019 um 11:23 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:
>
> All I can say is stop digging around random paths and actually ask the
> system the questions you need answers to.
>
> - Does my recipe depend on luajit.
> Check that you have DEPENDS=3Dluajit.
>
> - What files does luajit ship.
> $ oe-pkgdata-util list-pkg-files -p luajit
> Does that include a /usr/lib/pkgconfig/luajit.pc?
>
> Ross
>
> On Fri, 29 Mar 2019 at 00:55, Clemens Eisserer <linuxhippy@gmail.com>
wrote:
> >
> > Hello Burton,
> >
> > > Check what luajit is shipping and compare that to what the pkgconfig
> > > is looking for.  Calling pkgconfig directly in your recipe's devshell
> > > is useful for this.
> >
> > Thanks for the hint regarding the devshell.
> >
> > Indeed, pkgconfig can not find luajit in the devshell - the path
> > specified as PKG_CONFIG_PATH is:
> >
build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcomp=
iler/0.1-r0/recipe-sysroot/usr/lib/pkgconfig
> > - however the folder pkgconfig does not even exist in there.
> >
> > Inside work/armv7.../ there is also a luajit directory, and there I
> > was able to find the pc-file:
> > /2.0.5-r0/sysroot-destdir/usr/lib/pkgconfig/luajit.pc
> >
> > So i wonder, are there some extra steps required to make the luajit
> > sysroot-destdir visible to luajit's recipe-sysroot?
> >
> > Thanks & br, Clemens

--000000000000ad081b05853b179f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Burton,<br>
<br>
Indeed, the luajit package contained the luajit.pc file as expected.<br>
<br>
The issue was the _$PN appended to DEPENDS, when I removed it the build suc=
ceeded:<br>
changing DEPENDS_${PN} =3D &quot;luajit&quot; to DEPENDS =3D &quot;luajit&q=
uot; did the trick.<br>
<br>
However, I am still puzzled what happens here and why it worked before.<br>
<br>
Br, Clemens</div><br>
<br>
<br>
<br>
Am Fr., 29. M=C3=A4rz 2019 um 11:23 Uhr schrieb Burton, Ross &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank" rel=3D"noreferrer">ross.bu=
rton@intel.com</a>&gt;:<br>
&gt;<br>
&gt; All I can say is stop digging around random paths and actually ask the=
<br>
&gt; system the questions you need answers to.<br>
&gt;<br>
&gt; - Does my recipe depend on luajit.<br>
&gt; Check that you have DEPENDS=3Dluajit.<br>
&gt;<br>
&gt; - What files does luajit ship.<br>
&gt; $ oe-pkgdata-util list-pkg-files -p luajit<br>
&gt; Does that include a /usr/lib/pkgconfig/luajit.pc?<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On Fri, 29 Mar 2019 at 00:55, Clemens Eisserer &lt;<a href=3D"mailto:l=
inuxhippy@gmail.com" target=3D"_blank" rel=3D"noreferrer">linuxhippy@gmail.=
com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello Burton,<br>
&gt; &gt;<br>
&gt; &gt; &gt; Check what luajit is shipping and compare that to what the p=
kgconfig<br>
&gt; &gt; &gt; is looking for.=C2=A0 Calling pkgconfig directly in your rec=
ipe&#39;s devshell<br>
&gt; &gt; &gt; is useful for this.<br>
&gt; &gt;<br>
&gt; &gt; Thanks for the hint regarding the devshell.<br>
&gt; &gt;<br>
&gt; &gt; Indeed, pkgconfig can not find luajit in the devshell - the path<=
br>
&gt; &gt; specified as PKG_CONFIG_PATH is:<br>
&gt; &gt; build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnue=
abi/xpcompiler/0.1-r0/recipe-sysroot/usr/lib/pkgconfig<br>
&gt; &gt; - however the folder pkgconfig does not even exist in there.<br>
&gt; &gt;<br>
&gt; &gt; Inside work/armv7.../ there is also a luajit directory, and there=
 I<br>
&gt; &gt; was able to find the pc-file:<br>
&gt; &gt; /2.0.5-r0/sysroot-destdir/usr/lib/pkgconfig/luajit.pc<br>
&gt; &gt;<br>
&gt; &gt; So i wonder, are there some extra steps required to make the luaj=
it<br>
&gt; &gt; sysroot-destdir visible to luajit&#39;s recipe-sysroot?<br>
&gt; &gt;<br>
&gt; &gt; Thanks &amp; br, Clemens<br>

--000000000000ad081b05853b179f--
