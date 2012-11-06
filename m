Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9095E002AB
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 12:34:58 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2012 12:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,723,1344236400"; d="scan'208";a="214257658"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2012 12:34:57 -0800
Message-ID: <1352234097.2408.47.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 06 Nov 2012 14:34:57 -0600
In-Reply-To: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel] Add Xorg ABI dependencies
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
X-List-Received-Date: Tue, 06 Nov 2012 20:34:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-11-05 at 12:47 +0000, Ross Burton wrote:
> Hi,
> 
> Following are patches against master (*not* danny) to add runtime dependencies
> on the Xorg ABI version to the binary drivers, a symbol that the Xorg server
> provides.
> 
> This means that mismatching server/driver ABIs becomes a package dependency
> issue and thus image-time error, instead of a boot time error.
> 
> Note that these ABI versions are calculated from the Xorg server version that
> the drivers were compiled against and need to be verified and updated manually
> when the driver is upgraded.

In the future, could you also add a link to the branch (if there is
one)?  I guess these are at:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=ross/xorgabi

But would rather not guess (or compare) or have to pull them off the
list.

Thanks,

Tom

> Ross
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



