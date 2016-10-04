Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB4FE00ABE; Tue,  4 Oct 2016 06:51:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B288CE00A85
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 06:51:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u94Dpep3004753
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Oct 2016 06:51:41 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.294.0; Tue, 4 Oct 2016 06:51:40 -0700
Date: Tue, 4 Oct 2016 09:51:38 -0400
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20161004135137.GB1285@yow-lhowlett-d0.wrs.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-9-git-send-email-Liam.Howlett@WindRiver.com>
	<3958786.QOXee2gzd6@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <3958786.QOXee2gzd6@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [128.224.56.234]
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 08/10] layerindex: Add collection and version to layerbranch
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
X-List-Received-Date: Tue, 04 Oct 2016 13:51:48 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Paul Eggleton <paul.eggleton@linux.intel.com> [161003 18:54]:
> On Mon, 26 Sep 2016 14:25:36 Liam R. Howlett wrote:
> > Collection and version will be pulled from the layer.conf if it exists
> > and dependencies will be resolved by first checking for layers with the
> > dependency name and then checking for collections.  It is necessary to
> > shutdown tinfoil to avoid bitbake complaining about multiple instances.
> 
> I'm not sure I understand why though, and there's not an explanation given 
> here. What you're doing as a workaround only works by chance and I suspect it 
> will break horribly when we do the tinfoil2 refactor in the next release (it's 
> not expected that you'd have datastores still around and be parsing recipes 
> when tinfoil has been shut down), so we *really* need to try to avoid shutting 
> down like this. Can you explain what you saw?


I received messages about having multiple copies of bitbake running if I
did not shut down tinfoil.  I also hit `too many files opened` in the
update.py loop.  I have since reworked this patch to pass in the tinfoil
instance to layerconfparser in this patch set.  I was almost done v2
when I received your comments.  I also noticed that I had shut down
tinfoil before it should have been shut down - in v2, I had moved my
shutdown call next to sys.exit(0).  I feel much better about the way I
handle this in v2.

> 
> Cheers,
> Paul
> 
> -- 
> 
> Paul Eggleton
> Intel Open Source Technology Centre

