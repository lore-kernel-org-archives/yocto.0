Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC8A4E00C59; Thu,  3 May 2018 20:27:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64D91E00C9B
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 20:27:36 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 May 2018 20:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,361,1520924400"; d="scan'208";a="46650659"
Received: from vinothin-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.72.179])
	by FMSMGA003.fm.intel.com with ESMTP; 03 May 2018 20:27:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 04 May 2018 15:27:31 +1200
Message-ID: <5208830.mbzL3EqpBH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAHUNapQTzyyQf4_x82uy30Ww2ThUYnzjr8tQeCCYto9bgmOV3w@mail.gmail.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<2272489.8VKhpn1Y3m@peggleto-mobl.ger.corp.intel.com>
	<CAHUNapQTzyyQf4_x82uy30Ww2ThUYnzjr8tQeCCYto9bgmOV3w@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Fri, 04 May 2018 03:27:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Trevor,

On Friday, 4 May 2018 3:26:18 PM NZST Trevor Woerner wrote:
> On Wed, May 2, 2018 at 5:19 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> > wrote:
> > 1) If you want the cppzmq development files to be available *within* the
> > eSDK
> > (so you can write code to use them using the eSDK), even if they are not
> > brought in by way of the image containing a package from the cppzmq
> > recipe,
> > you can install them into the eSDK by running this within the eSDK
> > environment:
> >
> > devtool sdk-install -s cppzmq
> >
> 
> Is sdk-install new? It doesn't show up when I run "devtool help"

It's only available within the eSDK - you won't see it if you run devtool next 
to the build system.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



