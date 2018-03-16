Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 993DFE00903; Fri, 16 Mar 2018 10:37:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7659AE0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 10:37:00 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id l12so13507581ioc.10
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 10:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=ATPMAtKGYlMQX0szlKX2E92GUABjKtwILKZunAPT0cs=;
	b=MatOSLgggRBwbK1Dqdohe58FPfP9tgTHQZlRpijA1075AF3U6TLZ8DYt2Bf4NnC9eq
	WX+zM935PKoONOZSr5dzYGk6CwP2aEelaS04pm23llm9vp5CwyLkaulLLpjokDnv1RPk
	c/z3O4ZChAVtrLH8AY4reZNkfZCL2L2pHVavySryJboZLY9SB0bhy+Pe1MlYNgbXFfpC
	4wALJM8cSxPfUPqSC4KZAH+tg0WvikKKloKuVfba2jFi3V38Ur5YPYSYUCxuDES0p7vF
	/ksm/2ACsSuuDlodhFB1vpt9TSd/4ZMoGBm+lasLhOUDS3HQw/azpUEbV4T5j6cNlJDj
	Xx8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ATPMAtKGYlMQX0szlKX2E92GUABjKtwILKZunAPT0cs=;
	b=rbhS8Aom57m7sIAZ1LGYF2tCloPORplzfDvctOWbHvFd2J5u0fbMVC0E8bIF3TLUL6
	5VnJz/NxiUk6gRU3Pr0YEDWY9apAculqGeW5dx3VXrFbl84R/N2vAltz3nfBqVf7+JHZ
	ciOB3IJHVhinyQZ/E4YxCvNLvxgq7dPQlvmzju2YTLF8/cCc6/s3LirZEfaOLGFB3Drx
	DQ166s2/StAnJMMdx+7KL38K5OWr4jOd8C8nzosf/18iVkzYxHn5tvrJ+dwZGKrCWu0Q
	Yslbps5Qwibtz+7YtWHKQ8DT1DU/G1KAdwBu+oQ04J3E/HLX7og97UoZEuow/jol4hjA
	5U2g==
X-Gm-Message-State: AElRT7F6YxGNteS4m29FnFofQInN2mWUGI2f9+MoU7NASoDqdHE/QsWZ
	7yMs8CzKDxKFfnBVcpEbzGnb+TjG+MXMLaVN0eM9fg==
X-Google-Smtp-Source: AG47ELtyXjSfLZn9gckekq/2f3Sn7YRmCdFStKwFrpMKLguIvryt7H0dxyt8CMLxVAAxt5nKRaMFWVUxVXczI+LG4Zw=
X-Received: by 10.107.7.68 with SMTP id 65mr2842553ioh.216.1521221819499; Fri,
	16 Mar 2018 10:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 16 Mar 2018 10:36:39 -0700 (PDT)
In-Reply-To: <CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
	<CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
	<CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Mar 2018 17:36:39 +0000
Message-ID: <CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Mar 2018 17:37:01 -0000
Content-Type: multipart/alternative; boundary="001a113f97302d5ba205678b0e68"

--001a113f97302d5ba205678b0e68
Content-Type: text/plain; charset="UTF-8"

To change the version, change the filename of the recipe.

Also, please remember the CC the list.

Ross

On 16 March 2018 at 17:30, Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> I did download from https://github.com/scipy/scipy/archive/v1.0.0.tar.gz
> and cc to /downloads and same still issue ...
> as mentioned  should be version is 1.0.0
> where to change it to point to correct version & file?
>
> On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> You're getting a "file not found" for the URL it is looking for.
>> According to https://pypi.python.org/pypi/scipy, the version is 1.0.0
>> not 1.0.
>>
>> Ross
>>
>> On 16 March 2018 at 16:50, Peter Balazovic <balazovic.peter@gmail.com>
>> wrote:
>>
>>> per using recipe https://github.com/scipy/scipy/issues/8226
>>>
>>>
>>> SUMMARY = "Scientific Library for Python"
>>> SECTION = "devel/python"
>>> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>>>
>>> LICENSE = "BSD-3-Clause"
>>> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
>>>
>>> PYPI_PACKAGE="scipy"
>>>
>>> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
>>> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
>>>
>>> inherit pypi setuptools distutils
>>>
>>> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
>>> DEPENDS += "python-numpy"
>>>
>>>
>>> I am getting error to fetch scipy do_fetch error
>>>
>>>
>>> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
>>> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
>>> attempting MIRRORS if available
>>> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
>>> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
>>> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
>>> --progress=dot -v failed with exit code 8, output:
>>> --2018-03-16 17:43:34--  https://files.pythonhosted.org
>>> /packages/source/s/scipy/scipy-1.0.tar.gz
>>> Resolving files.pythonhosted.org (files.pythonhosted.org)...
>>> 151.101.17.63, 2a04:4e42:4::319
>>> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.101.17.63|:443...
>>> connected.
>>> HTTP request sent, awaiting response... 404 Not Found
>>> 2018-03-16 17:43:35 ERROR 404: Not Found.
>>>
>>> Any help?
>>>
>>>
>>> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
>>> randy.macleod@windriver.com> wrote:
>>>
>>>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>>>>
>>>>> Hello all,
>>>>>
>>>>> I wonder if there is scipy recipe available?
>>>>>
>>>>
>>>> Not yet:
>>>>
>>>> https://layers.openembedded.org/layerindex/branch/master/rec
>>>> ipes/?q=scipy
>>>>
>>>> It appears to be blocked by:
>>>>    https://github.com/scipy/scipy/issues/8226
>>>> but apparently that's a bitbake issue, not a spip one.
>>>> Care to take a look?
>>>>
>>>>
>>>>> Thanks.
>>>>>
>>>>>
>>>>>
>>>>
>>>> --
>>>> # Randy MacLeod.  WR Linux
>>>> # Wind River an Intel Company
>>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a113f97302d5ba205678b0e68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">To change the version, change the filename of the recipe.<=
div><br></div><div>Also, please remember the CC the list.</div><div><br></d=
iv><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On 16 March 2018 at 17:30, Peter Balazovic <span dir=3D"ltr">&lt;<a =
href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div>I did download from <a href=3D"https://github.com/scipy/=
scipy/archive/v1.0.0.tar.gz" target=3D"_blank">https://github.com/scipy/<wb=
r>scipy/archive/v1.0.0.tar.gz</a> and cc to /downloads and same still issue=
 ...<br></div>as mentioned=C2=A0 should be=C2=A0version is 1.0.0 <br></div>=
where to change it to point to correct version &amp; file? <br></div><div c=
lass=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <span dir=3D=
"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.b=
urton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"ltr">You&#39;re getting a &quot;file not found&quot; for the URL i=
t is looking for.=C2=A0 According to <a href=3D"https://pypi.python.org/pyp=
i/scipy" target=3D"_blank">https://pypi.python.org/pypi/s<wbr>cipy</a>, the=
 version is 1.0.0 not 1.0.<span class=3D"m_2741193929227170611HOEnZb"><font=
 color=3D"#888888"><div><br></div><div>Ross</div></font></span></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_27=
41193929227170611h5">On 16 March 2018 at 16:50, Peter Balazovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank"=
>balazovic.peter@gmail.com</a>&gt;</span> wrote:<br></div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div class=3D"m_2741193929227170611h5"><div dir=3D=
"ltr">per using recipe=C2=A0<a href=3D"https://github.com/scipy/scipy/issue=
s/8226" target=3D"_blank">https://github.com/scip<wbr>y/scipy/issues/8226</=
a>=C2=A0<div><br><div><br></div><div><pre style=3D"box-sizing:border-box;fo=
nt-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,Courier=
,monospace;font-size:11.9px;margin-top:0px;margin-bottom:16px;padding:16px;=
overflow:auto;line-height:1.45;background-color:rgb(246,248,250);border-rad=
ius:3px;color:rgb(36,41,46);font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-=
style:initial;text-decoration-color:initial"><code style=3D"box-sizing:bord=
er-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menl=
o,Courier,monospace;font-size:11.9px;padding:0px;margin:0px;background:tran=
sparent none repeat scroll 0% 0%;border-radius:3px;word-break:normal;white-=
space:pre-wrap;border:0px none;display:inline;overflow:visible;line-height:=
inherit">SUMMARY =3D &quot;Scientific Library for Python&quot;
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
files.pythonhosted.org<wbr>/packages/source/s/scipy/scipy<wbr>-1.0.tar.gz</=
a>, attempting MIRRORS if available<br>ERROR: scipy-1.0-r0 do_fetch: Fetche=
r failure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix<wbr>:=
abstract=3D/tmp/dbus-idNNJsmT3C<wbr>&quot;; export SSH_AUTH_SOCK=3D&quot;/r=
un/user/1000/<wbr>keyring/ssh&quot;; export ftp_proxy=3D<br>--progress=3Ddo=
t -v failed with exit code 8, output:<br>--2018-03-16 17:43:34--=C2=A0 <a h=
ref=3D"https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar=
.gz" target=3D"_blank">https://files.pythonhosted.org<wbr>/packages/source/=
s/scipy/scipy<wbr>-1.0.tar.gz</a><br>Resolving <a href=3D"http://files.pyth=
onhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"http=
://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)...=
 151.101.17.63, 2a04:4e42:4::319<br>Connecting to <a href=3D"http://files.p=
ythonhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"h=
ttp://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)=
|151.1<wbr>01.17.63|:443... connected.<br>HTTP request sent, awaiting respo=
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
<br><span class=3D"m_2741193929227170611m_7931138883446710130m_-66034920871=
61229101HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"m_2741193929227170611m_7931138883=
446710130m_-6603492087161229101HOEnZb"><font color=3D"#888888">
<br><span class=3D"m_2741193929227170611m_7931138883446710130HOEnZb"><font =
color=3D"#888888">
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></span></font></span></blockquote></div><br></div>
<br></div></div><span>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113f97302d5ba205678b0e68--
