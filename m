Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FC77E00A73; Wed, 21 Oct 2015 05:12:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35D1EE00A7F
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:12:07 -0700 (PDT)
Received: by wijp11 with SMTP id p11so91786208wij.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=CRnE4Lu3CBzZhAL6kD/YVXY36x9Kpgzibj3u5MpZQ3s=;
	b=dUsqwGSKihDTzk2NA3vN/mwRqO//bVVE6Wg/A3kCN05GiZJacurJZ2DbHEbL2sYliC
	kCgQGnP4fxSe9T5DG5YwBIgD5V19jQ9r33Uuxi4btccnD5/fI2vuxajgBLr6F+7IBKmr
	CzSN85OiLlBnys49omx/7ZybVDZcTdIDM2dqEElkmJ6OvzJPdSdgVj9GJVtTW2/6jHeV
	j4G1O2zYFlyrDe+gNFhX6ctiDrFs2AVi8n2IFTmdEH3tsXVQoSJfnVJx7VMpd6CJWHPq
	htq2YUyxTt7sTmURH0IYRYEdigRqQqrmQyC5TGyo9EMg0BpdQCQXLiJWeiLcx4AQCc2E
	4bRw==
X-Gm-Message-State: ALoCoQn7NkhUdMfZivJ8C56022hVyG32RDpUNxIa6luwAgtpDy60oAdh8PGHOBzLjZAbxgRD4dHl
X-Received: by 10.194.156.195 with SMTP id wg3mr11819918wjb.2.1445429526608;
	Wed, 21 Oct 2015 05:12:06 -0700 (PDT)
Received: from resin (220.204.eduroam.dynamic.rbg.tum.de. [131.159.204.220])
	by smtp.gmail.com with ESMTPSA id
	lv4sm10026386wjb.43.2015.10.21.05.12.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Oct 2015 05:12:05 -0700 (PDT)
Date: Wed, 21 Oct 2015 14:12:03 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alex J Lennon <ajlennon@gmail.com>
Message-ID: <20151021121203.GB5610@resin>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
	<55D1A82F.9020506@gmail.com>
	<02548fc1921b30fcdb6a0791bd7a6361@technux.se>
	<55DC2086.5020008@gmail.com>
MIME-Version: 1.0
In-Reply-To: <55DC2086.5020008@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Wed, 21 Oct 2015 12:12:32 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Aug 25, 2015 at 09:00:06AM +0100, Alex J Lennon wrote:
> On 25/08/2015 07:57, Petter Mabäcker wrote:
> >
> >
> > 2015-08-17 11:23 skrev Alex J Lennon:
> >
> >> On 17/08/2015 09:11, Petter Mabäcker wrote:
> >>> 2015-08-17 09:57 skrev Andrei Gherzan:
> >>>> Hello, On Tuesday, August 11, 2015, Petter Mabäcker
> >>>> <petter@technux.se <mailto:petter@technux.se>
> >>>> <mailto:petter@technux.se <mailto:petter@technux.se>>> wrote:
> >>>> 2015-08-11 19:04 skrev Alex J Lennon: Signed-off-by: Alex J Lennon
> >>>> <ajlennon@dynamicdevices.co.uk
> >>>> <mailto:ajlennon@dynamicdevices.co.uk>> ---
> >>>> recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++ 1 file changed,
> >>>> 4 insertions(+) diff --git
> >>>> a/recipes-kernel/linux/linux-raspberrypi.inc
> >>>> b/recipes-kernel/linux/linux-raspberrypi.inc index e38d905..8024412
> >>>> 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
> >>>> b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,6 +6,10 @@
> >>>> SECTION = "kernel" LICENSE = "GPLv2" LIC_FILES_CHKSUM =
> >>>> "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" +SRC_URI += "
> >>>> \ + file://build-in-audio.cfg \ + " This one didn't make it. --
> >>>> Andrei Gherzan -- -- Andrei Gherzan
> >>> Think you got the wrong receiver =) I notified Alex about this some
> >>> days ago, Alex can you send up a v2 for this?
> >> The build-in-audio.cfg patch was just for testing of fragment support.
> >> It's understood that we're not going to have this build into the kernel
> >> by default, although I do still need to find some words to add to the
> >> README on audio routing setup and so forth.
> >>
> >> I started testing a build with master over the weekend and it built OK.
> >> Just need to find some time to run up a couple of kernels and will
> >> resubmit the v2 patch with Petter's enhanced commit message.
> >>
> >> I don't have an RPiv1 around at the moment but I will probably double
> >> check the kernel does still actually build for RPiv1 machine
> >>
> >> Cheers,
> >>
> >> Alex
> >>> BR, Petter
> >
> > Hi Alex, Any news for the v2 changeset? Would be awesome to get the 4.x
> > integrated soon.
> >
>
> Hi, yeah I got a little sidetracked I'm afraid. Turns out
> core-image-sato isn't building in master any more due to a new
> dependency on libexpoxy which in turn requires EGL.
>
> Anyway, so I did successfully build 4.x and 3.x kernels for RPiv2 in an
> rpi-xxx-image. I just didn't get around to running them up although I
> see no reason to think they won't.
>
> I'll try to take a look at this, as I like you would like this signed off :)
>
> Cheers, Alex
>

Any chances this is still coming soon?

--
Andrei Gherzan

