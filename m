Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF18AE013BA
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 14:01:52 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M2N00G5U6ELL3Q1@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 17 Apr 2012 16:01:34 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id C474F201A7; Tue,
	17 Apr 2012 17:01:33 -0400 (EDT)
Date: Tue, 17 Apr 2012 17:01:33 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Eric B?nard <eric@eukrea.com>
Message-id: <20120417210133.GD8228@denix.org>
References: <20120417224028.5f80ebd7@eb-e6520>
MIME-version: 1.0
In-reply-to: <20120417224028.5f80ebd7@eb-e6520>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org,
	openembedded-core@lists.openembedded.org
Subject: Re: meta-chromium
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
X-List-Received-Date: Tue, 17 Apr 2012 21:01:53 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Apr 17, 2012 at 10:40:28PM +0200, Eric B?nard wrote:
> Hi,
> 
> we have pushed the begining of our (Eukr?a Electromatique's team and
> especially Denis) work to get Chromium to build with OpenEmbedded Core
> to : git://github.com/eukrea/meta-chromium.git
> https://github.com/eukrea/meta-chromium
> 
> For the moment it's only tested on ARMv7 platforms (i.MX515 and i.MX535
> based) where it seems robust and quite fast on most of the HTML5 tests
> we ran (only WebGL doesn't yet work).
> 
> Feel free to send patches to improve the recipes and add support for
> other platforms.
> 
> TODO :
> - enable WebGL with OpenGL ES support
> - support other platforms than armv7
> - merge with meta-mozilla to create a meta-browser layer

Eric, Denis,

Great news! Thanks for your work!

-- 
Denys


