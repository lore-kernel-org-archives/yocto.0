Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F7BFE013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 08:32:11 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hf12so2447879vcb.1
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 08:32:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=V0R9eGAAe8XgMI28sSz/s9ymBdddiAawuzhO3adVJq0=;
	b=azLURUxj0VN40JKU4XyzUJG/4YyBThACMbAOUEzKYDB76yuydpZieP71ure6UoKhLh
	lICfU4MW7ONUpahISX6Mb8kvQhcvC9lrOle8o/RT1v+iiNHfDXvns8osoFMKA7r22UPd
	1amWgl+2yLjDdEki0q99UIc/rFc6PJudc3noHmHkzzdxi2QLVLh+EQhM9SDaiR/PaCed
	HqMR6c2d/8VLc/NPjKuappYJkBkSEt/VadL3YX3RNLzmfmUp0HSiVRbJ470nT7UqNXo7
	rsLFSWFF+4FY5Tm3evnQGL1jUmDuj5+hc/uKnE57EHihY/1kfYyWG+/YLivXw2TyMHnh
	r/XQ==
MIME-Version: 1.0
X-Received: by 10.220.77.74 with SMTP id f10mr4111943vck.1.1374161531272; Thu,
	18 Jul 2013 08:32:11 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Thu, 18 Jul 2013 08:32:11 -0700 (PDT)
In-Reply-To: <1994317.voCf2gl0Ax@helios>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
	<CAPhnLPDOMPPOb+ZDH4mp4tZWFW_Xp-CZdWQFB=737EYLwXSsdg@mail.gmail.com>
	<1994317.voCf2gl0Ax@helios>
Date: Thu, 18 Jul 2013 08:32:11 -0700
Message-ID: <CAPhnLPAGFX+SLWp8yFh8N=HpkpTxFZHAicr+kjFGp4D3is=EBQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQncnnTcvlzAUDLCvXQRse/l3WgH0sOyEquLyKAs7P0wMhhDcdsBiq4ASI/58wWPavKEltoc
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Thu, 18 Jul 2013 15:32:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 18, 2013 at 5:37 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Beth,
>
> On Wednesday 17 July 2013 14:30:27 Flanagan, Elizabeth wrote:
>> So, after the oe-core failure last night that was due to how we
>> determine when to use the new testimage, this has kind of bumped up
>> the need for the autobuilder to start using LAYERVERSION_* as a means
>> of determinating major functionality changes.
>>
>> In this example, we've essentially broken backwards compatibility for
>> oe-core builds on the autobuilder. I put in a quick and dirty patch
>> last night just to get it so oe-core sanity will run using the old
>> sanity testing framework. I'm working on getting a GetLayerVersion
>> buildstep working so we can utilize it both for the new test framework
>> as well as to differentiate the toolchain image builds (prior to 2 we
>> build meta-toolchain-gmae, post core-image-sato-sdk).
>
> Wouldn't the simplest thing be to just check for the presence of
> meta/classes/testimage.bbclass?

Actually, no. What I would need to do here in buildbot land is either
script out the conditional in the bash that executes (ick, kind of a
pain to debug) or make an entirely new buildstep to check for the
existence of that one file, set a property and then check for that
property in RunSanityTesting. And that's just for sanity testing. For
meta-toolchain-gmae, I'd have to have yet another way of doing it.

It's so much easier to just have a GetLayerVersion step for each layer and then:

layerversion = self.getProperty("layerversion_core")
if layerversion and int(layerversion) > 1:
  #do one thing
else:
  #do something else.

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

