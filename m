Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDBB9E007A0; Fri, 31 Oct 2014 11:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B7EE00749
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 11:29:20 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id hl2so1442693igb.16
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 11:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r3wKO7R/lKGoe3LZxuOWu3bpBL9JTiSrbNvRRSpxlbw=;
	b=B9Dl8ISCL9AMiBzG7p0TwTmeZuvl0xjQ8PdUgH7fGf9XFEoXtWfhmnLJz+8HNFHPi6
	ugVLBgp5j9hkRCNyWTwunNR8f3LNRsPkUMmgQPSmlMgZwI8Q20fudkhv6pccA3Iuuxm6
	aLXWKsJTt9+AAJBoAPansicqZ3E1r6RxUMlq7q5uH1CHcLMKQHqDPPOl2Mb4mnI/39vt
	ZmS2rpTjCSLTK4/dDhCyr/N+DdXx+Rdi/tDXHgU3Wd7t9fVSkToQgcYLbM1Zj13vC2rg
	m98Cb+tX0Jy+dKggY+i8Od/QyrZf4nbhS9ZmUsQ2PR8+V45T3/tpPMCS9R27b72Z6NTX
	kSxQ==
MIME-Version: 1.0
X-Received: by 10.107.131.85 with SMTP id f82mr17111631iod.31.1414780160239;
	Fri, 31 Oct 2014 11:29:20 -0700 (PDT)
Received: by 10.107.148.76 with HTTP; Fri, 31 Oct 2014 11:29:20 -0700 (PDT)
Received: by 10.107.148.76 with HTTP; Fri, 31 Oct 2014 11:29:20 -0700 (PDT)
In-Reply-To: <5453CA61.5090902@gmail.com>
References: <5453CA61.5090902@gmail.com>
Date: Fri, 31 Oct 2014 19:29:20 +0100
Message-ID: <CAD0=qkKpRpoP_uuYiSdGNrN+SyrJy_sFkCw+iJhPfM7UdrWNCQ@mail.gmail.com>
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Angstrom Build Failing
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
X-List-Received-Date: Fri, 31 Oct 2014 18:29:34 -0000
Content-Type: multipart/alternative; boundary=001a113ec8d8e3122e0506bc2cac

--001a113ec8d8e3122e0506bc2cac
Content-Type: text/plain; charset=UTF-8

It looks like meta-kde on gitorious is currently down. Manually cloning its
mirror on github in sources directory worked for me.
 Am 31.10.2014 18:49 schrieb "nick" <xerofoify@gmail.com>:

> Greetings,
> I am getting a failing build after cloning the angstrom build scripts. My
> build log is pasted below.
> Cheers Nick
> nick@nick-System-Product-Name:/media/nick/Build_Drive/setup-scripts$
> MACHINE=beaglebone ./oebb.sh update
> Processing bitbake: Current branch 1.20 is up to date.
> Processing meta-angstrom: Current branch angstrom-v2013.12-yocto1.5 is up
> to date.
> Processing meta-openembedded: Current branch angstrom-staging-yocto1.5 is
> up to date.
> Processing meta-beagleboard: Current branch dora is up to date.
> Processing meta-ti: Current branch angstrom-staging-yocto1.5 is up to date.
> Processing meta-ettus: Fixed to revision
> 5a6a642f6707dc42a5210dbbf01d2bdfd869d4b0, skipping update
> Processing meta-fsl-arm: Current branch angstrom-staging-yocto1.5 is up to
> date.
> Processing meta-fsl-arm-extra: Current branch dora is up to date.
> Processing meta-nslu2: Fixed to revision
> bdcb4297ddb22f4eecddd4d8436cf9b6c6111922, skipping update
> Processing meta-smartphone: Fixed to revision
> 537d0c2ab41284012e1ba79716b085a861a6812a, skipping update
> Processing meta-intel: Current branch dora is up to date.
> Processing meta-xilinx: Fixed to revision
> 21c3cd3f058d736742ebc23a7a954f23456fbea5, skipping update
> Processing meta-openpandora: Fixed to revision
> 53ad3e60e4ed4fc7b946a2130da4bb9a8671341c, skipping update
> Processing meta-raspberrypi: Current branch dora is up to date.
> Processing meta-atmel: Current branch angstromv2013.12-staging is up to
> date.
> Processing meta-handheld: Fixed to revision
> 5b5e68a93aae1016f5ac1d057a721b2dbf30b8d8, skipping update
> Processing meta-opie: Fixed to revision
> b241408b31c2ffd941b8b38bd385136ef675a703, skipping update
> Processing meta-java: Current branch dora is up to date.
> Processing meta-browser: Fixed to revision
> fc3969f63bda343c38c40a23f746c560c4735f3e, skipping update
> Processing meta-mono: Fixed to revision
> ac286b1682e6bcc486ceb30ef90a936949bbfeab, skipping update
> layer repository name: meta-kde
> layer uri: git://gitorious.org/openembedded-core-layers/meta-kde.git
> layer branch/revision: master/f45abfd4d87b0132a2565499392d2d49f465d847
>
> Layer checkout missing at
> /media/nick/Build_Drive/setup-scripts/sources/meta-kde, creating one
> Cloning into '/media/nick/Build_Drive/setup-scripts/sources/meta-kde'...
> fatal: protocol error: expected sha/ref, got '
> ----------------------------------------------
> Cannot find repository /openembedded-core-layers/meta-kde.git
> ----------------------------------------------'
> /media/nick/Build_Drive/setup-scripts/scripts/layerman: line 19: cd:
> /media/nick/Build_Drive/setup-scripts/sources/meta-kde: No such file or
> directory
> fatal: Could not parse object 'f45abfd4d87b0132a2565499392d2d49f465d847'.
> Layers present in repository:
> find: `/media/nick/Build_Drive/setup-scripts/sources/meta-kde': No such
> file or directory
>
> Processing meta-kde:
> /media/nick/Build_Drive/setup-scripts/scripts/layerman: line 79: cd:
> /media/nick/Build_Drive/setup-scripts/sources/meta-kde: No such file or
> directory
> Processing meta-linaro: Current branch dora is up to date.
> Processing meta-minnow: Current branch dora is up to date.
> Processing meta-sunxi: Fixed to revision
> f1e777d5526ea7c7a4f3a828b21d26c2c0650b83, skipping update
> Processing meta-qt5: Current branch dora is up to date.
> Processing meta-ros: Fixed to revision
> 64c8b5edb221263e7fac7c03629c730ade422dff, skipping update
> Processing meta-uav: Fixed to revision
> 6f663cc32532ae66dd6c06d3d79c0f3578975a6c, skipping update
> Processing meta-dominion: Current branch master is up to date.
> Processing meta-exynos: Fixed to revision
> ac21b106ce5c4c928f62e8f72ebeac9b02d113e2, skipping update
> Processing meta-telephony: Fixed to revision
> f71f5ea031d96a5a84bde4531974542ae49f8bee, skipping update
> Processing meta-qt5: Current branch dora is up to date.
> Processing openembedded-core: Current branch angstrom-staging-yocto1.5 is
> up to date.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ec8d8e3122e0506bc2cac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">It looks like meta-kde on gitorious is currently down. Manua=
lly cloning its mirror on github in sources directory worked for me.<br>
</p>
<div class=3D"gmail_quote">Am 31.10.2014 18:49 schrieb &quot;nick&quot; &lt=
;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt;:<br typ=
e=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">Greetings,<br>
I am getting a failing build after cloning the angstrom build scripts. My b=
uild log is pasted below.<br>
Cheers Nick<br>
nick@nick-System-Product-Name:/media/nick/Build_Drive/setup-scripts$ MACHIN=
E=3Dbeaglebone ./oebb.sh update<br>
Processing bitbake: Current branch 1.20 is up to date.<br>
Processing meta-angstrom: Current branch angstrom-v2013.12-yocto1.5 is up t=
o date.<br>
Processing meta-openembedded: Current branch angstrom-staging-yocto1.5 is u=
p to date.<br>
Processing meta-beagleboard: Current branch dora is up to date.<br>
Processing meta-ti: Current branch angstrom-staging-yocto1.5 is up to date.=
<br>
Processing meta-ettus: Fixed to revision 5a6a642f6707dc42a5210dbbf01d2bdfd8=
69d4b0, skipping update<br>
Processing meta-fsl-arm: Current branch angstrom-staging-yocto1.5 is up to =
date.<br>
Processing meta-fsl-arm-extra: Current branch dora is up to date.<br>
Processing meta-nslu2: Fixed to revision bdcb4297ddb22f4eecddd4d8436cf9b6c6=
111922, skipping update<br>
Processing meta-smartphone: Fixed to revision 537d0c2ab41284012e1ba79716b08=
5a861a6812a, skipping update<br>
Processing meta-intel: Current branch dora is up to date.<br>
Processing meta-xilinx: Fixed to revision 21c3cd3f058d736742ebc23a7a954f234=
56fbea5, skipping update<br>
Processing meta-openpandora: Fixed to revision 53ad3e60e4ed4fc7b946a2130da4=
bb9a8671341c, skipping update<br>
Processing meta-raspberrypi: Current branch dora is up to date.<br>
Processing meta-atmel: Current branch angstromv2013.12-staging is up to dat=
e.<br>
Processing meta-handheld: Fixed to revision 5b5e68a93aae1016f5ac1d057a721b2=
dbf30b8d8, skipping update<br>
Processing meta-opie: Fixed to revision b241408b31c2ffd941b8b38bd385136ef67=
5a703, skipping update<br>
Processing meta-java: Current branch dora is up to date.<br>
Processing meta-browser: Fixed to revision fc3969f63bda343c38c40a23f746c560=
c4735f3e, skipping update<br>
Processing meta-mono: Fixed to revision ac286b1682e6bcc486ceb30ef90a936949b=
bfeab, skipping update<br>
layer repository name: meta-kde<br>
layer uri: git://<a href=3D"http://gitorious.org/openembedded-core-layers/m=
eta-kde.git" target=3D"_blank">gitorious.org/openembedded-core-layers/meta-=
kde.git</a><br>
layer branch/revision: master/f45abfd4d87b0132a2565499392d2d49f465d847<br>
<br>
Layer checkout missing at /media/nick/Build_Drive/setup-scripts/sources/met=
a-kde, creating one<br>
Cloning into &#39;/media/nick/Build_Drive/setup-scripts/sources/meta-kde&#3=
9;...<br>
fatal: protocol error: expected sha/ref, got &#39;<br>
----------------------------------------------<br>
Cannot find repository /openembedded-core-layers/meta-kde.git<br>
----------------------------------------------&#39;<br>
/media/nick/Build_Drive/setup-scripts/scripts/layerman: line 19: cd: /media=
/nick/Build_Drive/setup-scripts/sources/meta-kde: No such file or directory=
<br>
fatal: Could not parse object &#39;f45abfd4d87b0132a2565499392d2d49f465d847=
&#39;.<br>
Layers present in repository:<br>
find: `/media/nick/Build_Drive/setup-scripts/sources/meta-kde&#39;: No such=
 file or directory<br>
<br>
Processing meta-kde: /media/nick/Build_Drive/setup-scripts/scripts/layerman=
: line 79: cd: /media/nick/Build_Drive/setup-scripts/sources/meta-kde: No s=
uch file or directory<br>
Processing meta-linaro: Current branch dora is up to date.<br>
Processing meta-minnow: Current branch dora is up to date.<br>
Processing meta-sunxi: Fixed to revision f1e777d5526ea7c7a4f3a828b21d26c2c0=
650b83, skipping update<br>
Processing meta-qt5: Current branch dora is up to date.<br>
Processing meta-ros: Fixed to revision 64c8b5edb221263e7fac7c03629c730ade42=
2dff, skipping update<br>
Processing meta-uav: Fixed to revision 6f663cc32532ae66dd6c06d3d79c0f357897=
5a6c, skipping update<br>
Processing meta-dominion: Current branch master is up to date.<br>
Processing meta-exynos: Fixed to revision ac21b106ce5c4c928f62e8f72ebeac9b0=
2d113e2, skipping update<br>
Processing meta-telephony: Fixed to revision f71f5ea031d96a5a84bde453197454=
2ae49f8bee, skipping update<br>
Processing meta-qt5: Current branch dora is up to date.<br>
Processing openembedded-core: Current branch angstrom-staging-yocto1.5 is u=
p to date.<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a113ec8d8e3122e0506bc2cac--
