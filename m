Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A3A8E0095F; Wed,  5 Apr 2017 13:20:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8354E00826
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 13:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491423631; x=1522959631;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=2Z+HPeQZwaYldtexATReOA+F/MMs44SCY9qBUJj63gI=;
	b=dtZA3UaTHIzBuv7p+/YXi30lo4BbXcIh+GOunpPcpQCrfcpsqDE+QxYN
	TEd/A1QkBQcGaoBUOfKrpeMWNA0lNQ==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2017 13:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,280,1488873600"; d="scan'208";a="842375232"
Received: from mpragasa-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.138.225])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2017 13:20:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 06 Apr 2017 08:20:25 +1200
Message-ID: <4044659.t5cTYARgG6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <c5e7440f-39d3-75ed-568a-029a224da6f9@ossystems.com.br>
References: <CAFq4t4gV3N8Z0epsq7K5dprhsBHu+Yk-UnNAQL4QF68AxceVjQ@mail.gmail.com>
	<CAHUNapSu=Cg2cDH2Y1MWOAzLvf3FkVnYuPvX8bN0GJeMrvnpCg@mail.gmail.com>
	<c5e7440f-39d3-75ed-568a-029a224da6f9@ossystems.com.br>
MIME-Version: 1.0
Subject: Re: GNU/Octave
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
X-List-Received-Date: Wed, 05 Apr 2017 20:20:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

FYI here's a guide I have been keeping mostly up-to-date about what you need 
to do to migrate a recipe from OE-Classic:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

Cheers,
Paul

On Thursday, 6 April 2017 1:48:08 AM NZST Fabio Berton wrote:
> You can write a new recipe using
> https://github.com/openembedded/openembedded/tree/master/recipes/octave
> as a start point, and also see gentoo ebuild to check runtime depends or
> get some inspiration :)
> https://gitweb.gentoo.org/repo/gentoo.git/tree/sci-mathematics/octave/octave
> -4.2.1.ebuild
> On 04/05/2017 10:38 AM, Trevor Woerner wrote:
> > On Wed, Apr 5, 2017 at 9:22 AM, Fabien Lahoudere
> > 
> > <fabien.lahoudere@collabora.co.uk> wrote:
> >> On Wed, 2017-04-05 at 14:45 +0200, Peter Balazovic wrote:
> >>> do you know is there recipe for GNU/Octave
> >>> "https://www.gnu.org/software/octave/"? Is it possible to get it
> >>> running on Yocto/Linux machine?
> > 
> > In general, when looking for a recipe a good place to start is the layer
> > index: https://layers.openembedded.org
> > 
> > After that, google is the next place to try :-)
> > 
> >> A quick google search return this :
> >> https://github.com/openembedded/openembedded/tree/master/recipes/octave
> > 
> > That recipe comes for the "openembedded *classic*" repository, which
> > was abandoned years ago. So it might work, or it might needs lots of
> > tweaking to get it to work, or it might need to be rewritten.


-- 

Paul Eggleton
Intel Open Source Technology Centre

