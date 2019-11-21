Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7B1AE00BA1; Thu, 21 Nov 2019 13:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8D6E00A9A
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:08:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Nov 2019 13:08:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,227,1571727600"; d="scan'208";a="407344028"
Received: from naveenar-mobl.gar.corp.intel.com (HELO shodan.localnet)
	([10.255.166.225])
	by fmsmga005.fm.intel.com with ESMTP; 21 Nov 2019 13:08:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Kai Kang <kai.kang@windriver.com>
Date: Fri, 22 Nov 2019 10:08:39 +1300
Message-ID: <2392384.1fjsgAbKtY@shodan>
Organization: Intel Corporation
In-Reply-To: <1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
References: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
	<1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is there a rationale for YP using sysvinit as default init manager?
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
X-List-Received-Date: Thu, 21 Nov 2019 21:08:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 22 November 2019 9:40:35 AM NZDT Richard Purdie wrote:
> On Thu, 2019-11-21 at 14:02 -0500, Robert P. J. Day wrote:
> >   don't get me wrong, i have no problem with that, but a colleague
> > asked me what the reason was for using sysvinit as the *default*. i
> > hemmed and hawed and suggested it was for simplicity and reliability,
> > and that a lot of embedded systems didn't need the flashy features of
> > systemd, and so on.
> > 
> >   is there any short answer to give to that question?
> 
> The project existed before systemd and we haven't changed the default.
> 
> We can change the default, it just means someone going through and
> fixing the build failures it generates and rewriting all the test
> metadata to invert poky and poky-altcfg. Personally I've got other
> things I'd prefer to do...

Kai was working on changing this in the last cycle but AFAICT not all issues 
were able to be resolved in time. Kai, do you have a status update?

Thanks
Paul

-- 

Paul Eggleton
Intel System Software Products



