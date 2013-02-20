Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4EA4E00550
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 10:49:02 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Feb 2013 10:48:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,702,1355126400"; d="scan'208";a="204565685"
Received: from unknown (HELO [10.255.12.190]) ([10.255.12.190])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Feb 2013 10:48:58 -0800
Message-ID: <1361386137.6835.7.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 20 Feb 2013 12:48:57 -0600
In-Reply-To: <CAHUNapRg64VDHP-7ncGLCHA1zB=tRgvduX2e=8HLUe6P67Hx7w@mail.gmail.com>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
	<1361251862.1868.3.camel@empanada>
	<CAHUNapT3DsWwPDJC9mthNRjA0idDLHBUJxM6AGV41QaNVOodHw@mail.gmail.com>
	<1361295925.1868.5.camel@empanada>
	<CAHUNapRg64VDHP-7ncGLCHA1zB=tRgvduX2e=8HLUe6P67Hx7w@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Feb 2013 18:49:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-02-19 at 22:34 -0500, Trevor Woerner wrote:
> Following up on a hunch, after reading Pierre Ficheux's email from
> earlier today, I realized that by default I always switch my build's
> PACKAGE_CLASSES to ipk simply because this packaging takes the least
> amount of build time. Sure enough, when working on lab3 I had switched
> to ipk and it didn't work. Switching PACKAGE_CLASSES to rpm and doing
> nothing else but rebuilding, everything worked. I tried twice more
> switching between ipk and rpm and anytime ipk is used the module is
> not automatically installed, but with rpm it is.

Interesting - I wouldn't have thought of looking at that as a source of
the problem.  I'll try it out myself and file a bug if it turns out to
be the problem.  Thanks for that info!

Tom


