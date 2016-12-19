Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80A59E00C40; Sun, 18 Dec 2016 18:29:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 474C4E00C40
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 18:29:26 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP; 18 Dec 2016 18:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,372,1477983600"; d="scan'208";a="44480208"
Received: from samanna-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.182.219])
	by fmsmga006.fm.intel.com with ESMTP; 18 Dec 2016 18:29:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rafael Gago Castano <RGC@hms.se>
Date: Mon, 19 Dec 2016 15:29:21 +1300
Message-ID: <1563752.ZWXGXK8Co1@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DB5PR0601MB19922A0150C127BA66F21213C29D0@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<2807210.KfHRFA7WDL@peggleto-mobl.ger.corp.intel.com>
	<DB5PR0601MB19922A0150C127BA66F21213C29D0@DB5PR0601MB1992.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Mon, 19 Dec 2016 02:29:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rafael,

Looking at this a bit more closely I think the problem here is that within the 
SDK this RRECOMMENDS doesn't actually come into effect. In the SDK, gcc is in 
the host part, but you want the libssp library for the target which is in the 
target part of the SDK; RRECOMMENDS can't cross between those. On the target 
device it's simpler - both packages are in the same "namespace".

The only way I can see to fix this is to add libssp and libssp-dev to 
packagegroup-core-standalone-sdk-target so that it's explicitly brought into 
the SDK. I'll send a patch to do that.

Cheers,
Paul

On Thu, 15 Dec 2016 14:26:52 Rafael Gago Castano wrote:
> Sorry for the late reply, I had higher priority tasks meanwhile.
> 
> 
> Grepping libssp on the sdks ".target.manifest" file doesn't yield any
> result. libssp.so.0.0.0 is present on the toolchain.
> 
> When running bitbake gcc -e is see that this is the last match of
> RRECOMMENDS_gcc:
> 
> RRECOMMENDS_gcc="     libssp     libssp-dev "
> 
> ________________________________
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> Sent: Monday, December 12, 2016 5:14 AM
> To: Rafael Gago Castano
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] libssp_nonshared.a not present in native SDK.
> 
> On Fri, 09 Dec 2016 09:24:41 Rafael Gago Castano wrote:
> > Hello again.
> > 
> > 
> > I tried to fix this in my layers by adding a
> > "recipes-devtools/gcc_5.3.bbappend" file to containing the additions that
> > you did to poky on...
> > 
> > 
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1c0fc7fcf7772ef8
> > 77 4f623126050972f526fe83
> > 
> > 
> > ...as I think that adding these dependencies to gcc is the right thing.
> > 
> > 
> > Running "bitbake gcc -e" shows the next:
> > 
> > 
> > # $RRECOMMENDS_gcc
> > #   rename from RRECOMMENDS_${PN} data.py:169 [expandKeys]
> > #     "     libssp     libssp-dev "
> > RRECOMMENDS_gcc="     libssp     libssp-dev "
> > 
> > So the recipe is at least processed.
> > 
> > The problem is that "libssp_nonshared.a" is still not present on the SDK.
> > It may happen that this is still happening in poky.
> 
> Hmm, I just tried building an SDK (bitbake -c populate_sdk
> core-image-minimal) with master and it definitely includes
> libssp_nonshared.a. Does the target manifest for your SDK indicate
> libssp-dev is included?
> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

