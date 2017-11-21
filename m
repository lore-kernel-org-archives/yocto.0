Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99592E00A9C; Tue, 21 Nov 2017 14:28:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74E2E006CA
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 14:28:16 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Nov 2017 14:28:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,432,1505804400"; 
   d="scan'208";a="8022482"
Received: from msamsi-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.76.52])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2017 14:28:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 22 Nov 2017 11:28:08 +1300
Message-ID: <2715985.tmFNQIJNkk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
	<CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
MIME-Version: 1.0
Cc: +lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>, "Yang,
	Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Tue, 21 Nov 2017 22:28:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 22 November 2017 10:24:59 AM NZDT Burton, Ross wrote:
> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com> wrote:
> > If yocto is interested in this layer and will accept it,
> > I could send pull request or some one directly fetch
> > from above github master branch.
> 
> Are you asking for a git repo on git.yoctoproject.org?  If you want one I
> believe the process is to ask Michael Halstead.  There's no reason why it
> can't be maintained in this repository forever though,  just submit it to
> the layer index.

It's now in the layer index FYI, though actual metadata updates are currently 
broken unfortunately - Michael is working on the latter I believe.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

