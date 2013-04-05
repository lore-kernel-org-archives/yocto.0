Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA7EE0146D
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 10:32:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 05 Apr 2013 10:32:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,416,1363158000"; d="scan'208";a="223329034"
Received: from unknown (HELO helios.localnet) ([10.255.14.34])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Apr 2013 10:32:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 05 Apr 2013 18:31:47 +0100
Message-ID: <30341079.23PBRlhEQk@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <515F040F.40402@mlbassoc.com>
References: <515EC933.70305@mlbassoc.com> <515F040F.40402@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Weird FILESPATH issue
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
X-List-Received-Date: Fri, 05 Apr 2013 17:32:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 05 April 2013 11:04:15 Gary Thomas wrote:
> On 2013-04-05 06:53, Gary Thomas wrote:
> > I think the problem is because the main recipe contains this line:
> >    FILESPATH = "${FILE_DIRNAME}/python-pygobject:${FILE_DIRNAME}/files"
> > 
> > How can I write my .bbappend file to pick up the patch from my [local]
> > layer?
> > 
> > Thanks
> > 
> > n.b. isn't that 'FILESPATH' line in the main recipe rather unfriendly?
> 
> What I don't get is that I've done this exact same style of .bbappend for
> other recipes and it works fine.  For example, I have this
> 
>    ${LAYER}/recipes-sato/gtk-engines/gtk-sato-engine_git.bbappend:
>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>         SRC_URI_append = " file://adjust-sato-theme.patch "
>         PACKAGE_ARCH = "${MACHINE_ARCH}"
> 
> This .bbappend file works perfectly :-(

The FILESPATH line you referred to is very old and probably no longer 
necessary. Try dropping it and see if everything works.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

