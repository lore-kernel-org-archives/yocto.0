Return-Path: <denis@denix.org>
Received: from vms173005pub.verizon.net (vms173005pub.verizon.net
	[206.46.173.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00058E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 15:56:55 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173005.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G00C6UYE1GD30@vms173005.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 17:56:40 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id B506620099; Thu,
	03 May 2012 18:56:24 -0400 (EDT)
Date: Thu, 03 May 2012 18:56:24 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-id: <20120503225624.GH9822@denix.org>
References: <9E175296-180A-45B0-BD08-2F926537552B@gmail.com>
MIME-version: 1.0
In-reply-to: <9E175296-180A-45B0-BD08-2F926537552B@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to fix warning: set SYSTEMD_PACKAGES as <existing-package>-systemd
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
X-List-Received-Date: Thu, 03 May 2012 22:56:56 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 09:11:49PM +0200, Elvis Dowson wrote:
> Hi,
>       I get a bunch of warnings asking me to set SYSTEMD_PACKAGES as 
> <existing-package>-systemd.

You get those from the recipes that inherit systemd.bbclass, but not set 
SYSTEMD_PACKAGES with ${PN}-systemd for some reason. Sometimes it's wrong and 
needs fixing, but often it's done on purpose and the warning just needs to be 
silenced.

> WARNING: /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb: it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd

The first one is now silenced in meta-ti.

> WARNING: /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bb: it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
> WARNING: /tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd

For these 2 please report them on openembedded-devel mailing list, where 
meta-oe things are being discussed. The last warning is confisuing, as it 
reports the recipe is in poky/oe-core, but it actually comes from the 
corresponding .bbappend in meta-oe.

-- 
Denys

