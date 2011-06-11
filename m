Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC3804C80132
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2011 16:00:43 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jun 2011 14:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,353,1304319600"; d="scan'208";a="15196530"
Received: from unknown (HELO [10.255.13.175]) ([10.255.13.175])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2011 14:00:42 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Sat, 11 Jun 2011 14:00:37 -0700
In-Reply-To: <BANLkTinwu59xQdtBxSUDU2zW3ta+bCro_g@mail.gmail.com>
References: <BANLkTikOugs9Yi93zVgMe0vhizJfBN3ZaA@mail.gmail.com>
	<1307507940.2123.9.camel@scimitar> <4DEF5A32.3060109@mlbassoc.com>
	<BANLkTimg3S5E45Lrb+QHCUaWC2FxNLV3RA@mail.gmail.com>
	<1307577439.31471.4.camel@scimitar>
	<BANLkTi=fKNqwRUE_hm=p7ZVsFm1ra+Ybzw@mail.gmail.com>
	<1307659962.30948.0.camel@scimitar>
	<BANLkTinwu59xQdtBxSUDU2zW3ta+bCro_g@mail.gmail.com>
X-Mailer: Evolution 3.0.2 (3.0.2-2.fc15) 
Message-ID: <1307826043.2089.0.camel@scimitar>
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
X-List-Received-Date: Sat, 11 Jun 2011 21:00:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-06-10 at 14:43 -0700, Daryl Spitzer wrote:
> Thanks Joshua.  I assume that
> http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html
> won't be updated until the next release (if this makes it into the
> next release)?  And the patch should then be updated to match the new
> version numbers?

It's my intention to get the document updated ASAP so that we don't
confuse anyone else as to which version to download.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


