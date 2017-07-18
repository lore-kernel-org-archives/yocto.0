Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 364ACE00BC0; Tue, 18 Jul 2017 09:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95800E00B6F
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:05:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2017 09:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,378,1496127600"; d="scan'208";a="112702546"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga002.jf.intel.com with ESMTP; 18 Jul 2017 09:05:34 -0700
Message-ID: <1500394433.2753.11.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Paulo Neves <ptsneves@gmail.com>
Date: Tue, 18 Jul 2017 11:13:53 -0500
In-Reply-To: <CAJO0J4hEcDr36TMJtBO+nb8cFMubct7yhUuu4HDjEQyQntvuQw@mail.gmail.com>
References: <CAJO0J4hEcDr36TMJtBO+nb8cFMubct7yhUuu4HDjEQyQntvuQw@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH] fetch2/__init_.py removed bb.error which caused exit code 1
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
X-List-Received-Date: Tue, 18 Jul 2017 16:05:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

you need to send it to openembedde-core mailing list and use
git-send-email to submit your patch. More info on the link below


http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Leo

On Tue, 2017-07-18 at 15:43 +0200, Paulo Neves wrote:
> http://lists.openembedded.org/pipermail/openembedded-core/2012-September/069448.html
> 
> Workaround to avoid exit 1 status.
> 
>     The reason it happens is that there are 2 missions
>     the state cache uses the normal fetcher to get
>     its's stuff and it is acceptable for it to fail.
>     On the other hand it is not acceptable for fetch
>     to fail.
> 
>     In it's code the state cache code catches the exception that the
>     fetcher launches and discards. The problem
>     is that before this exception is caught it prints
>     a bb.error and bb.error prints something and
>     continues on like no problem happened.  but marks
>     the exit code as 1 which is a disaster.
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



