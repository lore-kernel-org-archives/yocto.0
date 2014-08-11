Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46E8FE00746; Mon, 11 Aug 2014 05:22:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CF8EE00524
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 05:22:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Aug 2014 05:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,841,1400050800"; d="scan'208";a="586425441"
Received: from glucy-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.202])
	by orsmga002.jf.intel.com with ESMTP; 11 Aug 2014 05:22:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joseph Andrew de la =?ISO-8859-1?Q?Pe=F1a?= <jdelapena@lexmark.com>
Date: Mon, 11 Aug 2014 13:22:06 +0100
Message-ID: <10588869.YnsrrjQHux@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.8-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <CAJrRHk5oQPmQ0Fpa7TxCGvF20GsLM7xF-NeHSBQ4hD0GJXbqrA@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<1832456.ZmMOoJekSa@peggleto-mobl5.ger.corp.intel.com>
	<CAJrRHk5oQPmQ0Fpa7TxCGvF20GsLM7xF-NeHSBQ4hD0GJXbqrA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Mon, 11 Aug 2014 12:22:23 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 11 August 2014 20:17:31 Joseph Andrew de la Pe=F1a wrote:
> Yes, it worked. I can see my archive libs now. BUT one last problem, =
there
> are few units publishing archive libs that were not included. What wo=
uld I
> need to add in my recipe to those units for it to work?

That should not be the case. If the package is in the image, then the=20=

corresponding -staticdev package should now be in the SDK when you do -=
c=20
populate_sdk <imagename>.

> Apparently, I have my own meta-layer, and I put the SDKIMAGE_FEATURES=
 in
> one of my distro's conf. Is this the right place for this variable?

Yes.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

