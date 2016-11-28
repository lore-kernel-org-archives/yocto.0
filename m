Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ECA9E00C41; Mon, 28 Nov 2016 13:34:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE264E00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 13:34:46 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 28 Nov 2016 13:34:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,565,1473145200"; d="scan'208";a="35245488"
Received: from schan1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.70])
	by orsmga004.jf.intel.com with ESMTP; 28 Nov 2016 13:34:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Tue, 29 Nov 2016 10:34:40 +1300
Message-ID: <1649800.RsDOb5Ucbu@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.8-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF8633B@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF86286@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaSCbZH75s_n=wURx1aNe1HKRN=EajOvw13hu_h=GpSAA@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377987FF8633B@AZ-US1EXMB02.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What source is included in sstate hash, how to change?
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
X-List-Received-Date: Mon, 28 Nov 2016 21:34:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Martin,

On Mon, 28 Nov 2016 16:16:30 Vuille, Martin wrote:
> > -----Original Message-----
> > From: Burton, Ross [mailto:ross.burton@intel.com]
> > 
> > On 28 November 2016 at 15:02, Vuille, Martin (Martin)
> > <vmartin@avaya.com> wrote:
> > Or am I completely off-track?
> > 
> > It will track the md5 of files mentioned in SRC_URI, but if a file is
> > generated dynamically then bitbake may not be aware of it.
> > 
> > Can you share a minimal example?
> 
> Unfortunately, that would be difficult.
> 
> But the SRC_URI does cover ${S}/.., so my assumption must be incorrect.

If what you mean is you want to change the source in the work directory and 
have the recipe rebuild - I would strongly advise using the externalsrc class 
instead, since it's designed to enable that situation and avoid losing your 
changes - since the source unpacked by the build system does get removed under 
certain circumstances and you don't want your changes to go with it.

Alternatively, if your configuration is temporary while you are making changes 
to the source (or can be) then it would be worth checking out "devtool modify" 
since that helps you build a workflow around making those changes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

