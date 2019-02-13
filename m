Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 936F9E00754; Tue, 12 Feb 2019 17:58:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D85BE00754;
	Tue, 12 Feb 2019 17:58:06 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Feb 2019 17:58:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,364,1544515200"; d="scan'208";a="114463624"
Received: from skalamka-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.182.236])
	by orsmga007.jf.intel.com with ESMTP; 12 Feb 2019 17:58:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Feb 2019 14:57:59 +1300
Message-ID: <1634479.1jWiZZ8UfD@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CANNYZj_PY61tmw=JjP7PPqqSVJff6kd=rsv=daNscx9eSkNWSA@mail.gmail.com>
References: <03b301d4c2ed$7497f360$5dc7da20$@gmail.com>
	<CANNYZj_PY61tmw=JjP7PPqqSVJff6kd=rsv=daNscx9eSkNWSA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW07'19
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
X-List-Received-Date: Wed, 13 Feb 2019 01:58:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex

On Wednesday, 13 February 2019 6:22:23 AM NZDT Alexander Kanavin wrote:
> On Tue, 12 Feb 2019 at 17:10, <sjolley.yp.pm@gmail.com> wrote:
> > The recipe reporting system integration with the layer index is available
> > at: https://layers.openembedded.org/rrs/recipes/OE-Core/2.7/M3/ and the
> > historical data has now been imported.
> 
> Sadly the new RRS still seems to be suffering from the 'outdated info'
> problem. For example glibc, or python3 recipes have been updated to
> latest versions, yet RRS still shows that they haven't been.

We're reliant upon the layer index updating and it appears that's not working 
at the moment. I have asked Michael to look into it. Thanks for the report, 
I'll reply back here when things are sorted out.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



