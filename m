Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B3F3E00B58; Sat, 24 Oct 2015 13:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C4FE00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:09:31 -0700 (PDT)
Received: by wicfv8 with SMTP id fv8so70026775wic.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=FiUOzneOaZxTQULYanvHEa3sbX+0OJOJw7hBq7DPuKg=;
	b=FutIPog54SdwyyznES0lzHStd6TQMARRFVBEJDV1Xg2gjtr5qRbyhnPJhmVNsfpLR8
	zJjAVixhyfuBDUe7A+DWaLT6WU7qKhwRMUB9LfdBBedqi8dejEDPl+nrJZdX4XEEKET5
	AiMSzDwsc1BGL4K9+kDw15LBCRfi2mGwDibYy65m9I1OiG/vtK9/0//RQQ6J9TSU6HrZ
	/wThqSztDwPTm2WNdkdpnSzzKaVCzTIcV9jzQ473Z7yP/tTGCRnI3QUqwKx65pecmvsP
	/BoW/ce2heicW0DYZz6zbgwsi0+4GRd6WVqK24QQwe3nnhxrU7KOUcwPdcgLKpXts7Vz
	id9w==
X-Gm-Message-State: ALoCoQk6KsenzemMPzwDV6nnWdyYG+6Kg2M1d8wH8HzoYE9g+EFR2NXURgII5hb1RcO2bLZOf3WE
X-Received: by 10.194.57.142 with SMTP id i14mr13358215wjq.24.1445717371069;
	Sat, 24 Oct 2015 13:09:31 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162])
	by smtp.gmail.com with ESMTPSA id q11sm7253661wik.1.2015.10.24.13.09.29
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 13:09:29 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:09:27 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20151024200927.GF4459@resin>
References: <1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com>
	<55DB7DBA.7030902@osg.samsung.com> <20151021123216.GF5610@resin>
	<562797C0.3000303@osg.samsung.com>
	<CALbNGRSZurTw0frxHnKTmXvj8H8Zw3qsL1RH4OP-yW+faFaLEg@mail.gmail.com>
	<5627A8FA.9060006@osg.samsung.com>
	<CAK18fxFhokAevcPc_q-W4ewT7pUaa0ikAS8B0JuKn_CVDRfzzA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxFhokAevcPc_q-W4ewT7pUaa0ikAS8B0JuKn_CVDRfzzA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Sat, 24 Oct 2015 20:09:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Oct 21, 2015 at 05:47:55PM +0200, Andrei Gherzan wrote:
> On Wed, Oct 21, 2015 at 5:02 PM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
> > Hello Andreas,
> >
> > On 10/21/2015 04:55 PM, Andreas Müller wrote:
> >> On Wed, Oct 21, 2015 at 3:48 PM, Javier Martinez Canillas
> >> <javier@osg.samsung.com> wrote:
> >>> Hello Andrei,
> >>>
> >>> On 10/21/2015 02:32 PM, Andrei Gherzan wrote:
> >>>> Hello Javier,
> >>>>
> >>>> On Mon, Aug 24, 2015 at 10:25:30PM +0200, Javier Martinez Canillas wrote:
> >>>>> Hello,
> >>>>>
> >>>>> On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
> >>>>>> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
> >>>>>>> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
> >>>>>
> >>>>> [snip]
> >>>>>
> >>>>>>>>>
> >>>>>>>>> +2.O. Graphic stacks
> >>>>>>>>> +===================
> >>>>>>>>> +The Raspberry Pi boards can use one of two graphics stacks: The userland
> >>>>>>>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
> >>>>>>>>> +is used since the vc4 is still experimental. But this can be changed by
> >>>>>>>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
> >>>>>>>> providers.
> >>>>>>>>> +This is explained in the conf/machine/include/rpi-default-providers.inc
> >>>>>>>> file.
> >>>>>>>>> +
> >>>>>>>>
> >>>>>>>> you may want to add pointer to the commented out code that you have added
> >>>>>>>> to select them
> >>>>>>>> in rpi-default-providers.inc
> >>>>>>>>
> >>>>>>>
> >>>>>>> It would be nice to have some detailed info on what and where to comment
> >>>>>>> out the configuration.
> >>>>>>>
> >>>>>>
> >>>>>> On patch 3/4 I added that documentation to rpi-default-providers but didn't
> >>>>>> add it to the README and instead pointed out to rpi-default-providers to
> >>>>>> have a level of indirection in case the providers change and to not have
> >>>>>> duplicated information but I will add it to the README as well.
> >>>>>>
> >>>>>> Do you have comments on the other patches in the series so I can address
> >>>>>> all of them before re-spinning?
> >>>>>>
> >>>>>
> >>>>
> >>>> Really sorry on this late reply. So my only recommendation is to move things
> >>>
> >>> No worries, I've also been very busy with other stuff.
> >>>
> >>>> you wrote in 3/4 in the 4/4 (README). Basically you would describe what a user
> >>>> needs to overwrite as providers in order to use VC4 as graphics stack.
> >>>>
> >>>
> >>> Ok, I'm traveling to Korea next week for KLF and KS so I'll probably resend
> >>> a v3 (addressing your suggestions) later next week when I'm back.
> >>>
> >>>> As well, how do you handle the devicetrees for 4.1? Aren't changed in 4+?
> >>>>
> >>>
> >>> For now, I'm defining a KERNEL_DEVICETREE in my conf/local.conf file since
> >>> that is what was agreed with Petter Mabäcker on v1 of this series [0 and
> >>> I also mentioned in the cover letter [1].
> >>>
> >>> But the new device tree overlay dir layout is not only for 4+ but also it
> >>> is used in the latest version of the older branches. So once all recipes'
> >>> SRCREV are bumped, overwriting the variable won't be necessary anymore.
> >>>
> >>>>> Gentle ping about this. Thanks!
> >>>>>
> >>>>> Best regards,
> >>>>> --
> >>>>> Javier Martinez Canillas
> >>>>> Open Source Group
> >>>>> Samsung Research America
> >>>>
> >>>> --
> >>>> Andrei Gherzan
> >>>>
> >>>
> >>> [0]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/025961.html
> >>> [1]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/026151.html
> >>>
> >>> Best regards,
> >>> --
> >>> Javier Martinez Canillas
> >>> Open Source Group
> >>> Samsung Research America
> >> When reworking: If I am not mistaken there is a chance that
> >> modesetting will work when using latest kernel versions from Eric
> >> Anholt. So would you mind to rebase the patches to these changes? I
> >> would again play tester role.
> >>
> >
> > Yes, I will. I know Derek was also playing with Eric's latest branch
> > so I'll coordinate with him and bump the sha-1 id if necessary.
> >
>
> In the meanwhile I will add 4.X support. Finally?
>
> --
> Andrei Gherzan

Done. Waiting for the next patch set of VC4. Thanks.

--
Andrei Gherzan

