Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A49F6E00CD9; Fri, 10 Jun 2016 02:09:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 363DBE00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 02:08:58 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 10 Jun 2016 02:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,449,1459839600"; d="scan'208";a="825402612"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2016 02:08:56 -0700
Date: Fri, 10 Jun 2016 07:16:03 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: S.Jaritz@esa-grimma.de
Message-ID: <20160610041602.GA2776@mbabyjoh-desk.ger.corp.intel.com>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
	<CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
	<OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
MIME-Version: 1.0
In-Reply-To: <OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Antwort: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Fri, 10 Jun 2016 09:09:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jun 09, 2016 at 05:17:33PM +0200, S.Jaritz@esa-grimma.de wrote:
>
>Hej
>
>Thanks for the infos. I figured out that the common tutorial under meta-skeleton
>does not covers the change of the root password. Although "usermod -P" does not exits.
>Now the "usermod -p" wants a encrypted password. Looks like most of the examples at the
>www are little outdated. My question is now:
>
>How are the steps to (re)set the root password?
>
>If you like I would prefer to solve this question like a tutorial.
>
>The starting point is a own layer ("myLayer") and a password ("myNewPassword1234").

I would suggest to update this wiki page instead of starting something from scratch:

https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password

>Regards!
>
>Stefan Jaritz

Warm Regards,
Maxin

