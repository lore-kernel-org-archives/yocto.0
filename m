Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C8CE00D88; Mon, 26 Aug 2019 13:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68C5E00C5C
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 13:51:59 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id x74so7129361ywx.6
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 13:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=z7Lo9dGjlQzb1L3o5yZKYD5+ayhrExKvnPec1OxNUok=;
	b=sS6y82WzfHdMZldJTzLH3Oh2NpTL+3bIo7kAXmUWCf/hgzBTvVYIto6sl0T1kF76uU
	QkhdrFUgRKvVFj6Ema8OzbKi4Z9f06z0mHYHZYdYE0M5JRoEuUj5BVHhfr57621jeuBX
	9oYe6pD+iPtX7I65s6dR5CbzyNopLF32vSmlCl7ulC7uco6mYBLum05UYRqI9lBdX5ZG
	9SydrJ3fUTjiat7C247Oo5FCBa05bxB0kkR/HSYh54q8Dua56WITSNRefxlwpg3oJn9m
	/jc93bhY1jjbGKl8MxEjrXXuuXd7ghwHDOAbPYjnhsCnEyUfs2DcRMvQhCT/kSG69ogY
	RWNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=z7Lo9dGjlQzb1L3o5yZKYD5+ayhrExKvnPec1OxNUok=;
	b=c4jC8y2Kd5S06SXy4j99R9OE3QDvBtn5KwKdS+nY/mOzLashi5pLpemxxp2W9wMXWf
	2ufWMpQNnqoL8dnCw65H4dHoEPJ9ccLYmKlAndmfeVzavlS/VZMDhNcHDdkz/OKHpkOo
	sWbLXPbVZ//TjG1p3SIGapN/7Pg36cixl4Suzf0Lgj4gRC6hlsBgFoxVoXH4GX3aPDd9
	o8BGgs3ZeTQ7/d+0wKB210e29Bzp5lgY8QiZ6JXd6NRgPQpfdNRYArooiAAVTP7y/vqa
	L78JD9OrViatGu7p0uEMwADNdKCXanMJBDj2/Vw/PcDkIMtBeE/wIrNqbNaorN7mAiI7
	eOSw==
X-Gm-Message-State: APjAAAVN+Wc5rz9We8sfgum/oXQOvrO5+GLkD5Dh1CJ6munCQmtarkvL
	ZHy7GruwamAM1Ao+ihDSGhJ1d89FBbgzUS2NMaTXC41/
X-Google-Smtp-Source: APXvYqy2VXptmsNKNVr8l0fE1ZcPf8LwYL3dxBAKvrf82mKhYK3A7+PMWFyFVv2SXFbkpSpCn35Z7VbhxOJYHKLHLTE=
X-Received: by 2002:a81:9144:: with SMTP id i65mr14196067ywg.361.1566852719021;
	Mon, 26 Aug 2019 13:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAKpuFdcoJr0c5fjCweYmkHxp1ap4Y7OpRvop4QF-6LORb3=_UA@mail.gmail.com>
	<6583e8cf-ad27-f1d4-153c-cfc875fc59e8@herbrechtsmeier.net>
In-Reply-To: <6583e8cf-ad27-f1d4-153c-cfc875fc59e8@herbrechtsmeier.net>
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Mon, 26 Aug 2019 22:51:48 +0200
Message-ID: <CAKpuFddNnu0DvZLbkWhB=P0oz0juCgJDTnDtgD0PmCHQ-+0k+A@mail.gmail.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: npm nodejs
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
X-List-Received-Date: Mon, 26 Aug 2019 20:52:03 -0000
Content-Type: multipart/alternative; boundary="000000000000bb916005910b53f8"

--000000000000bb916005910b53f8
Content-Type: text/plain; charset="UTF-8"

cool, get the feeling that this is an way in the right  direction.
Have you dropped the use of shrinkwrap an lockdown files?
As I understand npm package lock files have replaced this?

Den ons 21 aug. 2019 kl 21:24 skrev Stefan Herbrechtsmeier <
stefan@herbrechtsmeier.net>:

> Hi Jonas,
>
> Am 21.08.19 um 14:55 schrieb Jonas Andersson:
> > I have used Yocto and npm/nodejs now for about 1 year and think it works
> > but I not without some extra work. Are there any group working on
> > npm/nodejs? As I use it quite frequent and puts some extra work every
> > time i create an recipe I have some interest in supporting the work on
> > npm/nodejs to make it an better experience.
> >
> > I thinks It quite hard to follow all the npm/nodejs parts of
> > Yocto(devtool, fetcher and meta-oe/../nodejs), I get the feeling that
> > all parts not are in sync.
>
> I have start reworking the nodejs support but haven't the time to finish
> it.
>
> I have remove the use of the bitbake npm fetcher. I create a recipe per
> npm package major version. Thereby the recipe downloads the npm archive
> via https, extract it to /usr/lib/node_modules/name-major and creates
> links for the dependency packages and binaries. This avoids duplicated
> npm packages and allows a per package optimization like the remove of
> scripts, tests and documentations. Furthermore I can patch npm packages
> to use dynamic linking or build native packages.
>
> I have add a new plugin to the recipetool which creates a recipe from a
> npm package. It extract the license, dependencies and binaries from the
> package.json. Thereby the dependencies string is parsed and translated
> into a <package name>-<major version> or <package name>-0.<minor
> version> if major version is below 0. I assume that I can ignore the
> minor and patch version number and always use the latest compatible
> version.
>
> On top of recipetool I have a script with creates a recipe for a npm
> package and all its dependencies.
>
>
> Regards
>    Stefan
>

--000000000000bb916005910b53f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">cool, get the feeling that this is an way in the right=C2=
=A0 direction.<div>Have you dropped the use of shrinkwrap an lockdown files=
?<br>As I understand npm package lock files have replaced this?</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Den on=
s 21 aug. 2019 kl 21:24 skrev Stefan Herbrechtsmeier &lt;<a href=3D"mailto:=
stefan@herbrechtsmeier.net">stefan@herbrechtsmeier.net</a>&gt;:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi Jonas,<br>
<br>
Am 21.08.19 um 14:55 schrieb Jonas Andersson:<br>
&gt; I have used Yocto and npm/nodejs now for about 1 year and think it wor=
ks <br>
&gt; but I not without some extra work. Are there any group working on <br>
&gt; npm/nodejs? As I use it quite frequent and puts some extra work every =
<br>
&gt; time i create an recipe I=C2=A0have some interest in supporting the wo=
rk on <br>
&gt; npm/nodejs to make it an better experience.<br>
&gt; <br>
&gt; I thinks It quite hard to follow all the npm/nodejs parts of <br>
&gt; Yocto(devtool, fetcher and meta-oe/../nodejs), I get the feeling that =
<br>
&gt; all parts not are in sync.<br>
<br>
I have start reworking the nodejs support but haven&#39;t the time to finis=
h it.<br>
<br>
I have remove the use of the bitbake npm fetcher. I create a recipe per <br=
>
npm package major version. Thereby the recipe downloads the npm archive <br=
>
via https, extract it to /usr/lib/node_modules/name-major and creates <br>
links for the dependency packages and binaries. This avoids duplicated <br>
npm packages and allows a per package optimization like the remove of <br>
scripts, tests and documentations. Furthermore I can patch npm packages <br=
>
to use dynamic linking or build native packages.<br>
<br>
I have add a new plugin to the recipetool which creates a recipe from a <br=
>
npm package. It extract the license, dependencies and binaries from the <br=
>
package.json. Thereby the dependencies string is parsed and translated <br>
into a &lt;package name&gt;-&lt;major version&gt; or &lt;package name&gt;-0=
.&lt;minor <br>
version&gt; if major version is below 0. I assume that I can ignore the <br=
>
minor and patch version number and always use the latest compatible version=
.<br>
<br>
On top of recipetool I have a script with creates a recipe for a npm <br>
package and all its dependencies.<br>
<br>
<br>
Regards<br>
=C2=A0 =C2=A0Stefan<br>
</blockquote></div>

--000000000000bb916005910b53f8--
