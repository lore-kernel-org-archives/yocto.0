Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F269E00AE6; Tue,  1 Dec 2015 10:16:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DBF6E00ADF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 10:16:33 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 01 Dec 2015 10:16:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; d="scan'208";a="610784660"
Received: from hlim3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.190])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 10:16:09 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Date: Wed, 02 Dec 2015 07:16:05 +1300
Message-ID: <2445935.qXt4qp3rbC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <565DAFE7.2060808@linux.intel.com>
References: <CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com>
	<565DAFE7.2060808@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>,
	Ayoub Zaki <ayoub.zaki@googlemail.com>
Subject: Re: FEED_DEPLOYDIR_BASE_URI does not work
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
X-List-Received-Date: Tue, 01 Dec 2015 18:16:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Dec 2015 08:34:15 Leonardo Sandoval wrote:
> On 12/01/2015 03:49 AM, Ayoub Zaki wrote:
> > |Hello,
> > 
> > Setting FEED_DEPLOYDIR_BASE_URI
> > <http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-FEE
> > D_DEPLOYDIR_BASE_URI> in local.conf as specified in the yocto manual does
> > NOT generate any /etc/opkg/base-feeds.conf in the root of the target
> > filesystem!
> > Is ist a known bug ? I'm using jethro version with opkg as package
> > manager.
> 
> Looks like a bug, so file a bug on bugzilla.yoctoproject.org.
> 
> Have you tried setting the variables named
> PACKAGE_FEED_[URIS|BASE_PATHS|ARCHS] ?
> 
> http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-PACKAG
> E_FEED_URIS

Leo - I'm not sure your patch implementing this functionality actually got 
merged in the end, though I suspect the corresponding changes to the manual 
did in advance (if that's the case, that shouldn't have happened). Can you 
double-check this?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

