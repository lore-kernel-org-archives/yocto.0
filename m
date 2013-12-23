Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C543E007DC
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 15:52:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2013 15:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,539,1384329600"; d="scan'208";a="456861803"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2013 15:52:31 -0800
Received: by linux.intel.com (Postfix, from userid 48)
	id F0FEF6A4093; Mon, 23 Dec 2013 15:52:28 -0800 (PST)
Received: from 10.252.143.32 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Mon, 23 Dec 2013 15:52:28 -0800 (PST)
Message-ID: <54745.10.252.143.32.1387842748.squirrel@linux.intel.com>
In-Reply-To: <CAJGS5=H3_JFrkXt5knk7cz5m4L-L5FcZsz6Sz=MeQn_74Ez6dQ@mail.gmail.com>
References: <CAJGS5=HtGV8Fs08F3NQMmHbxUOqcGrH7OveP5CvOg9EPZj4GoA@mail.gmail.com>
	<CAJGS5=H3_JFrkXt5knk7cz5m4L-L5FcZsz6Sz=MeQn_74Ez6dQ@mail.gmail.com>
Date: Mon, 23 Dec 2013 15:52:28 -0800 (PST)
From: kevin.strasser@linux.intel.com
To: "Bill Martin" <billmartin544@gmail.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org
Subject: Re: Kontron CONFIG_I2C_KEMPLD support in Fish River Island 2? Or Crownbay?
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
X-List-Received-Date: Mon, 23 Dec 2013 23:52:35 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi Bill,

The kempld patch set was first merged in version 3.11 of the Linux Kernel
in effort to enable various functionality on the FRI2 platform. At this
point I don't believe they are included in any official BSPs, so you may
wish to backport the drivers. I was involved in pushing these drivers
upstream, and I'm happy to field any further questions you might have.

Thanks,
Kevin Strasser

> Hit the send too early. My questions are: What kernel versions and what
> BSPs of Yocto support the CONFIG_I2C_KEMPLD? We are using Linux Kernel
> 3.8.4 but we found a link saying KEMPLD is supported in a Linux kernel
> version as high as 3.1.2.
>
> Anyone out there know about this? (see below for first part)
>
> ---------- Forwarded message ----------
> From: Bill Martin <billmartin544@gmail.com>
> Date: Wed, Dec 18, 2013 at 3:54 PM
> Subject: Kontron CONFIG_I2C_KEMPLD support in Fish River Island 2? Or
> Crownbay?
> To: yocto@yoctoproject.org
>
>
> We are in need of enabling the CONFIG_I2C_KEMPLD  for a build for our
> Kontron (architecture is x86).
>
> We have been using the Crownbay BSP. But of course I did a google search
> and found patches in the Linux kernel for allowing i2c_kempld. Also these
> patches were associated with Fish River Island II.
>
> I was under the impression that these names "Crownbay," "Fish River Island
> II" and such were all part of Yocto. The patches I encountered were dated
> earlier this year and I was assuming the Fish River Island II BSP for our
> Dylan (9.0.2) build would support I2C
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


