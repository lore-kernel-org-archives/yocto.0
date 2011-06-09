Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C2CB4C8086F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 17:52:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Jun 2011 15:52:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,343,1304319600"; d="scan'208";a="10351947"
Received: from unknown (HELO [10.255.12.249]) ([10.255.12.249])
	by azsmga001.ch.intel.com with ESMTP; 09 Jun 2011 15:52:40 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Thu, 09 Jun 2011 15:52:41 -0700
In-Reply-To: <BANLkTi=fKNqwRUE_hm=p7ZVsFm1ra+Ybzw@mail.gmail.com>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
	<BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
	<1307577439.31471.4.camel@scimitar>
	<BANLkTi=fKNqwRUE_hm=p7ZVsFm1ra+Ybzw@mail.gmail.com>
X-Mailer: Evolution 3.0.2 (3.0.2-2.fc15) 
Message-ID: <1307659962.30948.0.camel@scimitar>
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: undefined reference to `pthread_getspecific' in perl-native_5.12.2.bb task do_compile?
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
X-List-Received-Date: Thu, 09 Jun 2011 22:52:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-09 at 11:17 -0700, Daryl Spitzer wrote:
> > Looks like we fixed this issue in our recent point release. Could you
> > try http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2 ?
> 
> I tried it, and am getting what I think is an unrelated error.  I'll
> start a new thread for that.
> 
> Shouldn't documentation references to
> "http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2"
> be changed to "http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz"
> (such as in http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html)?

You are right Daryl, apologies for any inconvenience. I've filed a bug
with a patch attached for the Quick Start doc.

http://bugzilla.yoctoproject.org/show_bug.cgi?id=1153

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


