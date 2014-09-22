Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B03EE0086B; Mon, 22 Sep 2014 01:52:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 156DFE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 01:52:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Sep 2014 01:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,571,1406617200"; d="scan'208";a="576802798"
Received: from mpsamara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.108])
	by orsmga001.jf.intel.com with ESMTP; 22 Sep 2014 01:52:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 22 Sep 2014 09:51:59 +0100
Message-ID: <2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Mon, 22 Sep 2014 08:52:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:
> On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
> > > We are not using populatesdk ... we need to generate it through
> > > meta-toolchain-qte only so i am trying with the solution provided by
> > > randy..
> > 
> > Can I ask why? I'd like to understand where -c populate_sdk needs further
> > improvement.
>
> I have to generate toolchain which contain qt related tools also like qmake
> and qjson, so we are using meta-toolchain-qte to generate the toolchain..
> Do you suggest it's better to integrate meta-toolchain-qte somehow with
> populate_sdk so that we can make life easier?

It is possible to integrate the two - all you need to do is ensure the extra 
qte tools get added to the SDK. One way to achieve this would be to add the 
following to your image recipe:

QTNAME = "qte"
QT_DIR_NAME = "qtopia"
require recipes-qt/meta/meta-toolchain-qt.inc

(I haven't tested this so I'm not 100% sure if it will work, but it should.)

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

