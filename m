Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38CEEE014B6
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 13:50:03 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=ghuhBsDCvzehy2kFyBVvnbohZ2+IwpsyOQdz6VC2e3vVWY9x5FQelF2jxurVESKZ;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UNUd8-0000lG-77; Wed, 03 Apr 2013 16:50:02 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Darren Hart'" <dvhart@linux.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com>
	<1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
In-Reply-To: <515C8FEF.2090201@linux.intel.com>
Date: Wed, 3 Apr 2013 13:50:10 -0700
Message-ID: <80CD287EE4364CEF8862D95048BCA9A9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4wqTZdraJniNzhSgGEra+VayNGAgAAzw4g
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882e982db10f2f7bfc5c2192716b03a0d3350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Wed, 03 Apr 2013 20:50:03 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> 
> Are you building with the rm work setting? Otherwise, that 
> should not be
> empty unless you have more than one linux-yocto* directory 
> and the other is populated.

That option is off, and there is no other linux-yocto* directory.

> If not, verify rm work is not on and just build the kernel:
> 
> $ bitbake linux-yocto -c cleansstate
> $ bitbake linux-yocto

The first line says there is no do_cleanstate task for linux-yocto, and so
the second line finds nothing to do. Is there another way to force that?

> Nothing in there suggests any other failure than it just didn't find a
> block device. I didn't see anything in there about loading the initrd
> though (I think there usually is...). Check to make sure the 
> initrd file does indeed exist on the boot drive.

Yes, it does.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


