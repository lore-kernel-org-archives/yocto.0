Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0AACE0090A; Thu, 27 Sep 2018 16:34:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83CE9E00519
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 16:34:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Sep 2018 16:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,312,1534834800"; d="scan'208";a="74454168"
Received: from yupengts-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.150])
	by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2018 16:33:59 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Date: Fri, 28 Sep 2018 11:33:56 +1200
Message-ID: <1907640.U4zZL0Bqpb@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <156dc277-4255-aaf3-cb9f-f25a4481189f@windriver.com>
References: <1721109.tuLG3TFsTU@localhost.localdomain>
	<CAP71WjzUkYnazb3VHzEHgEDHoRqKdOT89Waw_hAy6pRyh8=BNA@mail.gmail.com>
	<156dc277-4255-aaf3-cb9f-f25a4481189f@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] layers.openembedded.org upgraded
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
X-List-Received-Date: Thu, 27 Sep 2018 23:34:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Randy

On Friday, 28 September 2018 11:22:29 AM NZST Randy MacLeod wrote:
> On 09/27/2018 05:28 PM, Nicolas Dechesne wrote:
> > On Thu, Sep 27, 2018 at 10:43 PM Paul Eggleton <paul.eggleton@intel.com> wrote:
> >> I'm very happy to announce that we've finally been able to upgrade the layer
> >> index at http://layers.openembedded.org to the latest revision on master,
> >> incorporating quite a bit of work that's been going on for the past few
> >> months. Improvements now visible:
> 
> Nice new features, thanks!
> 
> The "Branch:" and "Filter layers" selection menus don't work
> for me when using Firefox 62.0 (64-bit) on Ubuntu-18.04.
> 
> Google Chrome Version 69.0.3497.100 (Official Build) (64-bit)
> works fine.

Hmm, I do my development with Firefox and I just checked - with Firefox
62.0 (64-bit) here on Fedora 28 both work. Do you perhaps have an add-on
enabled that might prevent these from working? I believe they both rely on
javascript (the filter dropdown definitely does).

Cheers,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre



