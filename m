Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E3BAE007C9; Mon, 28 Jul 2014 03:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BFA0E007B4
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 03:45:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2014 03:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,748,1400050800"; d="scan'208";a="550068057"
Received: from cfitzsim-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.251])
	by orsmga001.jf.intel.com with ESMTP; 28 Jul 2014 03:45:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 28 Jul 2014 11:45:06 +0100
Message-ID: <6145890.jIdLxip80Y@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53D628B4.9070503@dynamicdevices.co.uk>
References: <53D623AD.5080006@dynamicdevices.co.uk>
	<3638255.FXZXZqP4FB@peggleto-mobl5.ger.corp.intel.com>
	<53D628B4.9070503@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 'pod' problem building openssl 1.0.1g with latest daisy branch
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
X-List-Received-Date: Mon, 28 Jul 2014 10:45:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 28 July 2014 11:40:52 Alex J Lennon wrote:
> On 28/07/2014 11:34, Paul Eggleton wrote:
> > On Monday 28 July 2014 11:19:25 Alex J Lennon wrote:
> > So, I think this is an issue with newer host Perl and OpenSSL 1.0.1g. This
> > looks like it might be the patch that fixes it:
> > 
> > https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=23f5908ac753b176a
> > f2a0690e0ebb53c95ef192b
> > 
> > If so we can apply this in daisy (master already has 1.0.1h which includes
> > this fix.)
> 
> I'll give this a quick test then shortly thanks Paul.
> 
> In the meantime I can also confirm that running make install_sw instead
> of make install works as an interim - albeit inappropriate for Yocto - fix
> 
> ref: https://github.com/openssl/openssl/issues/57

I haven't reproduced the issue here (I need to clear space to set up an Ubuntu 
14.04 VM first) but if that means it skips preparing / installing the 
documentation I would assume it would work around the issue yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

