Return-Path: <meerkoetter@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D89FE00E03; Sun,  4 Dec 2016 13:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (meerkoetter[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f180.google.com (mail-wj0-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BEBE00DFB
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 13:41:31 -0800 (PST)
Received: by mail-wj0-f180.google.com with SMTP id qp4so275132260wjc.3
	for <yocto@yoctoproject.org>; Sun, 04 Dec 2016 13:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=z/z3Q+JwgRRmsKCGfubE2W4j1iUQ0zm1PYJpbeo7VAI=;
	b=NZW/fPKIwtStIa1htfbNx2ooChmB/vaNpmtEUQ+S6cNm2DZ9dfWeDUPm/hGckczU4Z
	gmXQMk3MX0DYA7nWW1oYO+fhlNBqAU2ZP9meDIOxjuY/5W7KovNP/KYJMe/+9OqIe7Rz
	PdYUMlZJUWRcTM30XgYLy+RBQ8NPszmDatHKpv+FTb9Br8iKXOfr3+hCN7Sp+VwR6XO0
	v5GVMEn/IM7Ql1yNxcTJNjFCedx6Mhll2Vq6jd/fckLpqC86Ydc0GefisWvkwnZn6szi
	QUicdRUsTy00i6UO5XBEaYHlSLHIrnmDzQp5AJOvFX+c80kGYdI3yf+pn1FfjejeoZ00
	OX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=z/z3Q+JwgRRmsKCGfubE2W4j1iUQ0zm1PYJpbeo7VAI=;
	b=cT/sjd8h+WmU/5rmZl9IqdgEm3wtVns+8CtIEiTf1HvfOMpS6gjuYXawOzbsB7Zm1/
	JfxJ94EfHATLa0F3GuqUojhFIZGxZ8IvSj7EgqCZORNQj1X6m8GOZ3fPGHNFo3RboYcG
	bWjacCpZjc7rJ+0nB2XIliwAbEPU1Ea7YBhnx8wlfrmdmfqzVEtQf/+Y2ikC2pUL6/qy
	UfOm8MrC+CypuPt0VTrQ2ykw6uwqPIPUr/6dYkRsX9UzFZxY98kL8y+IdB9jU1D3oTK6
	tmIiTZmFjlQw6PBssLU6+bwMVar48ekrABMnf7t4Ax+EBO0hNf9kKkBErTKH+SM5b0ll
	GIRg==
X-Gm-Message-State: AKaTC00lTGCsKxzMVHua5kvRlAhT8WmxBB+Hix31RjOIeckfzGOzUz6KBBW+gLmGkriLOpTb6qyErX3y2MN4Hw==
X-Received: by 10.194.187.103 with SMTP id fr7mr44990364wjc.99.1480887690267; 
	Sun, 04 Dec 2016 13:41:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.186.68 with HTTP; Sun, 4 Dec 2016 13:41:29 -0800 (PST)
Received: by 10.80.186.68 with HTTP; Sun, 4 Dec 2016 13:41:29 -0800 (PST)
In-Reply-To: <1563495.jI1DcjphDF@peggleto-mobl.ger.corp.intel.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3062695.A2rY8KLgxq@peggleto-mobl.ger.corp.intel.com>
	<CAEmxt=_CZtgSOXzJ_z-rCB+wBi=EXqPh=T_aa7pHMu5zmnAisA@mail.gmail.com>
	<1563495.jI1DcjphDF@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Frank_Meerk=C3=B6tter?= <meerkoetter@googlemail.com>
Date: Sun, 4 Dec 2016 22:41:29 +0100
Message-ID: <CAEmxt=-MDi_wBj+A6vuvw6vfVUAMmuaYmqXJ6bTEhyTzbDp5yA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Sun, 04 Dec 2016 21:41:34 -0000
Content-Type: multipart/alternative; boundary=047d7bd6bc9cbb13b10542dc0826

--047d7bd6bc9cbb13b10542dc0826
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am 04.12.2016 22:34 schrieb "Paul Eggleton" <paul.eggleton@linux.intel.com>=
:

On Sun, 04 Dec 2016 20:54:00 Frank Meerk=C3=B6tter wrote:
> Here is an example:
>
> ~/$  devtool add libuv https://github.com/libuv/libuv.git
>
> NOTE: Fetching git://github.com/libuv/libuv.git;protocol=3Dhttps...
>
> Traceback (most recent call
> last):
>
>   File "/home/fmee/hili_sdk/layers/poky/scripts/recipetool", line 120, in
> <module>
>     ret =3D main()
>   File "/home/fmee/hili_sdk/layers/poky/scripts/recipetool", line 109, in
> main
>     ret =3D args.func(args)
>   File "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create.py"=
,
> line 627, in create_recipe
>     handler.process(srctree_use, classes, lines_before, lines_after,
> handled, extravalues)
>   File
> "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/
create_buildsys.py",
> line 349, in process
>     values =3D AutotoolsRecipeHandler.extract_autotools_deps(lines_before=
,
> srctree, extravalues)
>   File
> "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/
create_buildsys.py",
> line 486, in extract_autotools_deps
>     RecipeHandler.load_binmap(tinfoil.config_data)
>   File "/home/fmee/hili_sdk/layers/poky/scripts/lib/recipetool/create.py"=
,
> line 150, in load_binmap
>     for line in f:
>   File
> "/home/fmee/hili_sdk/buildtools/sysroots/x86_64-
oesdk-linux/usr/lib/python3.
> 5/encodings/ascii.py", line 26, in decode
>     return codecs.ascii_decode(input, self.errors)[0]
> UnicodeDecodeError: 'ascii' codec can't decode byte 0xc5 in position 1774=
:
> ordinal not in range(128)
> ERROR: Command '. /home/fmee/hili_sdk/layers/poky/oe-init-build-env
> /home/fmee/hili_sdk > /dev/null && script -e -q -c "recipetool
> --color=3Dalways create --devtool -o /tmp/devtool238kzam0 '
> https://github.com/libuv/libuv.git'  -x
> /home/fmee/hili_sdk/workspace/sources/devtoolsrcsme6hih0 -N libuv"
> /dev/null' failed

Unfortunately I can't reproduce that issue here.

Within the SDK environment, if you run "python3" and then inside there:

import locale
locale.getpreferredencoding(False)

What does it print?


ANSI_X3.4-1968

--047d7bd6bc9cbb13b10542dc0826
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">Am 04.12.2016 22:34 schrieb &quot;Paul Eggleton&quot; &lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>=
&gt;:<br type=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"elided=
-text">On Sun, 04 Dec 2016 20:54:00 Frank Meerk=C3=B6tter wrote:<br>
&gt; Here is an example:<br>
&gt;<br>
&gt; ~/$=C2=A0 devtool add libuv <a href=3D"https://github.com/libuv/libuv.=
git" rel=3D"noreferrer" target=3D"_blank">https://github.com/libuv/<wbr>lib=
uv.git</a><br>
&gt;<br>
&gt; NOTE: Fetching git://<a href=3D"http://github.com/libuv/libuv.git;prot=
ocol=3Dhttps." rel=3D"noreferrer" target=3D"_blank">github.com/libuv/libuv.=
<wbr>git;protocol=3Dhttps.</a>..<br>
&gt;<br>
&gt; Traceback (most recent call<br>
&gt; last):<br>
&gt;<br>
&gt;=C2=A0 =C2=A0File &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/re=
cipetool&quot;, line 120, in<br>
&gt; &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0ret =3D main()<br>
&gt;=C2=A0 =C2=A0File &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/re=
cipetool&quot;, line 109, in<br>
&gt; main<br>
&gt;=C2=A0 =C2=A0 =C2=A0ret =3D args.func(args)<br>
&gt;=C2=A0 =C2=A0File &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/li=
b/recipetool/<wbr>create.py&quot;,<br>
&gt; line 627, in create_recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0handler.process(srctree_use, classes, lines_before,=
 lines_after,<br>
&gt; handled, extravalues)<br>
&gt;=C2=A0 =C2=A0File<br>
&gt; &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/lib/recipetool/<wbr=
>create_buildsys.py&quot;,<br>
&gt; line 349, in process<br>
&gt;=C2=A0 =C2=A0 =C2=A0values =3D AutotoolsRecipeHandler.<wbr>extract_auto=
tools_deps(lines_<wbr>before,<br>
&gt; srctree, extravalues)<br>
&gt;=C2=A0 =C2=A0File<br>
&gt; &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/lib/recipetool/<wbr=
>create_buildsys.py&quot;,<br>
&gt; line 486, in extract_autotools_deps<br>
&gt;=C2=A0 =C2=A0 =C2=A0RecipeHandler.load_binmap(<wbr>tinfoil.config_data)=
<br>
&gt;=C2=A0 =C2=A0File &quot;/home/fmee/hili_sdk/layers/<wbr>poky/scripts/li=
b/recipetool/<wbr>create.py&quot;,<br>
&gt; line 150, in load_binmap<br>
&gt;=C2=A0 =C2=A0 =C2=A0for line in f:<br>
&gt;=C2=A0 =C2=A0File<br>
&gt; &quot;/home/fmee/hili_sdk/<wbr>buildtools/sysroots/x86_64-<wbr>oesdk-l=
inux/usr/lib/python3.<br>
&gt; 5/encodings/ascii.py&quot;, line 26, in decode<br>
&gt;=C2=A0 =C2=A0 =C2=A0return codecs.ascii_decode(input, self.errors)[0]<b=
r>
&gt; UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xc5 i=
n position 1774:<br>
&gt; ordinal not in range(128)<br>
&gt; ERROR: Command &#39;. /home/fmee/hili_sdk/layers/<wbr>poky/oe-init-bui=
ld-env<br>
&gt; /home/fmee/hili_sdk &gt; /dev/null &amp;&amp; script -e -q -c &quot;re=
cipetool<br>
&gt; --color=3Dalways create --devtool -o /tmp/devtool238kzam0 &#39;<br>
&gt; <a href=3D"https://github.com/libuv/libuv.git" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/libuv/<wbr>libuv.git</a>&#39;=C2=A0 -x<br>
&gt; /home/fmee/hili_sdk/workspace/<wbr>sources/devtoolsrcsme6hih0 -N libuv=
&quot;<br>
&gt; /dev/null&#39; failed<br>
<br>
</div>Unfortunately I can&#39;t reproduce that issue here.<br>
<br>
Within the SDK environment, if you run &quot;python3&quot; and then inside =
there:<br>
<br>
import locale<br>
locale.getpreferredencoding(<wbr>False)<br>
<br>
What does it print?</blockquote></div></div></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">ANSI_X3.4-1968</div><div dir=3D"auto"></div><div dir=
=3D"auto"><div class=3D"gmail_extra"><br></div></div></div>

--047d7bd6bc9cbb13b10542dc0826--
