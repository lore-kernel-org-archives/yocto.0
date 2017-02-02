Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 160C8E009A5; Thu,  2 Feb 2017 12:09:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9770E00998
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 12:09:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2017 12:08:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,326,1477983600"; d="scan'208";a="38942094"
Received: from shermanc-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.229])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2017 12:08:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Date: Fri, 03 Feb 2017 09:08:41 +1300
Message-ID: <20642162.JxzQjKCQXc@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.6-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <CAJ86T=Uq1cHgsSgf_2Fe7C9oavbXMym=1kcb67L9ec4ixTc6Mg@mail.gmail.com>
References: <DM5PR0101MB2953EEC38129283F5B94E336B64C0@DM5PR0101MB2953.prod.exchangelabs.com>
	<CAJ86T=Uq1cHgsSgf_2Fe7C9oavbXMym=1kcb67L9ec4ixTc6Mg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Undoing BSP's BBMASK?
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
X-List-Received-Date: Thu, 02 Feb 2017 20:09:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 2 February 2017 11:47:53 AM NZDT Andre McCurdy wrote:
> On Thu, Feb 2, 2017 at 4:15 AM, Takashi Matsuzawa <tmatsuzawa@xevo.com>
> wrote:
> > Say, BSP defines something like this.
> > 
> > BBMASK .= "|msta-xxxx/xxxx/yyyy.bb"
> > 
> > Then I want to cancel this within my local.conf.  Should putting below in
> > my local.conf works? (Or within my bistro/zzzz.conf?)
> > 
> > BBMASK_remove = "|msta-xxxx/xxxx/yyyy.bb"
> 
> No, it won't work (_remove only works on variables which contain items
> separated by whitespace).
> 
> As a workaround for Yocto 2.0 and earlier, you can over-ride the
> complete final value of BBMASK from your local.conf.
> 
> If you are using Yocto 2.1 or later then BBMASK does support multiple
> whitespace separated regular expressions. So then you can update the
> BSP layer to use:
> 
>   BBMASK += "msta-xxxx/xxxx/yyyy.bb"
> 
> and then:
> 
>   BBMASK_remove = "msta-xxxx/xxxx/yyyy.bb"
> 
> from local.conf should work.
> 
> For reference, see:
> 
>  
> http://cgit.openembedded.org/bitbake/commit/?id=2c778ad50aceaffb855baf5f4aa
> 0fed98c880870

Also, please mention to your BSP vendor that they are doing something they 
shouldn't be. BBMASK has no place inside layers that are supposed to be reused 
by others.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

