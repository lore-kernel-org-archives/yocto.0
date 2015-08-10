Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B0CE00A81; Mon, 10 Aug 2015 14:30:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1918BE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:30:24 -0700 (PDT)
Received: by wijp15 with SMTP id p15so151918683wij.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=nyTyD7Np0Nn5sq+2A1h3jvDIQVM0+SzrBLL+GPlLxCA=;
	b=jiZWIk0+UKxJsvPqUY2aSTeaHsKi8nbRDOh7a4M1y/KXUx12nH61anZSTES6Q/HNm1
	QNmhNUtqPjv6+WuyXe/pPkM/dt7Ry0sIwK475UIXxuiZkwAkOhq5lucIKmJiC4icYI/o
	znaCYnBdKLSCtIDXN26XHgcAcimkh2moleMn6yRQaYztvODvI5wgE79fiM81u8utdf1v
	bVXvL9J2c8Vg5TXsbd3HQWHfqyxbVlOk2jCQEpvdyvTK+Zsr2ZIXhlAnl2pHv4RIoBiJ
	EsgQfnZX2b+EIZTCmIhmdpmGgjMiEamXfVpaPwPNO8RZo5C+mtV8dN2WLVznayQdgRIt
	VQrg==
X-Gm-Message-State: ALoCoQnY1Kcl1N4acbbNRyWAGM9f9YeRWh7KbWA+jLbHBaMhpTgDSwZVX2P1BsxR1wL5+Wg3X0qn
X-Received: by 10.194.90.225 with SMTP id bz1mr33002488wjb.110.1439242223881; 
	Mon, 10 Aug 2015 14:30:23 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ul1sm31323805wjc.30.2015.08.10.14.30.22
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 14:30:23 -0700 (PDT)
Date: Mon, 10 Aug 2015 23:30:21 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150810213021.GB4718@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <55C85F2E.9080600@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Mon, 10 Aug 2015 21:30:28 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Mon, Aug 10, 2015 at 10:22:06AM +0200, Javier Martinez Canillas wrote:
> Hello Andreas,
>
> On 08/10/2015 01:37 AM, Andreas Müller wrote:
> >> Khem definitely has a very good point. Maybe his way of putting it in words was
> >> not that productive. But the core idea was definitely right: I don't want rpi
> >> layer to introduce distro features.
> > Agreed but I still have issues make the changes work
> >
> > What I have done to test:
> >
> > 1. add
> > MASK_GPU_INTERRUPT = "0x400"
> > DISTRO_FEATURES_append = " vc4-gfx"
> >
> > to my local.conf
> >
> > 2. put [1] on top of the VC4 patches sent  (this is a WIP patch not
> > yet finished)
> > 3. tested running X11
> >
>
> I did only test with Weston since that is what Tizen uses and not with X11.
> I'll make sure to test with X11 and also include a mesa_%.bbappend for v2.
>
> > Question: What setting does the trick getting vc4 driver created by
> > mesa doing the OpenGL work. I see only swrast which is bulls...
> >
>
> I'm not really a graphics person so I'll let Derek to answer this. He is
> in fact the author of most of these patches and I'm just working on push
> them upstream.
>

Guys, I really appreciate this. Thanks.

--
Andrei Gherzan

