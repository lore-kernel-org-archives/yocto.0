Return-Path: <denis@denix.org>
Received: from vms173013pub.verizon.net (vms173013pub.verizon.net
	[206.46.173.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0751BE00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 11:58:36 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [72.66.25.115])
	by vms173013.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0MBN00ATO3CTCI60@vms173013.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 09 Oct 2012 13:58:21 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 61EBB200DD; Tue,
	09 Oct 2012 14:58:05 -0400 (EDT)
Date: Tue, 09 Oct 2012 14:58:05 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Wesley J. Miller" <WMiller@sdr.com>
Message-id: <20121009185805.GA12654@denix.org>
References: <CC87297A.9B81%wmiller@sdr.com>
MIME-version: 1.0
In-reply-to: <CC87297A.9B81%wmiller@sdr.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Newbie looking for a Recipe Box for AM1707 aka Texas Instruments TMDXEVM1707
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
X-List-Received-Date: Tue, 09 Oct 2012 18:58:37 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Sep 25, 2012 at 09:27:22AM -0400, Wesley J. Miller wrote:
> The subject pretty much says it all.
> 
> I am looking for a build package for the TI AM1707 ARM9 EVM. This is a 
> Sitara family processor.
> 
> And if the answer is "there isn't one", what's the best package choice to 
> use as a starting point?

Hi,

Sorry for the delay. You can start with the MACHINE=am180x-evm from meta-ti[1], 
as it's close enough and from basic BSP perspective should be the same.

[1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/

-- 
Denys

