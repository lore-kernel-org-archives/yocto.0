Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A26EEE0180D
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 06:01:42 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	rA7E1RKG011792; Thu, 7 Nov 2013 14:01:27 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qsEpnfwW0yvV; Thu,  7 Nov 2013 14:01:27 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	rA7E1N9j011787
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Thu, 7 Nov 2013 14:01:25 GMT
Message-ID: <1383832879.6271.252.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Thu, 07 Nov 2013 14:01:19 +0000
In-Reply-To: <CAFyqS9pLdipL_p3=9NzCYHbiTx8DuiuA=_cU=YWfFOCvtb+rLg@mail.gmail.com>
References: <CAFyqS9q-SbkFD2t=1dRfLqv3KzNiGTGQUAkbRa9=tmrxuHZM-g@mail.gmail.com>
	<CAFyqS9rjGZ82fxov1BFux6zUv4Z+Ub+Bahinqdew9ZxTTsMV-w@mail.gmail.com>
	<1835654.lzj3BL3FA0@helios>
	<CAFyqS9pLdipL_p3=9NzCYHbiTx8DuiuA=_cU=YWfFOCvtb+rLg@mail.gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc-cross-canadian-arm: found library in wrong location
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
X-List-Received-Date: Thu, 07 Nov 2013 14:01:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2013-11-07 at 12:15 +0100, Hans Beckérus wrote:
> On Thu, Nov 7, 2013 at 12:00 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > Hi Hans,
> >
> > On Thursday 07 November 2013 10:56:17 Hans Beckérus wrote:
> >> On Wed, Nov 6, 2013 at 12:32 PM, Hans Beckérus <hans.beckerus@gmail.com>
> >> wrote:
> >> > Hi, I am getting the below error when populating the sdk for our Yocto
> >> > 1.5 based image.
> >> >
> >> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
> >> > location:
> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gn
> >> > ueabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0.0.0
> >> > gcc-cross-canadian-arm: found library in wrong location:
> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu
> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so.0
> >> > gcc-cross-canadian-arm: found library in wrong location:
> >> > /opt/poky/1.5/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu
> >> > eabi/gcc/arm-poky-linux-gnueabi/4.8.1/liblto_plugin.so
> >> >
> >> > Never got this on Yocto 1.4. I am not even planning of installing
> >> > anything in /opt so this really came out of nowhere. There is nothing
> >> > installed in /opt at the moment.
> >> > Did it actually expect to find something in /opt? And in that case,
> >> > how can it? It can not know where the toolchain will be installed!?
> >> > Somebody that can shed some light on this one? Can we safely ignore it?
> >>
> >> Ok, I started to look some more into this but unfortunately my
> >> knowledge about how bitbake is picking up recipes etc. is way too
> >> limited to explain why this is happening. I searched for
> >> gcc-cross-canadian in our layers and it can be found here:
> >>
> >> meta/recipes-devtools/gcc/gcc-cross-canadian.inc
> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.7.bb
> >> meta/recipes-devtools/gcc/gcc-cross-canadian_4.8.bb
> >> meta-openembedded/toolchain-layer/recipes-devtools/gcc/gcc-cross-canadian_4.
> >> 6.bb
> >>
> >> So, my question now is: why does it pickup gcc 4.6 from
> >> meta-openembedded when there are better alternatives in oe-core?
> >
> > What makes you think it is picking up the one in toolchain-layer? I don't see
> > references to 4.6 in the QA error. If you haven't added meta-
> > openembedded/toolchain-layer to your bblayers.conf specifically it won't be
> > being seen by bitbake at all.
> >
> 
> Hi Paul.
> 
> True. It was a false statement. The reason behind why I thought it
> picked up the wrong recipe was due to other reasons.
> I now see that it seems to pick up the 4.8 version in oe-core.
> 
> > It's more than likely that this QA error is bogus. The "found library in wrong
> > location" QA check was broken originally; I "fixed" it but I think it has
> > always been a little over-zealous since then.
> >
> I see. Funny though that this was not seen on Yocto 1.4? But it
> probably has a good explanation too.
> The most important thing is that we can now conclude that it is safe
> to ignore it. I guess it might have something to do with providing
> references to ${SDKPATH} in EXTRA_OECONF_PATHS. But it is most likely
> not worth the effort trying to fix it.
> 

There were some changes in the cross-canadian recipes in 1.5 which
triggered this warning. We do need to figure out why its happening and
fix it. It does seem to be intermittent though and when I have time to
debug it, I can't see to reproduce it :/

It is relatively harmless but would be good to resolve it.

Cheers,

Richard


