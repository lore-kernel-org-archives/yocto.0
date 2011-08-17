Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F6EE011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:33:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Aug 2011 09:32:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="39474506"
Received: from unknown (HELO [10.255.14.198]) ([10.255.14.198])
	by azsmga001.ch.intel.com with ESMTP; 17 Aug 2011 09:32:13 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 09:32:08 -0700
In-Reply-To: <36642C12-5231-4EE6-A267-D469D3E5B98F@keylevel.com>
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
	<4E446C74.9070807@intel.com> <4E4473A4.4060403@windriver.com>
	<B44F0C76-F163-4264-B052-BA9E4CC4CDC3@keylevel.com>
	<4E452396.1070506@windriver.com>
	<36642C12-5231-4EE6-A267-D469D3E5B98F@keylevel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1313598733.2205.6.camel@scimitar>
Mime-Version: 1.0
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Wed, 17 Aug 2011 16:33:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-12 at 20:48 +0100, Chris Tapp wrote:
> On 12 Aug 2011, at 13:59, Bruce Ashfield wrote:
> 
> >> NOTE: Unpacking
> >> /home/chris/yocto/yocto-downloads/git_git.pokylinux.org.linux-2.6- 
> >> windriver.git.tar.gz
> >> to
> >> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux- 
> >> wrs 
> >> -2.6.34 
> >> + 
> >> git0 
> >> + 
> >> b67e060194a38c6331da1532bd06446087a42b3b_0 
> >> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
> >>
> >> NOTE: Unpacking
> >> /home/chris/yocto/meta-keylevel-sjs/recipes/linux/linux-wrs/ 
> >> defconfig to
> >> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux- 
> >> wrs 
> >> -2.6.34 
> >> + 
> >> git0 
> >> + 
> >> b67e060194a38c6331da1532bd06446087a42b3b_0 
> >> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
> >>
> >
> > That does look right!
> 
> What are the rules for naming layers?
> 
> I renamed the root for my new layer from 'meta-ebox-3300' to 'meta- 
> ebox3300', updated this in bblayers.conf and now my defconf file is  
> found as I was expecting...
> 
> It seems as if having -<numeric> at the end stops things working.

This sounds like a bug so I filed it here:
http://bugzilla.yoctoproject.org/show_bug.cgi?id=1379

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


