Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3F34E0115F; Thu, 22 Dec 2016 09:03:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A46B6E01155
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 09:03:10 -0800 (PST)
Received: by mail-pg0-f51.google.com with SMTP id f188so99633564pgc.3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 09:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=kDAltipTqeHzu8T2Rec5/P1KomCUhMXvyAAtk+Y1bWQ=;
	b=I8+igV0iVmlXsk6nUZuSLsp5iCGKyDsF2AWh+oxdgVfdJWkttg7IW+bRyaQKsnYOm2
	lkhOHtwGoSfbEV024reKIDB5vlWtCEeM63KCNd5cmceoQ/Slf6a1Rb73/EZYpDuERUX1
	QKkLioPfGw9Kr5bhH96iAacyLKow3vk5CpH/yz8qJAzWx0YNBjzTnDZCTIa5mTKLD8Bs
	vygI48eWIyZCurhLdOdgNKiaMuQu7IV8JTLO3Z3SJB2rJ1OFG7vu7UAqpj/j+QRkKAIe
	cr8iC495OpAlIlVQHJUzTasEqfk54yIhhUDGV5sFparIYs5rTJ3cNZMI6PcQ03PVrO6i
	Qa2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=kDAltipTqeHzu8T2Rec5/P1KomCUhMXvyAAtk+Y1bWQ=;
	b=q7U/rvlKtZnov2TBttgz2c5/MpJKKQMMhVmhShrBepNfwU5c/4YmOXSe74XX5Sqo8K
	bDp8p/Ks7bzrjSitq5VSAV/5N2pEOL2kA9T3WAgqK0X4lW1pDPsX6joekazEMsFSG3AH
	o2AEVk2Cdhjd6XVL89ctJJ/ht8latuILHuO7I43G5YTFiPUxkd45fgVGRNOjx7e+X7AI
	3KtWVk64oXl64DEgoVhbCY5hjJg/Iqblk0a/vDtk7K2RZs4eIddXUon9iwR62LEGHiK+
	uV9H0S0Wl3Sg9RXHWJ4JAG+VE5iWoOfv0DBm+xpkcyfg22ig0igSPgKhmdSixCRuirK8
	FsxA==
X-Gm-Message-State: AIkVDXLaVn9Ezp2ChXVAbWMEcPeIk7wUPaDUM60Z110AEJeGxFZvzA0ZtTxleE3r3N41Xw==
X-Received: by 10.99.153.26 with SMTP id d26mr18900397pge.44.1482426189832;
	Thu, 22 Dec 2016 09:03:09 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:dc6c:df58:7743:431c?
	([2601:646:8882:b8c:dc6c:df58:7743:431c])
	by smtp.gmail.com with ESMTPSA id
	c128sm56163790pfc.39.2016.12.22.09.03.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Dec 2016 09:03:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <7B260263-CB63-4B9C-BE16-6319C14E6360@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 22 Dec 2016 09:03:09 -0800
In-Reply-To: <760342d3-506d-f52a-0417-9960183360f8@3cityelectronics.com>
To: =?utf-8?Q?Mateusz_Orzo=C5=82?= <mateusz.orzol@3cityelectronics.com>
References: <396d7721-c317-789c-6a66-938280ccb006@3cityelectronics.com>
	<CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com>
	<329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com>
	<2f7ef8d8-1731-d3d6-ad12-cc90fb398d6d@3cityelectronics.com>
	<CAMKF1spFedNKS=jWSa7=EK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.gmail.com>
	<f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com>
	<760342d3-506d-f52a-0417-9960183360f8@3cityelectronics.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failure to compile UltraJson, LMDB and Netifaces python modules recipes for Krogoth.
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
X-List-Received-Date: Thu, 22 Dec 2016 17:03:23 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_600F9CEE-6D1E-4E32-B612-5DBDE10F9C73"

--Apple-Mail=_600F9CEE-6D1E-4E32-B612-5DBDE10F9C73
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Dec 22, 2016, at 12:20 AM, Mateusz Orzo=C5=82 =
<mateusz.orzol@3cityelectronics.com> wrote:
>=20
>=20
>=20
> W dniu 2016-12-22 o 09:16, Mateusz Orzo=C5=82 pisze:
>>=20
>>=20
>> W dniu 2016-12-21 o 18:21, Khem Raj pisze:
>>> On Tue, Dec 20, 2016 at 10:54 PM, Mateusz Orzo=C5=82
>>> <mateusz.orzol@3cityelectronics.com> =
<mailto:mateusz.orzol@3cityelectronics.com> wrote:
>>>> W dniu 2016-12-20 o 10:46, Mateusz Orzo=C5=82 pisze:
>>>>=20
>>>>=20
>>>>=20
>>>> W dniu 2016-12-20 o 00:43, Khem Raj pisze:
>>>>=20
>>>>=20
>>>>=20
>>>> On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzo=C5=82
>>>> <mateusz.orzol@3cityelectronics.com> =
<mailto:mateusz.orzol@3cityelectronics.com> wrote:
>>>>> Hi everyone,
>>>>>=20
>>>>> I am migrating my old Yocto image from kernel 3.8 to 4.1 on the =
Intel
>>>>> Quark based platform. After dealing with some SPI driver issues =
now I've
>>>>> encountered some strange bitbake behaviour. My web application =
requires
>>>>> UltraJson , LMDB and Netifaces modules. After running bitbake  I =
am getting
>>>>> a lot of undefined reference errors. In all three cases pretty =
similar.
>>>>> Exemplary log for python-ujson is here: =
http://pastebin.com/8ms9PgnY <http://pastebin.com/8ms9PgnY> . It
>>>>> seems like the python environment wasn't linked properly but many =
other
>>>>> python recipes have no problem with compiling.
>>>>>=20
>>>>> The python-ujson recipe comes from here
>>>>> https://layers.openembedded.org/layerindex/recipe/49510/ =
<https://layers.openembedded.org/layerindex/recipe/49510/>. In  previous
>>>>> distribution with kernel 3.8 it was working without any problem.
>>>>>=20
>>>>> Have you got any idea what could be wrong or what should I check =
first?
>>>> The error seems to have nothing to do with kernel version. Are you =
upgrading
>>>> the whole of yocto framework from one release to another ? and if =
yes from
>>>> which version to which new version.
>>>>=20
>>>>=20
>>>>=20
>>>> I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've =
prepared
>>>> clean Krogoth image which worked fine. Now I am adding necessary =
recipes and
>>>> packages one by one and currently the only problem I've encountered =
is the
>>>> mentioned one.
>>>>=20
>>>> Hi,
>>>> W have found found quick fix for this.  The errors disappeared when =
all the
>>>> build flags were cleared in mentioned python modules recipes. It =
means
>>>> TARGET_CFLAGS =3D "" LDFLAGS =3D "" CFLAGS =3D "" in module .bb =
file. It was
>>>> checked on the device that modules are visible in python and they =
work. I
>>>> don't know why this helped and also what was causing the issue. Do =
you have
>>>> any clues what was wrong and how to fix it in proper way?
>>> Can you post the exact change ? perhaps there is issue in Makefile
>>> environment that
>>> bitbake is handing off to the makefiles of this component. There
>>> change in this area
>>> in OE recently.
>> Hi,
>> the exact change in the python-ujson_1.35.bb  file: =
http://pastebin.com/L2JQvQD0 <http://pastebin.com/L2JQvQD0>.  The change =
in other python modules bitbake files is identical.=20
> Sorry the link is broken because of the dot =
http://pastebin.com/L2JQvQD0 <http://pastebin.com/L2JQvQD0>
in a way this change is ok but it would be good to know why these flags =
are being problematic, I guess deeper look into this components
build is needed. We do not have this problem with master, so there is =
some discrepancy, I do not have krogoth build handy to try out
but may be someone else has.

>>>>> Thank you for your help in advance,
>>>>>=20
>>>>> Mateusz
>>>>>=20
>>>>>=20
>>>>> --
>>>>>=20
>>>>>=20
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>>>>=20
>>>> --
>>>>=20
>>>>=20
>>>>=20
>>>> --
>>>>=20
>>=20
>> --=20
>> =20
>=20
> --=20
> =20


--Apple-Mail=_600F9CEE-6D1E-4E32-B612-5DBDE10F9C73
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Dec 22, 2016, at 12:20 AM, Mateusz Orzo=C5=82 &lt;<a =
href=3D"mailto:mateusz.orzol@3cityelectronics.com" =
class=3D"">mateusz.orzol@3cityelectronics.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><br =
class=3D"Apple-interchange-newline"><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
background-color: rgb(255, 255, 255);" class=3D""><div =
class=3D"moz-cite-prefix" style=3D"font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
background-color: rgb(255, 255, 255);">W dniu 2016-12-22 o&nbsp;09:16, =
Mateusz Orzo=C5=82 pisze:<br class=3D""></div><blockquote =
cite=3D"mid:f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com" =
type=3D"cite" style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" =
class=3D""><p class=3D""><br class=3D""></p><br class=3D""><div =
class=3D"moz-cite-prefix">W dniu 2016-12-21 o&nbsp;18:21, Khem Raj =
pisze:<br class=3D""></div><blockquote =
cite=3D"mid:CAMKF1spFedNKS=3DjWSa7=3DEK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.g=
mail.com" type=3D"cite" class=3D""><pre wrap=3D"" class=3D"">On Tue, Dec =
20, 2016 at 10:54 PM, Mateusz Orzo=C5=82
<a moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:mateusz.orzol@3cityelectronics.com">&lt;mateusz.orzol@3city=
electronics.com&gt;</a> wrote:
</pre><blockquote type=3D"cite" class=3D""><pre wrap=3D"" class=3D"">W =
dniu 2016-12-20 o 10:46, Mateusz Orzo=C5=82 pisze:



W dniu 2016-12-20 o 00:43, Khem Raj pisze:



On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzo=C5=82
<a moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:mateusz.orzol@3cityelectronics.com">&lt;mateusz.orzol@3city=
electronics.com&gt;</a> wrote:
</pre><blockquote type=3D"cite" class=3D""><pre wrap=3D"" class=3D"">Hi =
everyone,

I am migrating my old Yocto image from kernel 3.8 to 4.1 on the Intel
Quark based platform. After dealing with some SPI driver issues now I've
encountered some strange bitbake behaviour. My web application requires
UltraJson , LMDB and Netifaces modules. After running bitbake  I am =
getting
a lot of undefined reference errors. In all three cases pretty similar.
Exemplary log for python-ujson is here: <a moz-do-not-send=3D"true" =
class=3D"moz-txt-link-freetext" =
href=3D"http://pastebin.com/8ms9PgnY">http://pastebin.com/8ms9PgnY</a> . =
It
seems like the python environment wasn't linked properly but many other
python recipes have no problem with compiling.

The python-ujson recipe comes from here
<a moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext" =
href=3D"https://layers.openembedded.org/layerindex/recipe/49510/">https://=
layers.openembedded.org/layerindex/recipe/49510/</a>. In  previous
distribution with kernel 3.8 it was working without any problem.

Have you got any idea what could be wrong or what should I check first?
</pre></blockquote><pre wrap=3D"" class=3D"">The error seems to have =
nothing to do with kernel version. Are you upgrading
the whole of yocto framework from one release to another ? and if yes =
from
which version to which new version.



I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've =
prepared
clean Krogoth image which worked fine. Now I am adding necessary recipes =
and
packages one by one and currently the only problem I've encountered is =
the
mentioned one.

Hi,
W have found found quick fix for this.  The errors disappeared when all =
the
build flags were cleared in mentioned python modules recipes. It means
TARGET_CFLAGS =3D "" LDFLAGS =3D "" CFLAGS =3D "" in module .bb file. It =
was
checked on the device that modules are visible in python and they work. =
I
don't know why this helped and also what was causing the issue. Do you =
have
any clues what was wrong and how to fix it in proper way?
</pre></blockquote><pre wrap=3D"" class=3D"">Can you post the exact =
change ? perhaps there is issue in Makefile
environment that
bitbake is handing off to the makefiles of this component. There
change in this area
in OE recently.</pre></blockquote>Hi,<br class=3D"">the exact change in =
the python-ujson_1.35.bb&nbsp; file:<span =
class=3D"Apple-converted-space">&nbsp;</span><a moz-do-not-send=3D"true" =
class=3D"moz-txt-link-freetext" =
href=3D"http://pastebin.com/L2JQvQD0">http://pastebin.com/L2JQvQD0</a>.&nb=
sp; The change in other python modules bitbake files is identical.<span =
class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D""></blockquote><span style=3D"font-family: Times-Roman; =
font-size: 14px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
background-color: rgb(255, 255, 255); float: none; display: inline =
!important;" class=3D"">Sorry the link is broken because of the dot<span =
class=3D"Apple-converted-space">&nbsp;</span></span><font =
face=3D"Times-Roman" class=3D""><span style=3D"background-color: =
rgb(255, 255, 255);" class=3D""><a href=3D"http://pastebin.com/L2JQvQD0" =
class=3D"">http://pastebin.com/L2JQvQD0</a></span></font></div></blockquot=
e><div><br class=3D""></div><div>in a way this change is ok but it would =
be good to know why these flags are being problematic, I guess deeper =
look into this components</div><div>build is needed. We do not have this =
problem with master, so there is some discrepancy, I do not have krogoth =
build handy to try out</div><div>but may be someone else has.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><span =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); =
float: none; display: inline !important;" class=3D""></span><blockquote =
cite=3D"mid:f8e70915-43bf-5edb-4163-70ba032c6171@3cityelectronics.com" =
type=3D"cite" style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" =
class=3D""><blockquote =
cite=3D"mid:CAMKF1spFedNKS=3DjWSa7=3DEK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.g=
mail.com" type=3D"cite" class=3D""><pre wrap=3D"" =
class=3D""></pre><blockquote type=3D"cite" class=3D""><blockquote =
type=3D"cite" class=3D""><pre wrap=3D"" class=3D"">Thank you for your =
help in advance,

Mateusz


--


--
_______________________________________________
yocto mailing list
<a moz-do-not-send=3D"true" class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yocto=
project.org/listinfo/yocto</a>

</pre></blockquote><pre wrap=3D"" class=3D"">--



--

</pre></blockquote></blockquote><br class=3D""><div =
class=3D"moz-signature">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><map =
name=3D"mapa1" class=3D"">&nbsp;</map></div></blockquote><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" =
class=3D""><div class=3D"moz-signature" style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
background-color: rgb(255, 255, 255);">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><map =
name=3D"mapa1" class=3D"">&nbsp;</map></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_600F9CEE-6D1E-4E32-B612-5DBDE10F9C73--
