Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72351E00C3B; Fri, 18 Mar 2016 11:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D5DE00BFD
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 11:11:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2016 11:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,356,1455004800"; d="scan'208";a="940356606"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2016 11:11:22 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id E78986A4006; Fri, 18 Mar 2016 11:59:05 -0700 (PDT)
Received: from 10.252.7.138 (SquirrelMail authenticated user alexander.kanavin)
	by linux.intel.com with HTTP; Fri, 18 Mar 2016 20:59:05 +0200 (EET)
Message-ID: <51323.10.252.7.138.1458327545.squirrel@linux.intel.com>
In-Reply-To: <CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
References: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
	<CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
Date: Fri, 18 Mar 2016 20:59:05 +0200 (EET)
From: alexander.kanavin@linux.intel.com
To: "Andre McCurdy" <armccurdy@gmail.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Possible introspection failure in master
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
X-List-Received-Date: Fri, 18 Mar 2016 18:11:26 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> The gstreamer _git recipes have not been updated to include the
> gobject introspection patches which were applied to the 1.6.3 recipes.

Yeah, I forgot about the git recipes, as they're totally hidden from
default builds. I'll get them fixed.

> Try disabling gobject introspection via DISTRO or MACHINE features, ie:
>
>   MACHINE_FEATURES_BACKFILL_CONSIDERED_append = "
> gobject-introspection-data"

That is not going to help, I'm afraid. The recipes need further custom
fixing even when introspection is disabled.

Alex

