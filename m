Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF75E00CF5; Fri, 20 Oct 2017 07:29:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F97E00CCC
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 07:29:22 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 20 Oct 2017 07:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,405,1503385200"; d="scan'208";a="325638917"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga004.fm.intel.com with SMTP; 20 Oct 2017 07:29:20 -0700
Date: Fri, 20 Oct 2017 09:39:14 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Message-Id: <20171020093914.f166839216341ff7537df01b@linux.intel.com>
In-Reply-To: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bbappend - FILESEXTRAPATHS
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
X-List-Received-Date: Fri, 20 Oct 2017 14:29:25 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 20 Oct 2017 13:30:06 +0000
"Koehler, Yannick" <yannick.koehler@hpe.com> wrote:

> Hi,
> 
>  
> 
> I have been using Yocto for over 2 years now, and whenever I create a new
> bbappend file, I always have to remember that FILESEXTRAPATHS variable,
> often typing it wrong, EXTRAFILESPATHS or FILEEXTRAPATHS or FILESEXTRAPATH,
> etc.
> 
>  
> 
> I did a quick check on my setup and on 102 bbappend recipe found, there are
> 73 that uses the FILESEXTRAPATHS variable, so that is around 71% of them.  
> 
>  
> 
> I was wondering if the team would enhance the user/dev experience here and
> modify bitbake behavior as to not require this variable and be able to
> "override" any FILESPATH that already exists with the bbappend location.  So
> that for example the FILESPATH "files" would be looked up in the bbappend
> folder location before the initial bb recipe folder location automatically
> without having to manually enter a FILESEXTRAPATHS statement.

One easy way to avoid this error is to place the FILESEXTRAPATHS variable inside a custom bbclass them inherit it from the recipe, at least it is less prone to typos. We do not want to force users to place patches inside a particular folder (policy), instead the system offer a mechanism to place these any place you want (other recipes choose PN, for example)

> 
>  
> 
> Or alternatively, a script or command to create an initial skeleton bbappend
> with the initial .bb in comment 
> 
>  
> 
>                bbappend mylayer recipename.bb
> 
>                # Create a file under mylayer/recipes-*/*.bbappend (using %
> for version when not specified on cmd line) with the original .bb in comment
> and a section containing FILESEXTRAPATHS
> 

Right, I think there is no tool to create bbappends from the command line.

Anyway, feel free to file a bug (bugzilla.yoctoproject.org) with your enhancement.


>  
> 
> I think this would greatly help when creating those files.
> 
>  
> 
> --
> 
> Yannick Koehler
> 
> HPE Aruba
> 


-- 
Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

