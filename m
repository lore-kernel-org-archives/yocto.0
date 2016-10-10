Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DF50E00815; Sun,  9 Oct 2016 17:54:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7369E007A2
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 17:54:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Oct 2016 17:54:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,469,1473145200"; d="scan'208";a="1068256333"
Received: from klee32-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.241])
	by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2016 17:54:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 10 Oct 2016 13:54:16 +1300
Message-ID: <2819650.EJqT4j8vUA@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <16da8ce7-7355-fe97-7abe-20cd3a64e2c7@windriver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<16da8ce7-7355-fe97-7abe-20cd3a64e2c7@windriver.com>
MIME-Version: 1.0
Cc: "Liam R. Howlett" <Liam.Howlett@windriver.com>, yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2 00/12] Add Distro, dependency and recommends detection, and import_project
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
X-List-Received-Date: Mon, 10 Oct 2016 00:54:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 07 Oct 2016 13:20:50 Mark Hatle wrote:
> FYI, I have made sure these are re-based on top of paule/django18 and pushed
> to:
> 
> git://git.yoctoproject.org/layerindex-web mhatle/django18
> 
> BTW for me upgrading from paule/django18 to this version.  I only had to run
> 'manage.py syncdb'.
> 
> This created the new database and added the missing field for the recommend.

I'm not sure how that worked there but it doesn't work here. If I take a 
database that works on paule/django18, run syncdb then open the admin 
interface and click on "Layer branches" I get:

  no such column: layerindex_layerbranch.collection

I'm afraid we really do need to create migrations whenever we change the 
models.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

