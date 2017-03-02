Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F17DE00924; Thu,  2 Mar 2017 07:47:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C509CE0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 07:47:33 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Mar 2017 07:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,231,1484035200"; d="scan'208";a="63613881"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga004.jf.intel.com with ESMTP; 02 Mar 2017 07:47:32 -0800
Message-ID: <1488469685.28256.36.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Thu, 02 Mar 2017 09:48:05 -0600
In-Reply-To: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 15:47:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-02 at 19:56 +0530, SatyaNarayana Sampangi wrote:
> Hi Paul,
> 
> 
> I am not finding the devtool script under the 
> /${HOME}/yocto/poky/scripts, so I copied that script from the website
> and changed the permissions.
> 
> 
> I did sourcing also,
> 
> 
when you said 'sourcing' you mean you prepare the environment with the
oe-init-build-env? Looks to me that you are missing this step.


> but when I run the script, I am getting
> 
> 
> 
> 
> devtool
> Traceback (most recent call last):
>   File "/home/satya/yoctoBSP/poky/scripts/devtool", line 38, in
> <module>
>     from devtool import DevtoolError, setup_tinfoil
> ImportError: No module named 'devtool'
> 
> 
> Can you pls help me here. whereI am going wrong.
> 
> 
> Thanks in Advance,
> 
> 
> Regards,
> Satya
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



