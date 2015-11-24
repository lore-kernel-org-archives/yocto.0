Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF07AE00AE6; Mon, 23 Nov 2015 19:33:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D48E0E00AC5
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 19:33:28 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id EC7002042A
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 22:33:27 -0500 (EST)
Received: from frontend2 ([10.202.2.161])
	by compute3.internal (MEProxy); Mon, 23 Nov 2015 22:33:27 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=42VNVLLH45t3wO3
	0Fzd2Nok+Eqk=; b=f2mc8H1ARJ5E9MH2fJ+oORLLeo5KxEzD6nKmyMfo5X999VQ
	V/CXu3J+CdAOVa8dZX7poVxb/lWZgahcnoB4PRaASYQpD44OzGIkUF2JWX6Np2C6
	aY6XoGpuQnijIOCDjXStsJC5uO7jk4AubyKA8GPu75gMp36vneVsiNCTW/pU=
X-Sasl-enc: zZbdR8aMlbht2N/cw4KOyo3n/fJQhOkocFxEhBna0Lan 1448336007
Received: from laptop (a88-114-110-232.elisa-laajakaista.fi [88.114.110.232])
	by mail.messagingengine.com (Postfix) with ESMTPA id 479896801BA;
	Mon, 23 Nov 2015 22:33:27 -0500 (EST)
Message-ID: <1448336006.6918.83.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Charles Chau <charles.chau@habeyusa.com>, yocto@yoctoproject.org
Date: Tue, 24 Nov 2015 05:33:26 +0200
In-Reply-To: <565392FA.2070608@habeyusa.com>
References: <564FC280.7040205@habeyusa.com>
	<1448295644.6918.11.camel@iki.fi> <565392FA.2070608@habeyusa.com>
X-Mailer: Evolution 3.18.2-1 
Mime-Version: 1.0
Subject: Re: i.MX6DL Qt5.5 Image
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
X-List-Received-Date: Tue, 24 Nov 2015 03:33:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2015-11-23 at 14:28 -0800, Charles Chau wrote:
> I have meta-fsl-arm, meta-fsl-arm-extra, and meta-fsl-demos.  I checked 
> and it has fsl-alsa-plugin as well as alsa-plugin.
> 
> I tried to delete the recipes-multimedia in meta-fsl-arm, and it fails 
> during compile.
> What should I do?

Deleting everything in recipes-multimedia seems overkill if the only
problem was that the meta-fsl-* layers had an alsa-plugins recipe that
overrode the Poky version.

Regarding the compilation failure, it's hard to say anything without
knowing the exact error.

By the way, the layer search engine didn't find alsa-plugins in the
meta-fsl-* repos:
http://layers.openembedded.org/layerindex/branch/master/recipes/?q=alsa-plugins

Only fsl-alsa-plugins was found, which is a different thing. This makes
me doubt a bit your statement that the meta-fsl-* layers would contain
an alsa-plugins recipe, but maybe you have your recipes from some
repository that isn't known to the search engine... I'm not personally
familiar with any of the fsl repos.

> --------
> I have narrow down to only bitbake qtbase  (Jethro branch)

I don't understand what you mean by this.

> and still get 
> the libgl-mesa-dev dependencies error.  How do I add the library Package 
> into Yocto? Is it already there? I just don't know how to use it.
> 
> Seems like I am missing a bunch:  libgles3-mx6-dev, imx-gpu-viv-dev, 
> libclc-mx6, libgl-mesa-dev...
> 
>      ERROR: Nothing RPROVIDES 'libgl-mesa-dev' (but 
> /mountdata/hio-yocto-bsp/sources/meta-fsl-arm/recipes- 
> graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p7.1-hfp.bb RDEPENDS on or 
> otherwise requires it)

meta/recipes-graphics/mesa/mesa.inc from Poky contains the libgl-mesa-
dev package definition. I don't know what the problem might be.

-- Tanu


> Thank you very much,
> 
> On 11/23/2015 08:20 AM, Tanu Kaskinen wrote:
> > On Fri, 2015-11-20 at 17:01 -0800, Charles Chau wrote:
> > > Hello,
> > > 
> > > I am trying to upgrade my image from Daisy to Jethro.
> > > 
> > > I followed this tutorial from Wandboard
> > > http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
> > > The Core Board I am using is Freescale i.MX6DL board
> > > 
> > > I am getting a lot of error of dependencies from the previous tutorial
> > > IMAGE_INSTALL_append and could not find the recipes for them.
> > > 
> > > > ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but
> > > > /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb
> > > > RDEPENDS on or otherwise requires it)
> > The alsa-plugins recipe from Jethro should provide alsa-plugins-
> > pulseaudio-conf, unless you have explicitly disabled pulseaudio
> > support. Do you perhaps have a different alsa-plugins recipe provided
> > by some other layer that overrides Poky? alsa-plugins was not included
> > in Poky before Jethro, so it might appear in other layers.
> > 
> > 
> 

