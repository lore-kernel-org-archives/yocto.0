Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83497E00956; Thu, 21 May 2015 05:55:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F0A2E004F6
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 05:55:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 May 2015 05:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,468,1427785200"; d="scan'208";a="733059623"
Received: from lpobrien-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.1.32])
	by orsmga002.jf.intel.com with ESMTP; 21 May 2015 05:55:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marcin =?utf-8?B?S3J6ZW1pxYRza2k=?= <mar.krzeminski@gmail.com>
Date: Thu, 21 May 2015 13:55:45 +0100
Message-ID: <2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CABc_YGCU1KaKpSZr24-BO2cDHS-s5qkp1j1U2ri+UCoa-zrc0w@mail.gmail.com>
References: <CABc_YGCU1KaKpSZr24-BO2cDHS-s5qkp1j1U2ri+UCoa-zrc0w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing do_compile task and ordering problem
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
X-List-Received-Date: Thu, 21 May 2015 12:55:52 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Marcin,

On Thursday 21 May 2015 12:47:05 Marcin Krzemi=C5=84ski wrote:
> I am writing recipe that inherits from *native*.
> I removed do_compile task using: *deltask do_compile*
> When i was ruing bitbake my-recipe all works fine, but when I added r=
ecipe
> to *EXTRA_IMAGEDEPENDS *and run* bitbake core-image-minimal *tasks we=
re
> reordered in some strange way that task do_install was performed befo=
re
> do_fetch.
> When I hanged *deltask do_compile *to *do_compile[noexec] =3D "1" * a=
ll went
> back to normal.
> I found *deltask *in manual so I do not know, is it a bug or not?

I suspect this is because all deltask does is delete the task, it does =
not=20
reconnect the dependency chain such that tasks that depended on the del=
eted=20
task would depend on the tasks that the deleted task depended upon, so =
what=20
you get in this case is do_install no longer having any dependencies. T=
o be=20
honest the current behaviour seems reasonable to me, though it is not=20=

immediately obvious and ought to be described in the manual. I think in=
 your=20
situation you really do want to set the noexec flag rather than using d=
eltask.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

