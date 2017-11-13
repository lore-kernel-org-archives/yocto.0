Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B416E00D26; Mon, 13 Nov 2017 07:16:57 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B165E00CD4
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 07:16:55 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2017 07:16:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,389,1505804400"; d="scan'208";a="149073092"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by orsmga004.jf.intel.com with ESMTP; 13 Nov 2017 07:16:43 -0800
Date: Mon, 13 Nov 2017 09:27:12 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Ran Shalit <ranshalit@gmail.com>
Message-ID: <20171113092712.5f2668e8@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <CAJ2oMhKC0+nozu1p04mzPym1O4FNnJ0aoR2zxQvcsTL7sMt2dQ@mail.gmail.com>
References: <CAJ2oMhKC0+nozu1p04mzPym1O4FNnJ0aoR2zxQvcsTL7sMt2dQ@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Can I force gstreamer into specific version with my image ?
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
X-List-Received-Date: Mon, 13 Nov 2017 15:16:57 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 12 Nov 2017 11:59:32 +0200
Ran Shalit <ranshalit@gmail.com> wrote:

> hELLO,
> 
> For some reason my image is installed with gstreamer 1.6, and I don't
> understnad why the image (fsl-image-qt5) prefer 1.6.
> Is there a way to force gsreamer specific version (1.8.2) ? 

There is a specific varible which you can use to point to a specific PV, check

http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PREFERRED_VERSION

Just make sure you have the 1.8.2 recipe in your layer stack.


