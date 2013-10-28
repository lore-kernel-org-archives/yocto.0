Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE77E011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:35:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2013 02:35:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="425845098"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.252])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2013 02:35:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Mon, 28 Oct 2013 09:35:50 +0000
Message-ID: <17076206.HsEGNRlfMJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAM1ZcoW7b8t-TFtUyZb=-PWDJNTPxbJuKA4CKBqc1izh+P7GUw@mail.gmail.com>
References: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
	<1700191.EdxHocCYrr@helios>
	<CAM1ZcoW7b8t-TFtUyZb=-PWDJNTPxbJuKA4CKBqc1izh+P7GUw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetch from perforce
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
X-List-Received-Date: Mon, 28 Oct 2013 09:35:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Katu,

On Thursday 24 October 2013 10:09:50 Katu Txakur wrote:
> it took me longer than I thought because I couldn't find any documentation
> or comments in the code, but I finally got this working. The sintax to call
> it was, (there are actually 2 options, I took this one because I don't need
> user/passwd):
> 
> 
> P4PORT = "yourhost:yourportnumber"

Is this not able to be specified in the SRC_URI?

> FETCHCOMMAND_p4 = "p4"

We should really get a default value for FETCHCOMMAND_p4 defined in OE-Core 
(and perhaps also the default bitbake.conf bundled with bitbake itself).
 
> SRC_URI = " \
> p4://depot/myproject...;module=destinationfolderInWORKDIR/destinationsubfold
> er;changeslist=9952 \
> "
> 
> I used the perforce.py in the latest yocto distribution, 1.5-dora. The
> subfolders where being renamed wrongly, deleting the first 3 characters. I
> solved it using this patch:
> 
> diff --git poky/bitbake/lib/bb/fetch2/perforce.py_dora
> poky/bitbake/lib/bb/fetch2/perforce.py
> index fc4074d..d2ecccc 100644
> --- poky/bitbake/lib/bb/fetch2/perforce.py_dora
> +++ poky/bitbake/lib/bb/fetch2/perforce.py
> @@ -112,7 +112,7 @@ class Perforce(FetchMethod):
>          base = path
>          which = path.find('/...')
>          if which != -1:
> -            base = path[:which]
> +            base = path[:which-1]
> 
>          base = self._strip_leading_slashes(base)
> 
> I hope this helps to anyone trying to use this.

I see you've opened up a bug for this, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

