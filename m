Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 393F64C803C9
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 05:50:31 -0500 (CDT)
Received: from [10.250.128.245] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 2C60612EC117;
	Thu, 21 Oct 2010 06:26:01 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D7F8@shsmsx501.ccr.corp.intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D63D@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D7F8@shsmsx501.ccr.corp.intel.com>
Date: Thu, 21 Oct 2010 11:50:28 +0100
Message-ID: <1287658228.2325.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 10:50:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 13:32 +0800, Xu, Dongxiao wrote:
> Xu, Dongxiao wrote:
> > I'd also like to have a try, and building the demo image now.
> > 
> > Thanks,
> > Dongxiao
> > 
> > Joshua Lock wrote:
> >> Hi all,
> >> 
> >> I've successfully tested the UPnP demo in my office but would
> >> appreciate someone else taking a bash.
> >> 
> >> Unfortunately you currently need my branch from poky-contrib
> >> (josh/demo) and the corresponding branch from meta-demo (josh/demo).
> >> 
> >> The renderer and controller are installed together in the
> >> poky-image-rygel image (I've been using the -live variant).
> >> 
> >> I needed to use amixer to enable the soundcard and increase the
> >> volume on the netbook I was using. 
> >> 
> >> "amixer set Master on
> >>  amixer set Master 75"
> >> 
> >> Run rygel from a terminal and launch gupnp-av-cp and you should be
> >> able to set play music from a content store on the device. I haven't
> >> tested video... 
> 
> I just setup the environment and gupnp-av-cp could play music from
> another host within the network. However it seems that video doesn't
> work yet. Does gupnp-av-cp supports video play?

Thanks for testing this Dongxiao!

I'm not sure whether video is required for the demo, but it should be
supported by gupnp-av-cp and Rygel so long as required gstreamer plugins
are installed. What type of video where you trying to play?

To clarify did you test the josh/demo or master branch of the meta-demo
repository?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


