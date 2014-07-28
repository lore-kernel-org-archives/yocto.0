Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 432E3E007C2; Mon, 28 Jul 2014 04:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E423FE007B4
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 04:17:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jul 2014 04:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,748,1400050800"; d="scan'208";a="568331721"
Received: from cfitzsim-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.251])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2014 04:17:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 28 Jul 2014 12:17:46 +0100
Message-ID: <2471401.oJ2etsARNy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53D63083.1000309@dynamicdevices.co.uk>
References: <53D623AD.5080006@dynamicdevices.co.uk>
	<6145890.jIdLxip80Y@peggleto-mobl5.ger.corp.intel.com>
	<53D63083.1000309@dynamicdevices.co.uk>
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
X-List-Received-Date: Mon, 28 Jul 2014 11:17:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 28 July 2014 12:14:11 Alex J Lennon wrote:
> On 28/07/2014 11:45, Paul Eggleton wrote:
> > On Monday 28 July 2014 11:40:52 Alex J Lennon wrote:
> >> On 28/07/2014 11:34, Paul Eggleton wrote:
> >>> On Monday 28 July 2014 11:19:25 Alex J Lennon wrote:
> >>> So, I think this is an issue with newer host Perl and OpenSSL 1.0.1g.
> >>> This
> >>> looks like it might be the patch that fixes it:
> >>> 
> >>> https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=23f5908ac753b17
> >>> 6a
> >>> f2a0690e0ebb53c95ef192b
> >>> 
> >>> If so we can apply this in daisy (master already has 1.0.1h which
> >>> includes
> >>> this fix.)
> >> 
> >> I'll give this a quick test then shortly thanks Paul.
> >> 
> >> In the meantime I can also confirm that running make install_sw instead
> >> of make install works as an interim - albeit inappropriate for Yocto -
> >> fix
> >> 
> >> ref: https://github.com/openssl/openssl/issues/57
> > 
> > I haven't reproduced the issue here (I need to clear space to set up an
> > Ubuntu 14.04 VM first) but if that means it skips preparing / installing
> > the documentation I would assume it would work around the issue yes.
> > 
> > Cheers,
> > Paul
> 
> Apologies - this does appear to be finger trouble on my part. Somehow
> when I pulled down
> the latest daisy branch a merge has occurred which knocked out a line
> with the already
> present patch in openssl_1.0.1g.bb:
> 
> file://openssl-fix-doc.patch \
> 
> With this corrected openssl builds and installs fine.

Ah ok, no worries. Mystery solved :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

