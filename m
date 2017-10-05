Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 929BCE00D87; Thu,  5 Oct 2017 12:08:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE56E00CB4
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 12:08:30 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Oct 2017 12:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,481,1500966000"; d="scan'208";a="159335491"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga005.fm.intel.com with SMTP; 05 Oct 2017 12:08:30 -0700
Date: Thu, 5 Oct 2017 14:18:01 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Mark Hieber <hieberm@gmail.com>
Message-Id: <20171005141801.a2b77df555fd39a861da265b@linux.intel.com>
In-Reply-To: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
References: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Adding support for yum in a yocto image
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
X-List-Received-Date: Thu, 05 Oct 2017 19:08:32 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 5 Oct 2017 11:30:33 -0700
Mark Hieber <hieberm@gmail.com> wrote:

> I am building a yocto image to run on a network device, and I need to have
> yum installed in the image. Is this even possible? I would also like to
> have the epel-release repository available in my image.

there is no yum recipe but you can install dnf, would that help?

> 
> Thanks,
> 
> Mark


-- 
Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

