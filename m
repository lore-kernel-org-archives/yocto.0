Return-Path: <denis@denix.org>
Received: from vms173009pub.verizon.net (vms173009pub.verizon.net
	[206.46.173.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4ADCE00723
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 23:31:55 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173009.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3F00C0NOSOV700@vms173009.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 01:31:37 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 18FC32010D; Thu,
	03 May 2012 02:31:37 -0400 (EDT)
Date: Thu, 03 May 2012 02:31:37 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-id: <20120503063137.GE2681@denix.org>
References: <FD311A9D-4B4D-479A-BEC6-10C37BF6AF47@gmail.com>
MIME-version: 1.0
In-reply-to: <FD311A9D-4B4D-479A-BEC6-10C37BF6AF47@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Andreas M?ller <schnitzeltony@googlemail.de>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-gumstix.git layer dependencies
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
X-List-Received-Date: Thu, 03 May 2012 06:31:55 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 08:01:58AM +0200, Elvis Dowson wrote:
> Hi Andreas,
>                      I was just taking a look at your meta-gumstix.git 
> repository, and it mentions that it depends upon
> 
> git://git.openembedded.org/openembedded-core
> git://git.angstrom-distribution.org/meta-texasinstruments
> 
> Isn't openembedded-core shared with yocto's poky? If so, do I really need to 
> add openembedded-core to my bblayers.conf file?
> 
> Also there is a meta-ti.git repository for texas instruments on the yocto 
> website: git://git.yoctoproject.org/meta-ti
> 
> Should one use the meta-ti or the meta-texasinstruments layer?

Please use git://git.yoctoproject.org/meta-ti since 
git.angstrom-distribution.org server is long since gone. Please update your 
layers accordingly. Thanks.

-- 
Denys

