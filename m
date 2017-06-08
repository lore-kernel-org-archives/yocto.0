Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E764E00BD2; Wed,  7 Jun 2017 22:41:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 644F0E00B3D
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 22:41:15 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id a70so12418990pge.3
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 22:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=BfvizpXBrS9KhLzkieRWZlYK8w4WGO91Rln6TiOJN80=;
	b=e9XVKqNvwYG4N84w3gRoYIWWKD4F6HtqciKweNNSq4DfVasLrvKrlBPCR7Q2SAE1kT
	mrr94eckImL9J01Ccpo+XWGseqhx4s+82wqDvcLvEkBkDtjKRJafKpX/XeH9RAZtmwG8
	YJONoRDq23skiU5sRyVICDIQCYIo162FQTkSrgAG4Xk9rBYn1BBdoGFHTTAC4+SrU0Ht
	rsJI26JXt/lqNCCO3UBCTsEz4CBeYOWm1S1dXUb0FRmIXly3UKrQffpI83rGc+1EiGQv
	UX4KcwGQK3w770CqcBE3YW/XQwN9wDTPbqhgktPQn2YvoMl99VPCvpzUXCjggQZddNUG
	+k8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=BfvizpXBrS9KhLzkieRWZlYK8w4WGO91Rln6TiOJN80=;
	b=bcJLA3UKxMk4IbHJB9IwlI/0TkGD5GqmvtXFwLF1O0Fm3nE0OH5HXX9FiwlwThADd1
	LXV6limYaRYAyv5rCKhf4W/Chgh+mol+MmoK6vnsuJ1/TrvjCVtlB+L0sJqrMUMUnBd/
	krCEx04PoWzTj18bIsaMhbpl3Jl/582z7Qs/SSYMXauDkfsypRI/u5SHY/rFkMNUvfKu
	FE6+5wo90C4/8Y8ZXGwVf1oTIwKjQecPvjEqIq/NmweZrdxHVW4hM++1bDWZKTEsvBk0
	rWK2HgLzqfCleFbmd/otyPi5cunBZCGstMrlMPmjLqXOHepmu1EYEj0nWqCP/sian4ZV
	f/+A==
X-Gm-Message-State: AODbwcD3kdkhOsekLBm22zfAhB2391zdqJ9MWpLIhNTpS+kdC9XBuiqb
	f6zHpt02YubAQN9QZ2I=
X-Received: by 10.98.160.220 with SMTP id p89mr20058678pfl.184.1496900475480; 
	Wed, 07 Jun 2017 22:41:15 -0700 (PDT)
Received: from ?IPv6:2607:fb90:5a40:f7da:e575:6c68:2502:bcfb?
	([2607:fb90:5a40:f7da:e575:6c68:2502:bcfb])
	by smtp.gmail.com with ESMTPSA id
	e124sm7179901pfc.64.2017.06.07.22.41.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Jun 2017 22:41:14 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <TicoTimo@gmail.com>
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (14F89)
In-Reply-To: <023da786-5e3c-9bf8-8e35-e3fe052d188a@smart-home-technology.ch>
Date: Wed, 7 Jun 2017 22:41:12 -0700
Message-Id: <AA9871D8-4A73-4F23-A0A7-6520A235B641@gmail.com>
References: <a35f0a1e-369d-2868-c785-d044e5436e0a@smart-home-technology.ch>
	<B23DE4404747DE4181D616A0059CCECE7C30D8BB@IRSMSX104.ger.corp.intel.com>
	<023da786-5e3c-9bf8-8e35-e3fe052d188a@smart-home-technology.ch>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Building boost-python
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
X-List-Received-Date: Thu, 08 Jun 2017 05:41:18 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-61379D79-A275-4347-B74B-B0601B3688EB
Content-Transfer-Encoding: 7bit

--Apple-Mail-61379D79-A275-4347-B74B-B0601B3688EB
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

You should do what meta-ros did:
https://github.com/bmwcarit/meta-ros/blob/master/recipes-support/boost/boost=
_%25.bbappend


> On Jun 7, 2017, at 3:46 AM, Jakob Hasse <jakob.hasse@smart-home-technology=
.ch> wrote:
>=20
>=20
>=20
>> On 07.06.2017 11:59, VanCutsem, Geoffroy wrote:
>>=20
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Jakob Hasse
>>> Sent: Wednesday, June 7, 2017 11:48 AM
>>> To: Yocto List <yocto@yoctoproject.org>
>>> Subject: [yocto] Building boost-python
>>>=20
>>> Hello,
>>>=20
>>> One of my layers needs boost-python.
>>> When I try to build boost-python with bitbake, it complains:
>>>=20
>>> ERROR: Nothing PROVIDES 'boost-python'
>>>=20
>>> How can I fix this?
>>> Boost itself builds and I also included
>>> PACKAGECONFIG_pn_boost =3D "python"
>>> without any effect.
>> I believe the correct spelling is:
>> PACKAGECONFIG_pn-boost =3D "python"
>> (note the hyphen instead of underscore)
> Yes, I saw it somewhere else now with a hyphen, too, but even with the cor=
rected local.conf, the problem still remains.
> Bitbake quits with the same error message as before
>>=20
>>> My bblayers.conf is here:
>>>=20
>>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf #
>>> changes incompatibly LCONF_VERSION =3D "6"
>>>=20
>>> BBPATH =3D "${TOPDIR}"
>>> BBFILES ?=3D ""
>>>=20
>>> BBLAYERS ?=3D " \
>>>    /usr/local/dey-2.0/sources/poky/meta \
>>>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>>>    /usr/local/dey-2.0/sources/poky/meta-yocto-bsp \
>>>    /usr/local/dey-2.0/sources/meta-openembedded/meta-oe \
>>>    /usr/local/dey-2.0/sources/meta-openembedded/meta-python \
>>> /usr/local/dey-2.0/sources/meta-openembedded/meta-networking \
>>> /usr/local/dey-2.0/sources/meta-openembedded/meta-webserver \
>>>    /usr/local/dey-2.0/sources/meta-qt5 \
>>>    /usr/local/dey-2.0/sources/meta-swupdate \
>>>    /usr/local/dey-2.0/sources/meta-fsl-arm \
>>>    /usr/local/dey-2.0/sources/meta-fsl-demos \
>>>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-arm \
>>>    /usr/local/dey-2.0/sources/meta-digi/meta-digi-dey \
>>>    /usr/local/dey-2.0/sources/meta-java/ \
>>>    /usr/local/dey-2.0/sources/meta-iot-cloud/ \
>>>=20
>>>    "
>>> BBLAYERS_NON_REMOVABLE ?=3D " \
>>>    /usr/local/dey-2.0/sources/poky/meta \
>>>    /usr/local/dey-2.0/sources/poky/meta-yocto \
>>>    "
>>>=20
>>> Any help is welcome!
>>> Jakob
>>>=20
>>> --
>>> Jakob Hasse
>>> Software Developement
>>>=20
>>> E: jakob.hasse@smart-home-technology.ch
>>> T: +41 44 552 02 66
>>>=20
>>> Smart Home Technology GmbH
>>> www.smart-home-technology.ch
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> Jakob Hasse
> Software Developement
>=20
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>=20
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-61379D79-A275-4347-B74B-B0601B3688EB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>You should do what meta-ros did:</div>=
<div id=3D"AppleMailSignature"><a href=3D"https://github.com/bmwcarit/meta-r=
os/blob/master/recipes-support/boost/boost_%25.bbappend">https://github.com/=
bmwcarit/meta-ros/blob/master/recipes-support/boost/boost_%25.bbappend</a><b=
r><br></div><div><br>On Jun 7, 2017, at 3:46 AM, Jakob Hasse &lt;<a href=3D"=
mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technolo=
gy.ch</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div><span></spa=
n><br><span></span><br><span>On 07.06.2017 11:59, VanCutsem, Geoffroy wrote:=
</span><br><blockquote type=3D"cite"><span></span><br></blockquote><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span>-----Original Message-----<=
/span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><span>From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yo=
cto-bounces@yoctoproject.org</a> [mailto:yocto-</span><br></blockquote></blo=
ckquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span><a href=3D=
"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</a>] On Behalf Of=
 Jakob Hasse</span><br></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><span>Sent: Wednesday, June 7, 2017 11:48 AM</span>=
<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span>To: Yocto List &lt;<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>Subject: [yocto] Building boost=
-python</span><br></blockquote></blockquote><blockquote type=3D"cite"><block=
quote type=3D"cite"><span></span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>Hello,</span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>One of my layers needs boost-python.</span><br></blockquote></b=
lockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>When I t=
ry to build boost-python with bitbake, it complains:</span><br></blockquote>=
</blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></spa=
n><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>ERROR: Nothing PROVIDES 'boost-python'</span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>How can I fix this?</span><br></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span>Boost itself builds and I=
 also included</span><br></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><span>PACKAGECONFIG_pn_boost =3D "python"</span><=
br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><span>without any effect.</span><br></blockquote></blockquote><blockquo=
te type=3D"cite"><span>I believe the correct spelling is:</span><br></blockq=
uote><blockquote type=3D"cite"><span>PACKAGECONFIG_pn-boost =3D "python"</sp=
an><br></blockquote><blockquote type=3D"cite"><span>(note the hyphen instead=
 of underscore)</span><br></blockquote><span>Yes, I saw it somewhere else no=
w with a hyphen, too, but even with the corrected local.conf, the problem st=
ill remains.</span><br><span>Bitbake quits with the same error message as be=
fore</span><br><blockquote type=3D"cite"><span></span><br></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span>My bblayers.conf is her=
e:</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span></span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span># LAYER_CONF_VERSION is increased eac=
h time build/conf/bblayers.conf #</span><br></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><span>changes incompatibly LCO=
NF_VERSION =3D "6"</span><br></blockquote></blockquote><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><span>BBPATH =3D "${TOPDIR=
}"</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>BBFILES ?=3D ""</span><br></blockquote></blockquote><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquo=
te></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>BB=
LAYERS ?=3D " \</span><br></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sour=
ces/poky/meta \</span><br></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sour=
ces/poky/meta-yocto \</span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0=
/sources/poky/meta-yocto-bsp \</span><br></blockquote></blockquote><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/loc=
al/dey-2.0/sources/meta-openembedded/meta-oe \</span><br></blockquote></bloc=
kquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;&nbs=
p;&nbsp;/usr/local/dey-2.0/sources/meta-openembedded/meta-python \</span><br=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><span>/usr/local/dey-2.0/sources/meta-openembedded/meta-networking \</spa=
n><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>/usr/local/dey-2.0/sources/meta-openembedded/meta-webserver \</=
span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote typ=
e=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/meta-qt5 \</s=
pan><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/meta-swupdate \=
</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/meta-fsl-ar=
m \</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/meta-fsl=
-demos \</span><br></blockquote></blockquote><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/met=
a-digi/meta-digi-arm \</span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0=
/sources/meta-digi/meta-digi-dey \</span><br></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr=
/local/dey-2.0/sources/meta-java/ \</span><br></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><span> &nbsp;&nbsp;&nbsp;/us=
r/local/dey-2.0/sources/meta-iot-cloud/ \</span><br></blockquote></blockquot=
e><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blo=
ckquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an> &nbsp;&nbsp;&nbsp;"</span><br></blockquote></blockquote><blockquote type=
=3D"cite"><blockquote type=3D"cite"><span>BBLAYERS_NON_REMOVABLE ?=3D " \</s=
pan><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/poky/meta \</s=
pan><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><span> &nbsp;&nbsp;&nbsp;/usr/local/dey-2.0/sources/poky/meta-yoct=
o \</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><span> &nbsp;&nbsp;&nbsp;"</span><br></blockquote></blockquo=
te><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><s=
pan>Any help is welcome!</span><br></blockquote></blockquote><blockquote typ=
e=3D"cite"><blockquote type=3D"cite"><span>Jakob</span><br></blockquote></bl=
ockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><b=
r></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>--</span><br></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><span>Jakob Hasse</span><br></blockquote></blockquo=
te><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Software Develo=
pement</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><span></span><br></blockquote></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><span>E: <a href=3D"mailto:jakob.hasse=
@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a></span><b=
r></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>T: +41 44 552 02 66</span><br></blockquote></blockquote><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote></bl=
ockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Smart Hom=
e Technology GmbH</span><br></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span><a href=3D"http://www.smart-home-technol=
ogy.ch">www.smart-home-technology.ch</a></span><br></blockquote></blockquote=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></bloc=
kquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><spa=
n>--</span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>_______________________________________________</span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>yocto mailing list</span><br></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span><a href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a></span><br></blockquote></blockquo=
te><blockquote type=3D"cite"><blockquote type=3D"cite"><span><a href=3D"http=
s://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/li=
stinfo/yocto</a></span><br></blockquote></blockquote><span></span><br><span>=
-- </span><br><span>Jakob Hasse</span><br><span>Software Developement</span>=
<br><span></span><br><span>E: <a href=3D"mailto:jakob.hasse@smart-home-techn=
ology.ch">jakob.hasse@smart-home-technology.ch</a></span><br><span>T: +41 44=
 552 02 66</span><br><span></span><br><span>Smart Home Technology GmbH</span=
><br><span><a href=3D"http://www.smart-home-technology.ch">www.smart-home-te=
chnology.ch</a></span><br><span></span><br><span>-- </span><br><span>_______=
________________________________________</span><br><span>yocto mailing list<=
/span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></b=
lockquote></body></html>=

--Apple-Mail-61379D79-A275-4347-B74B-B0601B3688EB--
