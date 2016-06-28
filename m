Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10FD4E00DE5; Mon, 27 Jun 2016 18:30:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E19D4E00DBE
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 18:30:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jun 2016 18:30:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,538,1459839600"; d="scan'208";a="1006342442"
Received: from rvardha1-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.76])
	by orsmga002.jf.intel.com with ESMTP; 27 Jun 2016 18:30:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: richard zhang <richard.zhang@pica8.com>
Date: Tue, 28 Jun 2016 13:30 +1200
Message-ID: <3097479.6HfBUUWWdS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAF3SDA4njst=j_=hwa+xx3rTK21ct7NDXovvHQQeJ06b4zwreg@mail.gmail.com>
References: <57712C4E.6060400@pica8.com>
	<CAF3SDA4njst=j_=hwa+xx3rTK21ct7NDXovvHQQeJ06b4zwreg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to add recipes to images not RPMs.
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
X-List-Received-Date: Tue, 28 Jun 2016 01:30:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

I think you mean IMAGE_INSTALL_append.

There is a section of the manual covering this:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

On Mon, 27 Jun 2016 11:22:52 Daniel. wrote:
> Adding this to your local.conf?
> 
> INSTALL_IMAGE_append = " your packages separeted by whitespaces"
> 
> 2016-06-27 10:38 GMT-03:00 richard zhang <richard.zhang@pica8.com>:
> > Hi all
> > 
> >     I try to add some ricepes to meta layer.The do_fetch and do_compile
> > 
> > things are fine.
> > 
> >     But when I went to image,there is no packages just added.
> >     I find my packages in build/tmp/deploy/rpm .
> >     How to add these packages to image.
> >     
> >     I have do this when I use 'hob',but i don't know how to select them
> > 
> > without 'hob'.
> > 
> > 
> > best regard.
> > Richard Zhang
> > 
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

-- 

Paul Eggleton
Intel Open Source Technology Centre

