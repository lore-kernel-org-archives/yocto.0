Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42DC14C81203
	for <yocto@yoctoproject.org>; Fri, 13 May 2011 16:45:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 May 2011 14:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; d="scan'208";a="642486600"
Received: from scimitar.jf.intel.com (HELO [10.7.199.58]) ([10.7.199.58])
	by orsmga002.jf.intel.com with ESMTP; 13 May 2011 14:45:24 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 13 May 2011 14:45:24 -0700
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC76D6B78F9B@orsmsx504.amr.corp.intel.com>
References: <DE8BA75F34A0404282AC5E15F691BC76D6B78F9B@orsmsx504.amr.corp.intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305323124.2023.26.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Diagrams
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
X-List-Received-Date: Fri, 13 May 2011 21:45:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2011-05-13 at 14:07 -0700, Rifenbark, Scott M wrote:
> Currently I have been consistently using a ‘figures’ directory within
> each manual directory to house any PNG files used in a given manual.
> However, the Yocto-docs repository has a ‘diagrams’ folder at the same
> level as ‘documentation’.  I think we should continue to keep figures
> with their respective books and not in some higher-level folder at the
> same level of documentation.
> 

The benefit of the "store them all in the same folder" approach is that
I can easily find and view the diagrams which might be useful without
having to dig through several folders. I can of course understand the
alternative argument you make.

>  
> 
> This brings up some questions.  Let’s say you have a figure that is
> somewhat universal and is used often by the community, such as this
> ‘oearch.png’ figure.  But, the figure is also part of a manual.  Do we
> keep the figure in the manual’s ‘figures’ folder exclusively?  Or,
> duplicate the figure and keep it in the higher-level ‘diagrams’ folder
> as well?
> 
>  
> 
> It goes against good practice to duplicate things so I would lean
> toward keeping the figures with the documents.  And, if we have
> figures that are not used in any documentation we could keep them in
> the higher-level ‘diagrams’ folder. 
> 
>  
> 
> Thoughts?
> 

I completely agree with the duplication point. I think git should handle
symlinks pretty well so we could store them all in the central directory
and link to the documentation sub-folders, or vice-versa?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


