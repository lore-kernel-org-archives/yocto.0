Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFB29E01550
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 17:32:02 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=m8HQlpkcF2Z0+FTfwP37YIK/e4THCLn9/T2K0oocSxQyRabwS6BuWVHhJAF0nSEJ;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UNY5w-0004we-CG; Wed, 03 Apr 2013 20:32:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bodke, Kishore K'" <kishore.k.bodke@intel.com>,
	"'Darren Hart'" <dvhart@linux.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com>	<1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><80CD287EE4364CEF8862D95048BCA9A9@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405300@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE258405300@ORSMSX105.amr.corp.intel.com>
Date: Wed, 3 Apr 2013 17:32:09 -0700
Message-ID: <60B6B6AA6C0244FCB462853CE0D3D80E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAA57YAAAxcuZAAE6ABUA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606887b36f5f46a86badf5ad43910d5157e82350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Thu, 04 Apr 2013 00:32:03 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bodke, Kishore K
> 
> It's surprising that you don't see anything under 
> /home/pauld/yocto-atom/build/tmp/work/cedartrail_nopvr-poky-li
nux/linux-yoct
> o-3.0.32+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+1e79e
03d115ed177882
> ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build
> 
> It means that Kernel is not getting build for you?
> How come you were able to generate the .hddimg and trying to boot?
> 
> Do you have the rootfs under 
> build/tmp/work/Cedartrail*/core-image-sato/?

Some gremlin made that first directory go away. I've successfully rebuilt
it.

There is a rootfs directory in the second directory, and it contains things
like /dev/ram?. I captured a tree listing of my build a while back, and it
had those device nodes, too.

If I loop mount the .ext3 file that my panicking build produced, it has
/dev/ram? device nodes, too.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


