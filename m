Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 178D4E00D88; Fri, 20 Oct 2017 07:15:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E9F0E00D5F
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 07:13:57 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Oct 2017 07:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,405,1503385200"; d="scan'208";a="165008254"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga005.fm.intel.com with SMTP; 20 Oct 2017 07:13:56 -0700
Date: Fri, 20 Oct 2017 09:23:49 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Message-Id: <20171020092349.0ca4650ed0e7ee59e2890231@linux.intel.com>
In-Reply-To: <cover.1508448262.git.amanda.r.brindle@intel.com>
References: <cover.1508448262.git.amanda.r.brindle@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, paul.eggleton@linux.intel.com
Subject: Re: [PATCH 0/1] Send email notification on publication
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
X-List-Received-Date: Fri, 20 Oct 2017 14:15:00 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 19 Oct 2017 14:27:07 -0700
Amanda Brindle <amanda.r.brindle@intel.com> wrote:

Based on the subject, if this a v2 series?


> Before, if there were multiple maintainers, this sent an individual email to each maintainer. Now, this will send one email to all maintainers. The email will also provide instructions for how the maintainer can make changes to the layer's index entry in the future.
> 
> The following changes since commit ad1aac4ea5d4f2b327f7bd9611aed13f7c31ff7e:
> 
>   Show note if layer branch hasn't been indexed (2017-10-04 13:49:00 +1300)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/layerindex-web abrindle/email_notification_publication
>   http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/email_notification_publication
> 
> Amanda Brindle (1):
>   Send email notification on publication
> 
>  layerindex/views.py                          | 45 +++++++++++++++++++++++++++-
>  templates/layerindex/publishemail.txt        |  9 ++++++
>  templates/layerindex/publishemailsubject.txt |  1 +
>  3 files changed, 54 insertions(+), 1 deletion(-)
>  create mode 100644 templates/layerindex/publishemail.txt
>  create mode 100644 templates/layerindex/publishemailsubject.txt
> 
> -- 
> 2.7.4
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

