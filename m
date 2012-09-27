Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C36FE01351
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 07:10:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2012 07:10:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,496,1344236400"; d="scan'208";a="214400166"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2012 07:10:17 -0700
Received: from [10.237.105.38] (mlindnex-mobl1.ger.corp.intel.com
	[10.237.105.38])
	by linux.intel.com (Postfix) with ESMTP id AFB3B2C8001
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 07:10:18 -0700 (PDT)
Message-ID: <50645E48.7050208@linux.intel.com>
Date: Thu, 27 Sep 2012 17:10:16 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
In-Reply-To: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
Subject: Re: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Thu, 27 Sep 2012 14:10:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2012-09-27 14:31, Burton, Ross wrote:
> Hi,
> 
> If I add meta-intel and meta-cedartrail to my bblayers, when I try and
> do an atom-pc build (which I thought should still work, right?) I get
> the following error:
> 
> NOTE: Error during finalise of
> /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> ERROR: ExpansionError during parsing
> /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb:
> Failure expanding variable SRCPV, expression was
> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> Fetcher failure for URL:
> 'git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=yocto/standard/common-pc/atom-pc,meta,yocto/pvr;name=machine,meta,pvr'.
> Please set SRCREV to a valid value
> 
> That's a bug, right?
> 
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 

That's a bug alright.
It seems the overall SRC_URI of linux-yocto is overwritten by meta-cedartrail layer, when included. Should be fixed by using SRC_URI_cedartrail instead.

-- 
Mihai Lindner

