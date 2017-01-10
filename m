Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A4DE00A71; Tue, 10 Jan 2017 12:52:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF5D9E00A5C
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 12:52:01 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 10 Jan 2017 12:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,344,1477983600"; d="scan'208";a="52336392"
Received: from lancehou-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.93])
	by fmsmga006.fm.intel.com with ESMTP; 10 Jan 2017 12:51:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bent Bisballe Nyeng <xbbn@mjolner.dk>
Date: Wed, 11 Jan 2017 09:51:55 +1300
Message-ID: <3536641.0CtJjzRgDn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
	<1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how does one stay on top of YP security alerts?
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
X-List-Received-Date: Tue, 10 Jan 2017 20:52:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 10 Jan 2017 10:37:48 Bent Bisballe Nyeng wrote:
> I found the list initially through this page:
> https://wiki.yoctoproject.org/wiki/Security where it is described as the
> security [at] yoctoprojct [dot] org being the discussion list and the yocto
> [dash] security [at] yoctoproject[dot] org being the security announcement
> list.

That's not what it says. What it does say is that yocto-security@ list is for 
discussions about security patches, and security@ is for private notification 
about security issues *to* several nominated individuals. There isn't an 
announcement list I'm afraid.
 
> If the yocto [dash] security [at] yoctoproject[dot] org is in fact no longer
> active I think it is important that the wiki page is changed to reflect
> that to prevent potential dangerous misunderstandings in the future.

I'm not sure how you came to the conclusions you did - do you have any 
suggestions on rewording?

I will say that the yocto-security@ list has been pretty quiet since it was 
set up. Adding a few people on CC - are there any plans to make better use of 
this list?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

