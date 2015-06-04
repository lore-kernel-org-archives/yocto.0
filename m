Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A32BDE009C8; Thu,  4 Jun 2015 01:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 210DEE007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 01:42:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Jun 2015 01:42:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,551,1427785200"; d="scan'208";a="740778824"
Received: from byanakie-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.5.122])
	by orsmga002.jf.intel.com with ESMTP; 04 Jun 2015 01:42:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 04 Jun 2015 09:42:47 +0100
Message-ID: <2953899.Q7o9RDS9aT@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CA+aJhH2wjWZR1M_H+uMAL1r1Xd7k_qJRp7=mgD-U-JYYE=p7PA@mail.gmail.com>
References: <556F8111.2030201@gmail.com>
	<CA+aJhH2wjWZR1M_H+uMAL1r1Xd7k_qJRp7=mgD-U-JYYE=p7PA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: layerindex
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
X-List-Received-Date: Thu, 04 Jun 2015 08:42:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 04 June 2015 15:54:18 Nathan Rossi wrote:
> On Thu, Jun 4, 2015 at 8:34 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > Hi,
> > 
> > Does the layer index provide a REST api?
> 
> http://layers.openembedded.org/layerindex/api/
> 
> It is self documented to some degree :).
> 
> > -or-
> > 
> > Would (could) it be possible to somehow grab/access the data that drives
> > the layer index (preferably without scraping)?
> 
> The "bitbake-layers" tool might also be of interest as accesses this api:
> http://git.openembedded.org/bitbake/tree/bin/bitbake-layers#n261

Indeed - and if you need anything else of the API. please file enhancement 
requests in bugzilla - or if you're really keen you can send patches, the code 
is here:

  http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

