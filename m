Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD3CE017C8
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 06:00:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Nov 2013 06:00:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,647,1378882800"; d="scan'208";a="428804829"
Received: from unknown (HELO [10.255.15.34]) ([10.255.15.34])
	by fmsmga002.fm.intel.com with ESMTP; 06 Nov 2013 06:00:29 -0800
Message-ID: <1383746428.18822.91.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: John Whitmore <arigead@gmail.com>, "Osier-mixon, Jeffrey"
	<jeffrey.osier-mixon@intel.com>
Date: Wed, 06 Nov 2013 08:00:28 -0600
In-Reply-To: <20131106102602.GC30011@griso.site>
References: <20131106102602.GC30011@griso.site>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: example of Kernel work
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
X-List-Received-Date: Wed, 06 Nov 2013 14:00:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-11-06 at 10:26 +0000, John Whitmore wrote:
> Found this nice little document on Kernel work in the yocto build system [1]
> it's just a shame that it isn't up to date, to use against the current version
> of the build system. 
> 
> Does anybody know is there a more up to date version of this document? It
> might just be me but a worked example is so much cleared then writing about
> the process.

I updated the kernel lab for 1.4, and it used to be here:

https://www.yoctoproject.org/training/kernel-lab

I see the kernel-lab layers for 1.4 here:

https://www.yoctoproject.org/training/kernel-training

Which doesn't make sense either - you'd think the layers would go with
the (nonexistent) pdf under kernel-lab.

And I don't see either for 1.3 and am wondering how you found it...

Cc:ing Jefro on this.


Tom

> 
> [1] https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



