Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0E3CE00DD7; Tue, 20 Feb 2018 18:51:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78460E00DA9
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 18:51:48 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Feb 2018 18:51:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,542,1511856000"; d="scan'208";a="19131976"
Received: from yyeensan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.164.243])
	by orsmga007.jf.intel.com with ESMTP; 20 Feb 2018 18:51:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 21 Feb 2018 15:51:42 +1300
Message-ID: <6607842.Grd7vgFIgl@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
References: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Small documentation issue
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
X-List-Received-Date: Wed, 21 Feb 2018 02:51:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Zoran,

On Tuesday, 20 February 2018 7:33:22 PM NZDT Zoran Stojsavljevic wrote:
> Just to point to the documentation issue on YOCTO Projects wiki page:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password
> 
> This line:
> inherit extrausers
> 
> Should be changed as:
> INHERIT += "extrausers"
> 
> To be inline with bitbake syntax. It is somehow confusing.

I've now fixed the page - basically that only applies if you are setting it
in your configuration, the example was for an image recipe (although it
did not state as such, it does now).

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



