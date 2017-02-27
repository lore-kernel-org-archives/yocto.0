Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC3CAE00726; Mon, 27 Feb 2017 07:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73027E006C6
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 07:00:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Feb 2017 07:00:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,215,1484035200"; d="scan'208";a="1102791202"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2017 07:00:40 -0800
Date: Mon, 27 Feb 2017 17:02:34 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <20170227150234.GA21983@mbabyjoh-desk.ger.corp.intel.com>
References: <53b791e3-6498-7493-43af-4ae89ec4f0c7@smart-home-technology.ch>
MIME-Version: 1.0
In-Reply-To: <53b791e3-6498-7493-43af-4ae89ec4f0c7@smart-home-technology.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: add users doesn't work
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
X-List-Received-Date: Mon, 27 Feb 2017 15:00:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jakob,

On Mon, Feb 27, 2017 at 03:34:59PM +0100, Jakob Hasse wrote:
> Hello,
> 
> I tried to add a user to my image, like described in the FAQ here:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password
> 
> However, if I added that two lines to my recipe, it doesn't have any effect
> (still only root user available).
> What else do I need to change to make this work? And is the recipe the right
> place for this line (FAQ doesn't mention this)?

The "extrausers" class is generally used for image level user/group configuration.
"useradd" class is recommended for recipe level user/group configurations.

So, please use it in your local.conf as below:

eg:
INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "\
useradd -p '' tester1; \
"

Hope this helps.

> Kind Regards,
> Jakob
> 
> -- 
> Jakob Hasse
> Software Developement
> 
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
> 
> Smart Home Technology GmbH
> www.smart-home-technology.ch

Best Regards,
Maxin

