Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70AEDE009CB; Thu,  9 Nov 2017 09:22:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C776E00928
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 09:22:00 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 09 Nov 2017 09:22:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,370,1505804400"; d="scan'208";a="147987945"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by orsmga004.jf.intel.com with ESMTP; 09 Nov 2017 09:22:00 -0800
Date: Thu, 9 Nov 2017 11:32:22 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20171109113222.3326bfcf@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
References: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
	<CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Jerry Lian <jerry.lian@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Thu, 09 Nov 2017 17:22:02 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 8 Nov 2017 16:30:39 +0000
"Burton, Ross" <ross.burton@intel.com> wrote:

> On 8 November 2017 at 15:41, Jerry Lian <jerry.lian@gmail.com> wrote:
> 
> > Just wondering:
> > * As an active project, why yocto documentation does not provide a content
> > (better be clickable)?
> >  
> 
> The megamanual (Complete Documentation) doesn't have a top-level table of
> contents as that basically exists to search globally.  The real docs (such
> as Tasks Manual) have a top level table of contents.
> 
> * Or PDF format for easy printing.
> >  

Try running

make pdf DOC=ref-manual


(then drink so coffee and wait) After it, the pdf manual is there. There are other manuals as well, this is just an example cmd.

Leo

> 
> That would be massive.  The source is in git as docbook so it's fairly
> simple to generate a PDF.



> 
> Ross

