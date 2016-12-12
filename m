Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FDDCE00B74; Sun, 11 Dec 2016 20:14:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC8F5E00B45
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 20:14:26 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 11 Dec 2016 20:14:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,334,1477983600"; d="scan'208";a="911134237"
Received: from nshamalo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.157])
	by orsmga003.jf.intel.com with ESMTP; 11 Dec 2016 20:14:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rafael Gago Castano <RGC@hms.se>
Date: Mon, 12 Dec 2016 17:14:21 +1300
Message-ID: <2807210.KfHRFA7WDL@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.11-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DB5PR0601MB199284DCC3769AF351189DCAC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB1992734AEC739F080CCEC06FC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB199284DCC3769AF351189DCAC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 12 Dec 2016 04:14:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 09 Dec 2016 09:24:41 Rafael Gago Castano wrote:
> Hello again.
> 
> 
> I tried to fix this in my layers by adding a
> "recipes-devtools/gcc_5.3.bbappend" file to containing the additions that
> you did to poky on...
> 
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1c0fc7fcf7772ef877
> 4f623126050972f526fe83
> 
> 
> ...as I think that adding these dependencies to gcc is the right thing.
> 
> 
> Running "bitbake gcc -e" shows the next:
> 
> 
> # $RRECOMMENDS_gcc
> #   rename from RRECOMMENDS_${PN} data.py:169 [expandKeys]
> #     "     libssp     libssp-dev "
> RRECOMMENDS_gcc="     libssp     libssp-dev "
> 
> So the recipe is at least processed.
> 
> The problem is that "libssp_nonshared.a" is still not present on the SDK. It
> may happen that this is still happening in poky.

Hmm, I just tried building an SDK (bitbake -c populate_sdk core-image-minimal) 
with master and it definitely includes libssp_nonshared.a. Does the target 
manifest for your SDK indicate libssp-dev is included?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

