Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFBBE007AD; Mon, 18 Aug 2014 07:49:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1840E007A2
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 07:48:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 18 Aug 2014 07:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,886,1400050800"; d="scan'208";a="578232712"
Received: from sdoherty-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.63])
	by fmsmga001.fm.intel.com with ESMTP; 18 Aug 2014 07:48:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jens Rehsack <rehsack@gmail.com>
Date: Mon, 18 Aug 2014 15:48:52 +0100
Message-ID: <2465494.QQQqIGCniD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <7A586870-D626-4D2D-A72B-A9118712F317@gmail.com>
References: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
	<20140817173900.GH3660@jama>
	<7A586870-D626-4D2D-A72B-A9118712F317@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: Fix for meta-oe/recipes-graphics/fbida/fbida_git.bb
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
X-List-Received-Date: Mon, 18 Aug 2014 14:49:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jens,

On Sunday 17 August 2014 20:06:10 Jens Rehsack wrote:
> Am 17.08.2014 um 19:39 schrieb Martin Jansa <martin.jansa@gmail.com>:
> > On Sun, Aug 17, 2014 at 05:02:39PM +0200, Jens Rehsack wrote:
> >> we played a bit with some tools before using a modified psplash to show
> >> some guidance on hdmi-fb and there was an error in fbida which wrongly
> >> mixes host-paths and target paths. Additionally - for Poky or OE it's
> >> unnecessary to guess additional path to check - recipes will do
> >> correctly.
> >
> > Please follow README and send it as inline patch to oe-devel ML.
> > 
> > Thanks
> 
> Hi Martin,
> 
> 1) I do not send inline-patches
> 2) I do not subscribe to more mailing lists just to send patches.
> 
> Either it's helpful and maintainers accept it or it's not and when one uses
> a search engine one applies it locally.

You do want to avoid carrying these patches yourself indefinitely, right?
If so, you'd rather they got merged rather than being missed by the maintainer 
because they weren't in the expected place or format - right?

The way we accept and review patches is via our mailing lists; and we have to 
have more than one list because of the sheer volume of patches and discussion. 
Unfortunately we also have to force subscription in order to protect ourselves 
from spam. However, it's worth noting that you don't actually need to receive 
emails from the list in order to be subscribed - you can disable delivery in 
your account options.

The procedures we have in place do require just a little bit more work on the 
part of the submitter, but that does translate to a huge reduction in work for 
the maintainers; and preserving our maintainers' sanity is important if we 
want to keep the system maintained ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

