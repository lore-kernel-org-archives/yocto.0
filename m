Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F1DE00A6C; Fri,  2 Oct 2015 15:31:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 182E4E00708
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 15:31:12 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so51535019wic.1
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 15:31:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=UnPS9nGRz39A7aqmzZ9CyALdVekepOUp4J7FLcvH5Vc=;
	b=h60HMVafXgVsIv3+lsfhvDz2TK7YtFtzU8ek61FP0hnWabLLzZFcTeG7u4ahK/xzx1
	22R4WHd3vDwv7Yqa9/NM6z3w0zByCu+VmYNDefGCm7s9CoAyERaD/ORlRcHAjd7tMQYk
	nQ2l6ZZ0gd+e8bMUQ1N2N0XM097FzSov+oT1Cqb6xaiTWsDjvg5TNCiXtNaRN08a1x10
	5p85/p/FhtnjZNaik8SJbNgTR7a9NUhbuvp8m0isSYwKyWzK3fwWmS+p3AUS66rpeuzk
	A/sgTgCMEggMcDKFwTAOCLE4zDQGJjflIt3G74Uhu2AgwuYHRFSyVZYkzQIdOgdoHUdB
	Ta9g==
X-Gm-Message-State: ALoCoQmRHF763uS9LeXWdbLyPZAV0Q8CXvvDhW99J0NFNlbErhUCEEVvWdyKyn51CjGJTkWvVGWR
X-Received: by 10.194.206.38 with SMTP id ll6mr18801485wjc.116.1443825071277; 
	Fri, 02 Oct 2015 15:31:11 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	i10sm13374086wjz.41.2015.10.02.15.31.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 15:31:10 -0700 (PDT)
Date: Sat, 3 Oct 2015 00:31:08 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20151002223108.GC3484@resin>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
	<1440402701-6195-2-git-send-email-raj.khem@gmail.com>
	<20150923225839.GF23493@resin>
	<36AF01E1-752C-47A6-90AE-09825F8D0685@gmail.com>
MIME-Version: 1.0
In-Reply-To: <36AF01E1-752C-47A6-90AE-09825F8D0685@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V3 2/5] userland: Add wayland support
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
X-List-Received-Date: Fri, 02 Oct 2015 22:31:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Sep 23, 2015 at 04:52:46PM -0700, Khem Raj wrote:
> Andrei
>
> > On Sep 23, 2015, at 3:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > On Mon, Aug 24, 2015 at 12:51:38AM -0700, Khem Raj wrote:
> >> backport and fix needed patches for supporting wayland-egl
> >> use PACKAGECONFIG for wayland so we can add proper DEPENDS on wayland
> >> Fix QA warnings about dev-so
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> ---
> >> ...-applications-to-set-next-resource-handle.patch |  210 +++
> >> ...ayland-Add-support-for-the-Wayland-winsys.patch | 1847 ++++++++++++++++++++
> >> .../0006-wayland-Add-Wayland-example.patch         |  864 +++++++++
> >> ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   30 +
> >> recipes-graphics/userland/userland_git.bb          |   13 +-
> >> 5 files changed, 2963 insertions(+), 1 deletion(-)
> >> create mode 100644 recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch
> >> create mode 100644 recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch
> >> create mode 100644 recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
> >> create mode 100644 recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch
> >>
> >
> > Hello,
> >
> > Any ideas why I encounter difficulties while applying this patch?
> >
>
> it was send few weeks back, I don’t know if something got into upstream in between thats causing it. In any case
> I have rebased the branch on my github fork
>
> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>
> Let me know if that will be convenient to pick up
>

I had to rebase your patches again. I created a temporary branch: khem_wayland
in git.yoctoproject.org:meta-raspberrypi . Now userland build fails with:

interface/vmcs_host/wayland-dispmanx-server-protocol.h: No such file or
directory

Who should provide this header file? Userland? Could you throw a look on the
branch above and try to replicate this?

Thanks,

--
Andrei Gherzan

