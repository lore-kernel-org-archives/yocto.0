Return-Path: <daiane.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6940DE00CED; Fri, 18 Jan 2019 03:20:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daiane.list[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F6EE00950;
	Fri, 18 Jan 2019 03:20:54 -0800 (PST)
Received: by mail-lj1-f196.google.com with SMTP id t18-v6so11333974ljd.4;
	Fri, 18 Jan 2019 03:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:sender:from:date:message-id
	:subject:to:cc;
	bh=l4hsK8nV0KeXR2FbpAW9y02oCU6Tfa7WeClvIcNV2h4=;
	b=NEZyfpA02lZZ5pV7y/kr5J+L6fPEng/RKC1eNtxZOBn+RI2Q1VT1tIhy+4hu2EIL6e
	hOjnxoBmzgxtKfNomIauC37GvHx3S218V7X5MHJPnzInPnDBDz5xpD72zFdnSlpxmAIH
	ll+BxrJ/fWRh0oxvZO+Q4qySPuSX2BzCADw5DWHPY1zGY7TrK4+zkAycZBBgQjh1IM8T
	OfxUU+zH3StN4/G/0WBkNGDyKixnbI2D0nBw9NCQE3cu4QZNA2s2bE5A0ASDfvGn8OmI
	R9AtWVkNFSk7dJSMVTxd7JfWwjmjr86mRMiiktUJKYxJFWVlQ1Ik1gkVIlRuHKwaumqK
	leYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
	:date:message-id:subject:to:cc;
	bh=l4hsK8nV0KeXR2FbpAW9y02oCU6Tfa7WeClvIcNV2h4=;
	b=pvkkTADTnNxcDHB4LJhnvzjeuRmqGV/TO9NqxOwKFSfykuelg1ZnoYVa/OiBLTNvK5
	SMZ761wAQrQXuxxJvxcoYivlvaMocZEmFIkuy7lPPWlNT4wvkVbm20cP7Ea4UcdeqlqM
	y2AP8cIwIns2yuDZEd7BLyswVmwX/g5JX+v6hz86sbbi45tm8pjRLwcifuEyMWwQhMLx
	wfBgTuQnUV1b5tnt4DWvjyzykKsr5VEWz4uJ8KZwqJSQ7iIm+MsMS8++e7gYlJaaigtW
	1jGEAEa1nUHwoVEnRN4VARZvhWFTKSHsyhueZ9HIPxovgK90K09uSl1gojU+9SGY3XgT
	8wYw==
X-Gm-Message-State: AJcUukczw4d4fKDHR4ArRdRBKFbMp8MK3O905NUcu8UxC/iOeKGwgXrA
	7sXjO9Vy18IXyXGVkIoEFg4xxyYAFDAQfL8Akqo=
X-Google-Smtp-Source: ALg8bN7J+FCZJ+zB3nk07A6X+pQZoqcigweeyoilsvhQKFtdhkSRFPZtBdHM46YUwqzClHulVqXIF1eelzKlqi3jPjM=
X-Received: by 2002:a2e:914b:: with SMTP id q11-v6mr68210ljg.164.1547810453501;
	Fri, 18 Jan 2019 03:20:53 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWf2+Kxt79GM0SUGaiyn6kpV4-bg9AqwiHMQ-DqnqRWcEQ@mail.gmail.com>
In-Reply-To: <CAFsTbWf2+Kxt79GM0SUGaiyn6kpV4-bg9AqwiHMQ-DqnqRWcEQ@mail.gmail.com>
Sender: angolini@gmail.com
X-Google-Sender-Delegation: angolini@gmail.com
From: Daiane Angolini <daiane.list@gmail.com>
Date: Fri, 18 Jan 2019 09:20:42 -0200
X-Google-Sender-Auth: V4uZFx9P0_DnhsHWB6MBv6rIEag
Message-ID: <CA+jg_OW4rdvTXfqy0hQ5h9=gJJ=c4MjUcy3tHVmWYcroyQU-vw@mail.gmail.com>
To: srinivasan <srinivasan.rns@gmail.com>
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	meta-intel@yoctoproject.org, Poky Project <poky@yoctoproject.org>
Subject: Re: [meta-freescale] ERROR: Nothing PROVIDES 'virtual/libgles2'
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
X-List-Received-Date: Fri, 18 Jan 2019 11:20:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 18, 2019 at 6:46 AM srinivasan <srinivasan.rns@gmail.com> wrote:
>
> Dear Yocto Experts,
>
> I am seeing the below error when i am trying to integrate freescale
> layers into my custom os?

Which imx8 MACHINE are you trying?

Daiane
>
> srinishanmugam@ni-bln-07594:~/customBuild_test_rpi/customos/build_customosdistro_imx8$
> bitbake -f -c clean custom-image-debug-imx8
> WARNING: Host distribution "ubuntu-18.04" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> WARNING: /home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/drm/libdrm_2.4.91.bb:
> Unable to get checksum for libdrm SRC_URI entry drm-update-arm.patch:
> file could not be found
>       | ETA:  0:00:05
> Parsing recipes: 100%
> |#############################################################################################################################################################################################################################################|
> Time: 0:00:09
> Parsing of 2275 .bb files complete (0 cached, 2275 parsed). 3177
> targets, 382 skipped, 1 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'virtual/libgles2' (but
> /home/srinishanmugam/customBuild_test_rpi/customos/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb,
> /home/srinishanmugam/customBuild_test_rpi/customos/sources/poky/meta/recipes-graphics/cairo/cairo_1.14.12.bb
> DEPENDS on or otherwise requires it)
> imx-gpu-viv PROVIDES virtual/libgles2 but was skipped: incompatible
> with machine imx8mmevk (not in COMPATIBLE_MACHINE)
> NOTE: Runtime target 'qtbase' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['qtbase', 'virtual/libgles2']
> ERROR: Required build target 'custom-image-debug-imx8' has no
> buildable providers.
> Missing or unbuildable dependency chain was:
> ['custom-image-debug-imx8', 'qtbase', 'virtual/libgles2']
>
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> Could you anyone please provide me some inputs for resolving the above issue?
>
> Many Thanks in advance
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale

