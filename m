Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 889D7E015DF; Tue, 17 Jul 2018 00:12:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35093E01593
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 00:12:17 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2018 00:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,364,1526367600"; d="scan'208";a="57089019"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.34.182])
	by orsmga007.jf.intel.com with ESMTP; 17 Jul 2018 00:11:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Jul 2018 09:11:46 +0200
Message-ID: <6605202.trP80IfoMo@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAJTo0LaBSZdOVh7QEWvtr=S+ft99J7W=dodXTK0OTJp9A9sDNA@mail.gmail.com>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
	<CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
	<CAJTo0LaBSZdOVh7QEWvtr=S+ft99J7W=dodXTK0OTJp9A9sDNA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: how to download a recipe
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
X-List-Received-Date: Tue, 17 Jul 2018 07:12:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 12 July 2018 7:51:35 PM CEST Burton, Ross wrote:
> On 12 July 2018 at 18:49, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> > for grpc, there are 2 of them:
> >
> > http://layers.openembedded.org/layerindex/recipe/72419/
> > Layer meta-oe
> > <http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/>
> > (master branch)
>
> That's a bug in the tool, as meta-networking is a sublayer of meta-oe.  If
> you look at the paths, they're the same file.

That is indeed a bug in the layer index update script - at some point in the 
past the recipe was moved and the move wasn't handled properly. I have a fix 
and will be sending it shortly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



