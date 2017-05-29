Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70739E00953; Mon, 29 May 2017 07:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E9DE007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 07:50:00 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 May 2017 07:49:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,415,1491289200"; d="scan'208";a="107894586"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by fmsmga005.fm.intel.com with ESMTP; 29 May 2017 07:49:59 -0700
Message-ID: <1496069912.26945.37.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: =?UTF-8?Q?Ng=E1=BB=8Dc?= Thi =?UTF-8?Q?Hu=E1=BB=B3nh?=
	<so61pi.re@gmail.com>
Date: Mon, 29 May 2017 09:58:32 -0500
In-Reply-To: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
References: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to install dbg package and not its dependencies?
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
X-List-Received-Date: Mon, 29 May 2017 14:50:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2017-05-28 at 17:23 +0700, Ngọc Thi Huỳnh wrote:
> Hi everyone,
> 
> 
> Let's say I have app-example package which depends on libexample.
> 
> When I add app-example-dbg to IMAGE_INSTALL, libexample-dbg package is
> automatically included in the final image which makes the image size
> become bigger.
> 
what about installing the non-dbg ones?
> 
> In this case, is there a way to prevent libexample-dbg from being
> installed?
> 
> 
> Thanks,
> 
> Thi Huynh
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



