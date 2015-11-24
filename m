Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E29E00B19; Mon, 23 Nov 2015 23:26:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4726E00AE6
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 23:26:16 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 0268B20D45
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 02:26:16 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
	by compute3.internal (MEProxy); Tue, 24 Nov 2015 02:26:16 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=NBdWx3cSFjs2dB4
	HcssCSt5z7Xo=; b=eZ6MSCv+7RnO0q+7fUv9/dPRhSHDcYQvU4LA6bAAKIJfq/c
	y7m0RNNdNCd6+tHD9HysDbq1hArxhX6euWw92Ez88atnp+nNm8chYvDS5v7O55Dd
	I2DWsuRD51djZtVvDxoY7s0FYhw2DwGTmiK8WzlyK/ett3I+TUOuccao1n34=
X-Sasl-enc: 5Ba1IgBrBXbY7Lx0t/Sn7IE+rsYaTzH1Q6lSrI5DqeuZ 1448349975
Received: from laptop (a88-114-110-232.elisa-laajakaista.fi [88.114.110.232])
	by mail.messagingengine.com (Postfix) with ESMTPA id 533FCC013FE;
	Tue, 24 Nov 2015 02:26:15 -0500 (EST)
Message-ID: <1448349973.6918.166.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Charles Chau <charles.chau@habeyusa.com>
Date: Tue, 24 Nov 2015 09:26:13 +0200
In-Reply-To: <5653EA90.80708@habeyusa.com>
References: <564FC280.7040205@habeyusa.com>
	<1448295644.6918.11.camel@iki.fi> <565392FA.2070608@habeyusa.com>
	<1448336006.6918.83.camel@iki.fi> <5653EA90.80708@habeyusa.com>
X-Mailer: Evolution 3.18.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 24 Nov 2015 07:26:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2015-11-23 at 20:41 -0800, Charles Chau wrote:
> Thank you very much for replying,
> 
> Most of the problem I encounter is Package Dependencies which I cannot 
> find anywhere (with Google).

Do you mean you can't find the dependencies, or you can't find
documentation for how dependencies work?

If you mean you can't find the dependencies, Google isn't really the
tool to look for them. The things that have caused problems for you so
far are alsa-plugins and mesa, which both can be found in the Poky git
repository. In the Poky git checkout, which I assume you already have,
"git ls-files | grep foo" can be used to look for recipes named "foo",
and "git grep foo" can be used to figure out in which recipe a given
package is defined.

If you're looking for documentation,
https://yoctoproject.org/documentation has lots of it.

> I am still learning the components to 
> build an image so Yocto is confusing.
> 
> I wanted to build qt5 for free i.MX6 board.
> In the beginning, I was trying to build core-image-minimal and all the 
> dependencies error popped up.
> So I change to only bitbake qtbase, to start from small.

Ah, now I understand what you meant by "only bitbake qtbase". For some
reason I didn't at first realize that you meant running "bitbake
qtbase" on the command line.

> Right now, I have deleted libgl-mesa-dev from
> /meta-fsl-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv.inc
> 
> Although I still encounter Kernel issue, at least it get passed the 
> configuring stage.
> 
> The thing I want to learn is that, How can I add libgl-mesa-dev to my 
> Yocto build without delete stuff. I tried to add "mesa" to 
> "IMAGE_INSTALL_append" and it did not work though.

You don't need to add stuff to IMAGE_INSTALL, the recipes already have
the dependency information in them. For example, imx-gpu-viv.inc
contains this:

DEPENDS += "${@base_contains('DISTRO_FEATURES', 'x11', 'virtual/libx11 libxdamage libxext libxfixes mesa', \
                             base_contains('DISTRO_FEATURES', 'wayland', 'wayland', \
                                           '', d), d)}"

That means that if "x11" is included in DISTRO_FEATURES, then imx-gpu-
viv.inc depends on the mesa recipe, which provides the libgl-mesa-dev
package. Now the error you got says that nothing provides libgl-mesa-
dev. I think you would have got a different error if the mesa recipe
wouldn't have been found. Therefore, I think the problem is that "x11"
is not in DISTRO_FEATURES, which means that as far as bitbake is
concerned, there's no need to care about mesa. Since bitbake ignores
the mesa recipe, it doesn't know about the libgl-mesa-dev package
either.

If that analysis is correct, then imx-gpu-viv.inc appears to be buggy.
It contains this line:

RDEPENDS_libgl-mx6-dev += "libgl-mesa-dev"

That means that the libgl-mx6-dev package depends on libgl-mesa-dev. If
imx-gpu-viv.inc is supposed to support the case where X11 is not
enabled, then there should not be unconditional dependencies on
packages that are only provided if X11 is enabled.

So what should you do? If you want to use X11, I think you just need to
add "x11" to DISTRO_FEATURES. If you don't want to use X11, complain to
the meta-fsl-arm maintainers about the bug in imx-gpu-viv.inc (well, it
would be good to complain to them anyway, since bugs should be fixed,
and I don't know if they have noticed this thread).

-- Tanu


> For example, if I miss gnome, I would go to the web to find it and git 
> clone, then go to bblayers and add gnome path. But package definition or 
> libraries are different, I just do not know how they work.
> 
> Again, thank you!!!
> 
> On 11/23/2015 7:33 PM, Tanu Kaskinen wrote:
> > On Mon, 2015-11-23 at 14:28 -0800, Charles Chau wrote:
> > > I have meta-fsl-arm, meta-fsl-arm-extra, and meta-fsl-demos.  I checked
> > > and it has fsl-alsa-plugin as well as alsa-plugin.
> > > 
> > > I tried to delete the recipes-multimedia in meta-fsl-arm, and it fails
> > > during compile.
> > > What should I do?
> > Deleting everything in recipes-multimedia seems overkill if the only
> > problem was that the meta-fsl-* layers had an alsa-plugins recipe that
> > overrode the Poky version.
> > 
> > Regarding the compilation failure, it's hard to say anything without
> > knowing the exact error.
> > 
> > By the way, the layer search engine didn't find alsa-plugins in the
> > meta-fsl-* repos:
> > http://layers.openembedded.org/layerindex/branch/master/recipes/?q=alsa-plugins
> > 
> > Only fsl-alsa-plugins was found, which is a different thing. This makes
> > me doubt a bit your statement that the meta-fsl-* layers would contain
> > an alsa-plugins recipe, but maybe you have your recipes from some
> > repository that isn't known to the search engine... I'm not personally
> > familiar with any of the fsl repos.
> > 
> > > --------
> > > I have narrow down to only bitbake qtbase  (Jethro branch)
> > I don't understand what you mean by this.
> > 
> > > and still get
> > > the libgl-mesa-dev dependencies error.  How do I add the library Package
> > > into Yocto? Is it already there? I just don't know how to use it.
> > > 
> > > Seems like I am missing a bunch:  libgles3-mx6-dev, imx-gpu-viv-dev,
> > > libclc-mx6, libgl-mesa-dev...
> > > 
> > >       ERROR: Nothing RPROVIDES 'libgl-mesa-dev' (but
> > > /mountdata/hio-yocto-bsp/sources/meta-fsl-arm/recipes-
> > > graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p7.1-hfp.bb RDEPENDS on or
> > > otherwise requires it)
> > meta/recipes-graphics/mesa/mesa.inc from Poky contains the libgl-mesa-
> > dev package definition. I don't know what the problem might be.
> > 
> > -- Tanu
> > 
> > 
> > > Thank you very much,
> > > 
> > > On 11/23/2015 08:20 AM, Tanu Kaskinen wrote:
> > > > On Fri, 2015-11-20 at 17:01 -0800, Charles Chau wrote:
> > > > > Hello,
> > > > > 
> > > > > I am trying to upgrade my image from Daisy to Jethro.
> > > > > 
> > > > > I followed this tutorial from Wandboard
> > > > > http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
> > > > > The Core Board I am using is Freescale i.MX6DL board
> > > > > 
> > > > > I am getting a lot of error of dependencies from the previous tutorial
> > > > > IMAGE_INSTALL_append and could not find the recipes for them.
> > > > > 
> > > > > > ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but
> > > > > > /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb
> > > > > > RDEPENDS on or otherwise requires it)
> > > > The alsa-plugins recipe from Jethro should provide alsa-plugins-
> > > > pulseaudio-conf, unless you have explicitly disabled pulseaudio
> > > > support. Do you perhaps have a different alsa-plugins recipe provided
> > > > by some other layer that overrides Poky? alsa-plugins was not included
> > > > in Poky before Jethro, so it might appear in other layers.
> > > > 
> > > > 
> 

