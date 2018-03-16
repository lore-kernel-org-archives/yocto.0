Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF76E00B52; Fri, 16 Mar 2018 09:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.47 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D40FE00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:50:38 -0700 (PDT)
Received: by mail-pl0-f47.google.com with SMTP id u11-v6so2593300plq.1
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4XO2ntc9Duc1UCv6cUwweffvDpMRRHCy59iaA3y5WKs=;
	b=ukoZn8s6D6Y/lPZ3ilLIHvTHGnLTW2gnDb+EUidJ4M7ex9vf2hijUDR2nmccUwRxg6
	bJ22BcIsEHWQiGZvsVzYUdYBeZzUlsw/vLTkZdGdoHhmvgMX2GonceAZafz9mOu4iT5N
	dmzV88p6lynp7rCRxsZCYHa45oAaqDKeaSQvhLSne9kzyCt/Umuhi6NwrSXPo6SlPGpg
	N3DHd/eIrX1P9aRQzLOG8kBiCRTb0+rhIttpikLu02IoLOW5YiYXFKSNPkBKmioG4fo4
	+PLagkFrfbP1WR/4jQSp690/Pjgis/ysnxrxkjbeFLA5I8gi7tw/jx/JXqtcYx39xeql
	YxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4XO2ntc9Duc1UCv6cUwweffvDpMRRHCy59iaA3y5WKs=;
	b=VEqH6GCrt8A/wt4T0OXUC7hpehbofs3eLe2cub91mOG00RQGFRFXEXqpnHGa+MkOBO
	HsjxKva1Wiyp/U2gTYTHGNvPHLxi1YkX0M47YX+5aK3d7maO4iiP7ZREnEz04SY/um9U
	LrGa65gsHbe+OLlvIRbj7VGagXtwP/KIYKZ/l44cwtXpCbLsLXoPYpGj7CWZrtZh4KgJ
	0qRqwBRU6szPDAosS7lwHHSmKQhIkq9ALvkfSSRzkw9RSeGx4q5jnQQ5GoNkSAh52msu
	lG+PcV7T5Jyowr306YzF/R2sMgHAsavfLbeLHxhDUl4vsE7tiGK0BSYtj9kju77fCofr
	t5sA==
X-Gm-Message-State: AElRT7EfOD1a+Dl+fS7fWL/1Jsj8BlPUrO6LGY3k9fzZmGmsAkEjPj8M
	VPYjtSskJG7yeu8bbYzakYTNyw/VUx68Zyq5bRE=
X-Google-Smtp-Source: AG47ELt2DRWvIoKAvhPXz3E9Cx0mxHynokbbDWdjraaXhBmTLDy6B+16b9vbRlQ5DhX96LaYcTpQDBVnEhM1KH+Uz4k=
X-Received: by 2002:a17:902:8bc2:: with SMTP id
	r2-v6mr2853286plo.213.1521219037769; 
	Fri, 16 Mar 2018 09:50:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Fri, 16 Mar 2018 09:50:37 -0700 (PDT)
In-Reply-To: <3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 16 Mar 2018 17:50:37 +0100
Message-ID: <CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Fri, 16 Mar 2018 16:50:39 -0000
Content-Type: multipart/alternative; boundary="0000000000005f353d05678a6871"

--0000000000005f353d05678a6871
Content-Type: text/plain; charset="UTF-8"

per using recipe https://github.com/scipy/scipy/issues/8226


SUMMARY = "Scientific Library for Python"
SECTION = "devel/python"
HOMEPAGE = "https://pypi.python.org/pypi/scipy"

LICENSE = "BSD-3-Clause"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"

PYPI_PACKAGE="scipy"

SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
SRC_URI[sha256sum] =
"87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"

inherit pypi setuptools distutils

RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
DEPENDS += "python-numpy"


I am getting error to fetch scipy do_fetch error


WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
attempting MIRRORS if available
ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
--progress=dot -v failed with exit code 8, output:
--2018-03-16 17:43:34--
https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz
Resolving files.pythonhosted.org (files.pythonhosted.org)... 151.101.17.63,
2a04:4e42:4::319
Connecting to files.pythonhosted.org
(files.pythonhosted.org)|151.101.17.63|:443...
connected.
HTTP request sent, awaiting response... 404 Not Found
2018-03-16 17:43:35 ERROR 404: Not Found.

Any help?


On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>
>> Hello all,
>>
>> I wonder if there is scipy recipe available?
>>
>
> Not yet:
>
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=scipy
>
> It appears to be blocked by:
>    https://github.com/scipy/scipy/issues/8226
> but apparently that's a bitbake issue, not a spip one.
> Care to take a look?
>
>
>> Thanks.
>>
>>
>>
>
> --
> # Randy MacLeod.  WR Linux
> # Wind River an Intel Company
>

--0000000000005f353d05678a6871
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">per using recipe=C2=A0<a href=3D"https://github.com/scipy/=
scipy/issues/8226" target=3D"_blank">https://github.com/<wbr>scipy/scipy/is=
sues/8226</a>=C2=A0<div><br><div><br></div><div><pre style=3D"box-sizing:bo=
rder-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Me=
nlo,Courier,monospace;font-size:11.9px;margin-top:0px;margin-bottom:16px;pa=
dding:16px;overflow:auto;line-height:1.45;background-color:rgb(246,248,250)=
;border-radius:3px;color:rgb(36,41,46);font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;text-=
decoration-style:initial;text-decoration-color:initial"><code style=3D"box-=
sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono=
&quot;,Menlo,Courier,monospace;font-size:11.9px;padding:0px;margin:0px;back=
ground:transparent none repeat scroll 0% 0%;border-radius:3px;word-break:no=
rmal;white-space:pre-wrap;border:0px none;display:inline;overflow:visible;l=
ine-height:inherit">SUMMARY =3D &quot;Scientific Library for Python&quot;
SECTION =3D &quot;devel/python&quot;
HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/pypi/scipy" target=3D=
"_blank">https://pypi.python.org/pypi/<wbr>scipy</a>&quot;

LICENSE =3D &quot;BSD-3-Clause&quot;
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3D<wbr>d0db8f4148a3d5534c=
fb93be78f928<wbr>7c&quot;

PYPI_PACKAGE=3D&quot;scipy&quot;

SRC_URI[md5sum] =3D &quot;<wbr>53fa34bd3733a9a4216842b6000f73<wbr>16&quot;
SRC_URI[sha256sum] =3D &quot;<wbr>87ea1f11a0e9ec08c264dc64551d50<wbr>1fa307=
289460705f6fccd84cbfc792<wbr>6d10&quot;

inherit pypi setuptools distutils

RDEPENDS_${PN} +=3D &quot;python-core python-numpy-native python-distutils&=
quot;
DEPENDS +=3D &quot;python-numpy&quot;</code></pre><br></div><div>I am getti=
ng error to fetch scipy do_fetch error</div></div><div><br><br>WARNING: sci=
py-1.0-r0 do_fetch: Failed to fetch URL <a href=3D"https://files.pythonhost=
ed.org/packages/source/s/scipy/scipy-1.0.tar.gz">https://files.pythonhosted=
.org/packages/source/s/scipy/scipy-1.0.tar.gz</a>, attempting MIRRORS if av=
ailable<br>ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command exp=
ort DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-idNNJsmT3C&q=
uot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export=
 ftp_proxy=3D<br>--progress=3Ddot -v failed with exit code 8, output:<br>--=
2018-03-16 17:43:34--=C2=A0 <a href=3D"https://files.pythonhosted.org/packa=
ges/source/s/scipy/scipy-1.0.tar.gz">https://files.pythonhosted.org/package=
s/source/s/scipy/scipy-1.0.tar.gz</a><br>Resolving <a href=3D"http://files.=
pythonhosted.org">files.pythonhosted.org</a> (<a href=3D"http://files.pytho=
nhosted.org">files.pythonhosted.org</a>)... 151.101.17.63, 2a04:4e42:4::319=
<br>Connecting to <a href=3D"http://files.pythonhosted.org">files.pythonhos=
ted.org</a> (<a href=3D"http://files.pythonhosted.org">files.pythonhosted.o=
rg</a>)|151.101.17.63|:443... connected.<br>HTTP request sent, awaiting res=
ponse... 404 Not Found<br>2018-03-16 17:43:35 ERROR 404: Not Found.<br><br>=
</div><div>Any help?<br></div><div><br></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Thu, Mar 15, 2018 at 9:35 PM, Randy Ma=
cLeod <span dir=3D"ltr">&lt;<a href=3D"mailto:randy.macleod@windriver.com" =
target=3D"_blank">randy.macleod@windriver.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><span class=3D"">On 2018-03-15 01:56 PM, Peter B=
alazovic wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello all,<br>
<br>
I wonder if there is scipy recipe available?<br>
</blockquote>
<br></span>
Not yet:<br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/recipes=
/?q=3Dscipy" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedd=
ed.or<wbr>g/layerindex/branch/master/rec<wbr>ipes/?q=3Dscipy</a><br>
<br>
It appears to be blocked by:<br>
=C2=A0 =C2=A0<a href=3D"https://github.com/scipy/scipy/issues/8226" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/scipy/scip<wbr>y/issues/82=
26</a><br>
but apparently that&#39;s a bitbake issue, not a spip one.<br>
Care to take a look?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks.<br>
<br>
<br><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></span></blockquote></div><br></div>

--0000000000005f353d05678a6871--
