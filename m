Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF411E01366
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 06:12:52 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04ECalt019554;
	Wed, 4 Jan 2012 14:12:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18742-06; Wed,  4 Jan 2012 14:12:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04ECRAa019548
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 Jan 2012 14:12:28 GMT
Message-ID: <1325686346.20759.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
Date: Wed, 04 Jan 2012 14:12:26 +0000
In-Reply-To: <CAMvUbCyeLEEThPBkYUjazinVBQq48GXQypU_4pft32L87p8Tjg@mail.gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
	<CAMvUbCyeLEEThPBkYUjazinVBQq48GXQypU_4pft32L87p8Tjg@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 2/3] distro: Add poky-tiny distro definition
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jan 2012 14:12:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-01-04 at 14:56 +0100, Leon Woestenberg wrote:
> Darren,
> 
> On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com>
> wrote:
>         Poky-tiny is intended for building very small OS images. The
>         distro
>         definition sets the providers for the kernel and the runtime
>         services.
>         It also reduces the eglibc component list and other
>         DISTRO_FEATURE
>         elements.
>         
>         Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>         ---
>          meta-yocto/conf/distro/poky-tiny.conf |  103
>         +++++++++++++++++++++++++++++++++
> 
> On retrospect, does poky-tiny.conf below in openembedded-core (rather
> than in a Yocto layer)?
> I *do* welcome such a distro in -core, as my use case has always been
> similar to this.
> 
> Also, this seems to be the first entry in meta-yocto/, but it cannot
> be used as a layer:
> openembedded-core.git/meta-yocto/conf/layer.conf: [Errno 2] No such
> file or directory
> 
> What is the expected way to use this? Or is it that the layer file is
> just missing?

I've slipped up when applying the patch, it was meant for meta-yocto,
sorry. I'll fix that. It won't work standalone.

Cheers,

Richard


