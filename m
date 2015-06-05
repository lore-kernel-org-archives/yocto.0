Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37F94E009EB; Fri,  5 Jun 2015 09:34:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB165E009E7
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 09:34:10 -0700 (PDT)
Received: by laar3 with SMTP id r3so9041678laa.3
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 09:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=i08k6JmGV4eUNsMSUyF8GKJrPUGhdkGXRmke2Jr6ULM=;
	b=EdA/JVuouibeqBIvurGuAo25BKSjvPGb+i7v8AsharXgx9xJ+j2HGDyNbZBICjOqG3
	rVg9+7lWfqIjg5gffopBPaK4YR0gRtfGB+BEFheV9f/EjYw3Hkq83T3l4NynRrqLylTu
	ID8cb9sjHFqPsUODGvTEfDYRh98RL44L82+CcQTvYJE5HbkepH8GfsIswZA4+Jn1vp4w
	aknrBUGadmmbZrF5MfIootUWgmE0lPibRtu5fnVYkhSTqMVGNtVOoE1lBnqLXP6j9M/B
	FFYAMJMADM1RUqDab26fX3PNY1gm7IAMTs2KIcIyhkP3LzusNfgycBEJFmEJowumcmqm
	QYmA==
X-Gm-Message-State: ALoCoQlvsDm2VRgnRWcW8lwRWqKHO+N6gPWxnzcu7xOwf6svjNGB44PaCkuJkU+PDaWa5eZM4VV8
X-Received: by 10.112.151.178 with SMTP id ur18mr4216807lbb.59.1433522048278; 
	Fri, 05 Jun 2015 09:34:08 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id rp10sm1882452lbb.8.2015.06.05.09.34.02
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 09:34:07 -0700 (PDT)
Date: Fri, 5 Jun 2015 18:33:58 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150605163358.GB5866@gmail.com>
References: <5527E83B.6030006@mlbassoc.com>
	<DM2PR0201MB108770242C2114A0D12F29CBCCFA0@DM2PR0201MB1087.namprd02.prod.outlook.com>
	<55280A40.50605@mlbassoc.com> <55281FC2.8030602@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <55281FC2.8030602@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] mesa & gl problems
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
X-List-Received-Date: Fri, 05 Jun 2015 16:34:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 10, 2015 at 01:08:50PM -0600, Gary Thomas wrote:
> On 2015-04-10 11:37, Gary Thomas wrote:
> >On 2015-04-10 10:25, Erik Bolton wrote:
> >>Gary:
> >>
> >>Something is still pulling in libjpeg. It's possible you've got a recipe that depends on libjpeg directly. Check any modified recipes or custom stuff you've added.
> >>
> >
> >I'll give it a look.
> >
> >>The mesa errors are a little more interesting. Typically that means a graphics driver is being included that provides GL/GLES along with mesa (which also provides the same
> >>functionality).
> >>
> >>Are you sure the mesa errors only started after you tried to make libjpeg-turbo the preferred jpeg provider?
> >
> >Yes, if I remove those lines from by local.conf, all of these errors vanish.
>
> I found a couple of problems
>
> * meta-raspberrypi/conf/machine/include/rpi-default-providers.inc
>   Does not currently allow PREFERRED_PROVIDER_jpeg to be overriden
>
> * meta-raspberrypi/recipes-graphics/userland/userland_git.bb
>   Does not provide virtual/libgles1 (only virtual/libgles2 and virtual/libgl)
>   The 'libva' library used by 'vlc' requires virtual/libgles1 and virtual/libgles2
>
> The first issue is simple to fix:
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index ee3a3ac..ae9ed70 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -7,4 +7,5 @@ PREFERRED_PROVIDER_virtual/egl ?= "userland"
>  PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>  PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>  PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
> -PREFERRED_PROVIDER_jpeg = "jpeg"
> +PREFERRED_PROVIDER_jpeg ?= "jpeg"
> +PREFERRED_PROVIDER_jpeg-native ?= "jpeg-native"
>
> I don't know a workaround for the second.  Any ideas?

RaspberryPi doesn't provide GLES1 on any of the providers. Check the mailing
history for another related topic. The solutions are:
1. patch mesa to have gles1 provided from there
2. have something like mesa-gl but for gles1

https://lists.yoctoproject.org/pipermail/yocto/2015-April/024710.html

--
Andrei Gherzan

