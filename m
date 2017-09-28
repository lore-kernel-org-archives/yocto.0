Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5395FE00C45; Wed, 27 Sep 2017 23:13:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E63FE009F5;
	Wed, 27 Sep 2017 23:13:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Sep 2017 23:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,448,1500966000"; d="scan'208";a="140365686"
Received: from swold-mobl2.jf.intel.com ([10.255.86.118])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2017 23:13:29 -0700
Message-ID: <1506579209.7331.26.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Lai Eddy <eddy.lai.tw@gmail.com>
Date: Wed, 27 Sep 2017 23:13:29 -0700
In-Reply-To: <CACrgodfgYaFmxyD0xP5aG7nnp5RsBfJseUBqTqL9QbeO6nZf6g@mail.gmail.com>
References: <1506569246.7331.9.camel@linux.intel.com>
	<CACrgodfgYaFmxyD0xP5aG7nnp5RsBfJseUBqTqL9QbeO6nZf6g@mail.gmail.com>
X-Mailer: Evolution 3.24.5 (3.24.5-1.fc26) 
Mime-Version: 1.0
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	Yocto Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-intel] meta-intel has been split into meta-dpdk and meta-intel-qat
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
X-List-Received-Date: Thu, 28 Sep 2017 06:13:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-09-28 at 11:32 +0800, Lai Eddy wrote:
> is this mean I don't need meta-intel anymore? (but still can be found
> in the git)
> just choose to use meta-dpdk and/or meta-intel-qat
> 
If you are building an Intel target, I would suggest you still use
meta-intel.

The DPDK and QAT are specificly breaking out software middleware that
might not be needed for all meta-intel MACHINES.

Sau!

> 2017-09-28 11:27 GMT+08:00 Saul Wold <sgw@linux.intel.com>:
> > In an effort to create more consistency in Yocto Project layer, we
> > are
> > splitting the meta-intel to remove some application/libraries that
> > should really be in their own layers.
> > 
> > The new meta-dpdk will serve as a place for the Linux Foundation's
> > DPDK
> > project to host meta-data.
> > 
> > The meta-intel-qat will carry the Quick Assist Technology libraries
> > and
> > associated applications.
> > 
> > They are both hosted at https://git.yoctoproject.org
> > 
> > 
> > Sau!
> > --
> > _______________________________________________
> > meta-intel mailing list
> > meta-intel@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/meta-intel
> 
> 

