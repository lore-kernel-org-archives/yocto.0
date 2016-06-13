Return-Path: <hayashi.kunihiko@socionext.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C247E00E63; Mon, 13 Jun 2016 03:09:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,FSL_HELO_BARE_IP_2
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D145BE00CD3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 03:09:06 -0700 (PDT)
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
	by mx.socionext.com with ESMTP; 13 Jun 2016 19:09:05 +0900
Received: from mail.mfilter.local (unknown [10.213.24.62])
	by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 87917180BFB;
	Mon, 13 Jun 2016 19:09:05 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
	Mon, 13 Jun 2016 19:09:04 +0900
Received: from [10.213.136.190] (unknown [10.213.136.190])
	by kinkan.css.socionext.com (Postfix) with ESMTP id BBCB51A11A3;
	Mon, 13 Jun 2016 19:09:03 +0900 (JST)
Date: Mon, 13 Jun 2016 19:09:03 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <565cde63-3304-e5ef-156a-b54482b3bb91@windriver.com>
References: <20160613104017.70D6.4A936039@socionext.com>
	<565cde63-3304-e5ef-156a-b54482b3bb91@windriver.com>
Message-Id: <20160613190903.70E1.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
Cc: yocto@yoctoproject.org
Subject: Re: How to set KCONFIG_MODE for defconfig and fragments
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
X-List-Received-Date: Mon, 13 Jun 2016 10:09:09 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Sun, 12 Jun 2016 22:22:39 -0400
Bruce Ashfield <bruce.ashfield@windriver.com> wrote:

> On 2016-06-12 9:40 PM, Kunihiko Hayashi wrote:
> > Hello, all
> >
> > Now I'm trying to build my own kernel with linux-yocto recipe,
> > and I make kernel configuration fragments (".cfg" file) according to
> > "Linux Kernel Development Manual", and my fragments can't be applied
> > to the kernel at all.
> >
> > I find that linux-yocto recipe uses "allnoconfig" as default, and
> > configurations that my fragments depend on are disabled.
> 
> Your fragments really should be specifying not only their options,
> but the dependencies as well, or you need to have them
> include other fragments that set those dependencies.
> 
> If you don't, you are relying on the baseline configuration .. which
> is either a defconfig or ktype fragments in linux-yocto. That is also
> ok, just something to be aware of.
>
> >
> >> KCONFIG_MODE = "--allnoconfig"
> >
> > I assume that KCONFIG_MODE has the option of "configme" script,
> > but this option is undocumented on any manuals.
> >
> > If I apply "defconfig" and my additional fragments as it is,
> > how do I set KCONFIG_MODE in my recipe? (null string or another option?)
> 
> KCONFIG_MODE is a variable like any other. In your kernel recipe,
> you can just set it to one of the valid options.
> 
> KCONFIG_MODE = "..."
> 
> Note: those valid options are only [--alldefconfig] [--allnoconfig],
> since that is what the kernel merge_config.sh script can process.

Thank you for your comment.

I understand that I need to solve all dependencies in the usual cases, 
and KCONFIG_MODE is used for merge_config.sh. I think that to set
"--alldefconfig" to KCONFIG_MODE solves the question.

Regards,

---
Kunihiko Hayashi
:hayashi.kunihiko@socionext.com


