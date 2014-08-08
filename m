Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06CC1E0076B; Fri,  8 Aug 2014 01:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D16E00744
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 01:19:33 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id vb8so3806093obc.18
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 01:19:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+0FTZ2KgpPE5T4G9R6p10BxafLUx/vT6fXegpsXw8uI=;
	b=GluiRvC+Fky8eOvtRVhNFJVTrCvcJl/J9+2KOwENrjDSoSWBNpRLyMP9+H+PPfTTFD
	ZNmYWcKoOoJ0hR16f8W6Ky97Xhi+S/1GJuDUIBSScxSqmAdiZPPHNjMYXh7Why0Mi743
	J3A+3GC6bgWDT76kp4Gm2P+YgTabXQGEyARiLlJLetC7rZOg0z5icQvu9HJEhlrUXFE3
	MRRtRWMnQNPbEcksQdeZpl0/w36ZzC3PNCHJFEt2gE8menhVdvmIuYTwrTTtaL4ACOni
	uIcrajcqwY6FyG/ymCZSRh185GKpk3CCk9UbXBbrYaYT0QJhhv6k89lnoiXgPSIDeINP
	AHCA==
X-Gm-Message-State: ALoCoQlJOJ5r2L8wrOzB4YptQIZxpTFTbXRohKeNBsh7GXDK8bBOMRhdiSs0CaHgzxlSpScDJAiY
X-Received: by 10.182.80.33 with SMTP id o1mr1330918obx.78.1407485973048; Fri,
	08 Aug 2014 01:19:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Fri, 8 Aug 2014 01:19:12 -0700 (PDT)
In-Reply-To: <53E3B236.40604@ge.com>
References: <53E3B236.40604@ge.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 8 Aug 2014 10:19:12 +0200
Message-ID: <CAP71WjyJPaKkWFRdwBZzMrpMa7tykjb_o4=jp24PTi29mkC==Q@mail.gmail.com>
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Assembling images to build a NOR boot image
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
X-List-Received-Date: Fri, 08 Aug 2014 08:19:44 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 7, 2014 at 7:07 PM, Renaud Barbier <renaud.barbier@ge.com> wrote:
> Hello,
> I am working on the creation of a boot image for a NOR flash.
> The image assembles a boot loader and a ubi image containing the kernel
> and device tree.
>
> So far I have created a build area to install the kernel and device tree
> and used IMAGE_CMD_ubi to create the ubi image.
>
> Then I have added a python function do_norbuild that puts together the
> boot loader and ubi image and adds padding.
> Using bitbake, I can create the NOR image as follows:
> bitbake -c norbuild core-image
>
> However,
> "bitbake core-image" will not call the norbuild task.
>
> I have been through quite a lot of code and documentation and cannot
> figure out why the task is not called.
>
> If you have any idea of what couldbe wrong, please le me know.

you seem to have created a task, not just a Python function, since you
can run it with -c norbuild. By default when running bitbake <recipe>,
bitbake will run do_build task. so when you create your own custom
task, you need to insert it into the task list, maybe you haven't done
that?

something like this should work in your case:

addtask norbuild before do_build after do_rootfs

alternatively, instead of creating your own task, you could use the
existing do_rootfs hook:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND

