Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 773E8E009CE; Mon,  5 Dec 2016 12:12:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10BDAE0098A
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 12:12:17 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 05 Dec 2016 12:12:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,749,1477983600"; d="scan'208";a="37307383"
Received: from achong2-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.156.113])
	by orsmga004.jf.intel.com with ESMTP; 05 Dec 2016 12:12:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Paulo Neves <ptsneves@gmail.com>
Date: Tue, 06 Dec 2016 09:12:13 +1300
Message-ID: <37027080.xRogoyWsqK@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJO0J4gwihw2eEp-g6v8YTZAn_VyV6WCy6p-nXwosUA91PZWPQ@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<6923274.fGg5IdQy07@peggleto-mobl.ger.corp.intel.com>
	<CAJO0J4gwihw2eEp-g6v8YTZAn_VyV6WCy6p-nXwosUA91PZWPQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 20:12:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 05 Dec 2016 21:06:05 Paulo Neves wrote:
> Hello Paul, I understood that. The part of the specific paths is the
> one that breaks convention and has no easily visible documentation, or
> am I missing something.

We do mention it in at least a couple of places:

 http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-sharing-files-between-recipes

 http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-tasks-populate_sysroot

Was there anywhere else you'd expect to see it covered? Our documentation
can always be improved (as can our code).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

