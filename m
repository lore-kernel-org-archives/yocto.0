Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7622EE009AA; Sun,  4 Nov 2018 19:32:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F3EAE008D7
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 19:32:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Nov 2018 19:32:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,466,1534834800"; d="scan'208";a="246987316"
Received: from zhiyionk-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.168.156])
	by orsmga004.jf.intel.com with ESMTP; 04 Nov 2018 19:32:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 05 Nov 2018 16:32:26 +1300
Message-ID: <4820003.uEWOQMMmpA@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: 2.6 migration guide
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
X-List-Received-Date: Mon, 05 Nov 2018 03:32:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 31 October 2018 11:06:31 AM NZDT Scott Rifenbark wrote:
> I have an initial section at
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release,
> which is based on Richard's input.  I am sure there are more items.

OK, so I have removed Richard's items from the wiki page (since they're now
in the manual) and added items I have gathered from reviewing all of the 
git commits in the release. Let me know if you need clarification on anything
- everyone else, let us know if I missed or messed up something.

  https://wiki.yoctoproject.org/wiki/FutureMigrationGuide

BTW I think the section on postinstalls (from Richard's input) is a little terse
and needs expansion - most importantly it needs to describe what actions the
user might need to take. I'll take care of this on review if nobody else does.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



