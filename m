Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ED9FE00AD1; Mon, 23 Nov 2015 08:28:00 -0800 (PST)
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
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Nov 2015 08:27:57 PST
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C37FE00B2C
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 08:27:57 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 85EB5208CD
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 11:20:46 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
	by compute4.internal (MEProxy); Mon, 23 Nov 2015 11:20:46 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=O/a4MTQHqSEgfp4
	/CYiczKxx8W4=; b=bCzjd5kqwhRgwLiTM5W2Tprn9ycBHe5/UaaqCTPlc9ZJZQz
	sEBZzyymnhmiUCOIM3Tbdjz/VpCP9d5eHOUV2Hkmfur7iOfK+TbOxIf97zNWYw2R
	8knrRCdr4viyXFBPyWDC3e6a8GhmuJJa96LO924Zp2bqS1CCkU0xD3HklJhY=
X-Sasl-enc: uERjI9+k0FTNWhphjimZKscwZA/+okeXPc1bBCXFLa/Y 1448295646
Received: from laptop (a88-114-110-232.elisa-laajakaista.fi [88.114.110.232])
	by mail.messagingengine.com (Postfix) with ESMTPA id DEACAC0001C;
	Mon, 23 Nov 2015 11:20:45 -0500 (EST)
Message-ID: <1448295644.6918.11.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Charles Chau <charles.chau@habeyusa.com>, yocto@yoctoproject.org
Date: Mon, 23 Nov 2015 18:20:44 +0200
In-Reply-To: <564FC280.7040205@habeyusa.com>
References: <564FC280.7040205@habeyusa.com>
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
X-List-Received-Date: Mon, 23 Nov 2015 16:28:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2015-11-20 at 17:01 -0800, Charles Chau wrote:
> Hello,
> 
> I am trying to upgrade my image from Daisy to Jethro.
> 
> I followed this tutorial from Wandboard 
> http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
> The Core Board I am using is Freescale i.MX6DL board
> 
> I am getting a lot of error of dependencies from the previous tutorial 
> IMAGE_INSTALL_append and could not find the recipes for them.
> 
> > ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but 
> > /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb 
> > RDEPENDS on or otherwise requires it)

The alsa-plugins recipe from Jethro should provide alsa-plugins-
pulseaudio-conf, unless you have explicitly disabled pulseaudio
support. Do you perhaps have a different alsa-plugins recipe provided
by some other layer that overrides Poky? alsa-plugins was not included
in Poky before Jethro, so it might appear in other layers.


-- 
Tanu

