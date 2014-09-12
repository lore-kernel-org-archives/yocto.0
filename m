Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FD83E0078E; Fri, 12 Sep 2014 09:26:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA309E006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:26:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Sep 2014 09:20:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,514,1406617200"; d="scan'208";a="602076712"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO [10.255.12.206])
	([10.255.12.206])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2014 09:26:11 -0700
Message-ID: <1410539171.26951.7.camel@empanada.home.network>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Michael Kotson <mkotson@octagonsystems.com>
Date: Fri, 12 Sep 2014 11:26:11 -0500
In-Reply-To: <A6CCE322CA624947AEB978379C760A5001A2CC91@mail.octagonsystems.com>
References: <A6CCE322CA624947AEB978379C760A5001A2CC91@mail.octagonsystems.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto-bsp create question
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
X-List-Received-Date: Fri, 12 Sep 2014 16:26:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2014-09-12 at 10:07 -0600, Michael Kotson wrote:
> Hi all,
> 
>    We are trying to create a custom BSP based off of valleyisland-64
> using the yocto-bsp script.  When we are presented choices for which
> BSP to branch from, valleyisland isn’t one of the choices.  We have
> tried all of the different kernel options presented, but no luck.  I’m
> pretty sure we have the layers added correctly, as we can build
> valleyisland-32 and valleyisland-64 inside of hob with no problems.
> Any idea what we are doing wrong?
> 

Nothing that you're doing wrong, it's just that the valleyisland BSPs
are built a little differently from the normal BSPs - instead of a
machine branch, they do a merge of a valleyisland-io branch into another
branch and the yocto-bsp tools aren't set up to do that.  They'd need to
be enhanced to enhanced to handle cases like that.  I'd suggest filing a
an enhancement bug so we can add that capability..

Thanks,

Tom



>  
> 
> All the best,
> 
> Michael
> 
>  
> 
>  
> 
> Michael Kotson
> 
> Chief Technology Officer
> 
> 
> 
> (Tel:   (303) 412-2055        
> 
> *E-Mail: mkotson@octagonsystems.com
> 
> NOTICE: The information contained in this email and any document
> attached hereto is intended only for the named recipient(s). If you
> are not the intended recipient, nor the employee or agent responsible
> for delivering this message in confidence to the intended
> recipient(s), you are hereby notified that you have received this
> transmittal in error, and any review, dissemination, distribution or
> copying of this transmittal or its attachments is strictly prohibited.
> If you have received this transmittal and/or attachments in error,
> please notify me immediately by reply e-mail and then delete this
> message, including any attachments. 
> 
>  
> 
> 



