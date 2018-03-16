Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34DE8E009AC; Fri, 16 Mar 2018 09:57:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C580FE007E1
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:57:21 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id k79-v6so2913293ita.2
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c56ce5H1xa9mQKiNNYxplNIJ/cYCKIvPpHV4+ThT55c=;
	b=QrYUuvHRbSx2eOd+uUt029SgOEsURagRFqizNEXIeRU295B2v+tEzC7+UNVfstmOnh
	e/C4jbt2MN+1rincBJP7oK/c9K3n0GHoEQqurQ6PmebL/bKcsSMvbnPEaP5kWHBOK1Ee
	zOA/Mxk6rg06A/6yTzsE6smGUGkckQHr6ijc2rQW8g2UptChF/rpNORTL2O5sep0CSjX
	o9/NW6QottA3S3p9N9fOPLRc/hD0fPyqJYHtYvrjtNwUO09fLnvnNqQ95ChDKu8PgTnC
	FtWAcTetOTU0UloGOlqYNDUiQJAoGY+3GUujdHvrTq9ouv7l6/yXsCg/pBvqjEfC7Q0+
	BY4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c56ce5H1xa9mQKiNNYxplNIJ/cYCKIvPpHV4+ThT55c=;
	b=Sm9MiqmYeSRVAUNwumtHhvchE0atwwt62WeMh704yaHFIWW1XgqtNZpIFAJsUM1B1t
	GTloMEq5yTUSn9GFr2JDGy9Dsscyggr5Mmz5nhROx1v4vdEfsEilY1w5DBcUvC/HLn0p
	gwVk1NbXpnAogbjUqfD4dBMn4HVuZZ5KkmBtvgN8jPxdiHoG5f+wRNkpL0BpTwgYj1NL
	84iQ3dtPTYOWqUgwz0OEs4h8x0dV2aCejJS4dzYPNL96euJUC0KwGI/TVr/h7NDUzjkk
	x0c42hEsYhFuP8789DEl+KcpvOKUtUxO5iIwy+Vz6wNLdjce+U6uARIb2TEJoL6wo95b
	Ql+w==
X-Gm-Message-State: AElRT7F6Lb9wsi+id8HekQCNcVEsO+dc21AwutmjY9y+jSBgSFi4GUI7
	v/A0EEs8r1Zo2vVn3aiZEyMwHZQLCOQUfN7ZjaI92A==
X-Google-Smtp-Source: AG47ELs114D3Qq+FAATh0t91tAGdhb/hULRz420BugsNtZsxLR1OMOfvA7e245z294OO+Kb6tZNpeMwXVETFn37bPSY=
X-Received: by 2002:a24:b918:: with SMTP id
	w24-v6mr2940555ite.127.1521219441097; 
	Fri, 16 Mar 2018 09:57:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 16 Mar 2018 09:57:00 -0700 (PDT)
In-Reply-To: <CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Mar 2018 16:57:00 +0000
Message-ID: <CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
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
X-List-Received-Date: Fri, 16 Mar 2018 16:57:24 -0000
Content-Type: multipart/alternative; boundary="000000000000699d1b05678a8094"

--000000000000699d1b05678a8094
Content-Type: text/plain; charset="UTF-8"

You're getting a "file not found" for the URL it is looking for.  According
to https://pypi.python.org/pypi/scipy, the version is 1.0.0 not 1.0.

Ross

On 16 March 2018 at 16:50, Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> per using recipe https://github.com/scipy/scipy/issues/8226
>
>
> SUMMARY = "Scientific Library for Python"
> SECTION = "devel/python"
> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>
> LICENSE = "BSD-3-Clause"
> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
>
> PYPI_PACKAGE="scipy"
>
> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
>
> inherit pypi setuptools distutils
>
> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
> DEPENDS += "python-numpy"
>
>
> I am getting error to fetch scipy do_fetch error
>
>
> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
> attempting MIRRORS if available
> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
> --progress=dot -v failed with exit code 8, output:
> --2018-03-16 17:43:34--  https://files.pythonhosted.
> org/packages/source/s/scipy/scipy-1.0.tar.gz
> Resolving files.pythonhosted.org (files.pythonhosted.org)...
> 151.101.17.63, 2a04:4e42:4::319
> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.101.17.63|:443...
> connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2018-03-16 17:43:35 ERROR 404: Not Found.
>
> Any help?
>
>
> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
> randy.macleod@windriver.com> wrote:
>
>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>>
>>> Hello all,
>>>
>>> I wonder if there is scipy recipe available?
>>>
>>
>> Not yet:
>>
>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=scipy
>>
>> It appears to be blocked by:
>>    https://github.com/scipy/scipy/issues/8226
>> but apparently that's a bitbake issue, not a spip one.
>> Care to take a look?
>>
>>
>>> Thanks.
>>>
>>>
>>>
>>
>> --
>> # Randy MacLeod.  WR Linux
>> # Wind River an Intel Company
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000699d1b05678a8094
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re getting a &quot;file not found&quot; for the UR=
L it is looking for.=C2=A0 According to <a href=3D"https://pypi.python.org/=
pypi/scipy">https://pypi.python.org/pypi/scipy</a>, the version is 1.0.0 no=
t 1.0.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 16 March 2018 at 16:50, Peter Balazovic <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blan=
k">balazovic.peter@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">per using recipe=C2=A0<a href=3D"https://github.=
com/scipy/scipy/issues/8226" target=3D"_blank">https://github.com/scip<wbr>=
y/scipy/issues/8226</a>=C2=A0<div><br><div><br></div><div><pre style=3D"box=
-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mon=
o&quot;,Menlo,Courier,monospace;font-size:11.9px;margin-top:0px;margin-bott=
om:16px;padding:16px;overflow:auto;line-height:1.45;background-color:rgb(24=
6,248,250);border-radius:3px;color:rgb(36,41,46);font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;text-decoration-style:initial;text-decoration-color:initial"><code sty=
le=3D"box-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liber=
ation Mono&quot;,Menlo,Courier,monospace;font-size:11.9px;padding:0px;margi=
n:0px;background:transparent none repeat scroll 0% 0%;border-radius:3px;wor=
d-break:normal;white-space:pre-wrap;border:0px none;display:inline;overflow=
:visible;line-height:inherit">SUMMARY =3D &quot;Scientific Library for Pyth=
on&quot;
SECTION =3D &quot;devel/python&quot;
HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/pypi/scipy" target=3D=
"_blank">https://pypi.python.org/pypi/<wbr>scipy</a>&quot;

LICENSE =3D &quot;BSD-3-Clause&quot;
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3Dd0db8f<wbr>4148a3d5534c=
fb93be78f9287c&quot;

PYPI_PACKAGE=3D&quot;scipy&quot;

SRC_URI[md5sum] =3D &quot;53fa34bd3733a9a4216842b6000f7<wbr>316&quot;
SRC_URI[sha256sum] =3D &quot;87ea1f11a0e9ec08c264dc64551d5<wbr>01fa30728946=
0705f6fccd84cbfc79<wbr>26d10&quot;

inherit pypi setuptools distutils

RDEPENDS_${PN} +=3D &quot;python-core python-numpy-native python-distutils&=
quot;
DEPENDS +=3D &quot;python-numpy&quot;</code></pre><br></div><div>I am getti=
ng error to fetch scipy do_fetch error</div></div><div><br><br>WARNING: sci=
py-1.0-r0 do_fetch: Failed to fetch URL <a href=3D"https://files.pythonhost=
ed.org/packages/source/s/scipy/scipy-1.0.tar.gz" target=3D"_blank">https://=
files.pythonhosted.<wbr>org/packages/source/s/scipy/<wbr>scipy-1.0.tar.gz</=
a>, attempting MIRRORS if available<br>ERROR: scipy-1.0-r0 do_fetch: Fetche=
r failure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quot;<wbr>unix:=
abstract=3D/tmp/dbus-<wbr>idNNJsmT3C&quot;; export SSH_AUTH_SOCK=3D&quot;/r=
un/user/1000/<wbr>keyring/ssh&quot;; export ftp_proxy=3D<br>--progress=3Ddo=
t -v failed with exit code 8, output:<br>--2018-03-16 17:43:34--=C2=A0 <a h=
ref=3D"https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar=
.gz" target=3D"_blank">https://files.pythonhosted.<wbr>org/packages/source/=
s/scipy/<wbr>scipy-1.0.tar.gz</a><br>Resolving <a href=3D"http://files.pyth=
onhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"http=
://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)...=
 151.101.17.63, 2a04:4e42:4::319<br>Connecting to <a href=3D"http://files.p=
ythonhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"h=
ttp://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)=
|151.<wbr>101.17.63|:443... connected.<br>HTTP request sent, awaiting respo=
nse... 404 Not Found<br>2018-03-16 17:43:35 ERROR 404: Not Found.<br><br></=
div><div>Any help?<br></div><div><br></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Mar 15, 2018 at 9:35 PM, Randy MacL=
eod <span dir=3D"ltr">&lt;<a href=3D"mailto:randy.macleod@windriver.com" ta=
rget=3D"_blank">randy.macleod@windriver.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span>On 2018-03-15 01:56 PM, Peter Balazovic wrot=
e:<br>
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
<br><span class=3D"m_-6603492087161229101HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"m_-6603492087161229101HOEnZb"><fo=
nt color=3D"#888888">
<br><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></span></font></span></blockquote></div><br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--000000000000699d1b05678a8094--
