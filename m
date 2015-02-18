Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09922E00815; Wed, 18 Feb 2015 08:48:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12680E00815
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:48:19 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Feb 2015 08:48:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,602,1418112000"; d="scan'208";a="679856107"
Received: from cbulfin-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.182])
	by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2015 08:48:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 16:48:16 +0000
Message-ID: <1749798.L7mbWZ0yKU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.6-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
	<2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
	<CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 16:48:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 18 February 2015 17:33:26 Valentin Le bescond wrote:
> I tryed editing /meta-wolfson/conf/layer.conf or /build/conf/layer.conf,
> adding :
> PREFERED_VERSION_linux-raspberrypi = "3.10.%"
> 
> but neither worked (still using 3.12)

I assume you tried build/conf/local.conf not build/conf/layer.conf?

If so, that should have worked. You can run bitbake -e | less and look through 
the history to see what is overriding it if it doesn't work.
 
> I endded up editing meta-raspberrypi's machine configuration and it works
> fine.
> 
> It's good, but that means I will need to apply this change to every
> building machine I will use, or fork the meta-raspberrypi repo, witch is
> another story.
> I was hoping to keep everything inside my wolfson layer. too bad.

FWIW, in general forcing a particular kernel version from a layer.conf like 
this isn't very good practice. People who use your layer may not expect to 
have the kernel version switched just by adding it to their bblayers.conf. 
(There may perhaps be mitigating circumstances in this case.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

