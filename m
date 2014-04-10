Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E577E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 03:14:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2014 03:09:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,833,1389772800"; d="scan'208";a="490667560"
Received: from pbrannig-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.73])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2014 03:14:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Apr 2014 11:14:37 +0100
Message-ID: <1545986.M2ZRmN0uFt@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CABcZAN=yHZOkzXZf0tkVSumV370y9HLAp2H3rcDtO2dV8F5WHA@mail.gmail.com>
References: <CF6AE2C6.41DF5%belen.barros.pena@intel.com>
	<CA+gsK-qsb+UVcKsuE_NMAw_dVD-LkdkgOwayBHLPdM3QPPt2Bw@mail.gmail.com>
	<CABcZAN=yHZOkzXZf0tkVSumV370y9HLAp2H3rcDtO2dV8F5WHA@mail.gmail.com>
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>
Subject: Re: Dogfooding and usability testing Toaster
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
X-List-Received-Date: Thu, 10 Apr 2014 10:14:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 09 April 2014 16:39:38 Chris Larson wrote:
> On Wed, Apr 9, 2014 at 4:33 PM, Rudolf Streif 
<rudolf.streif@linux.com>wrote:
> > That is exciting. I just ran with it and started a build with toaster in
> > 
> > the background. A couple of observations from the get-go:
> >    - South 0.8.4 is also needed in addition to Django. The Toaster Wiki
> >    [1] does not say that but the Contribute to Toaster page [2] does.
> >    - You need to run 'sudo pip install ...' for Django and South
> >    otherwise the installation fails with 'permission denied' for
> >    /usr/lib/python2.7
> >    - Clicking on "Show me the manual" in the Toaster UI directs to [3]
> >    which requires a log in
> >    - Is it possible to relocate/rename the toaster.sqlite database via
> >    configuration setting? If so, could I use the same database for
> >    different
> >    build environments?
> 
> Side note: you can use pip install --user ... rather than sudo pip, to
> install it to your user site-packages directory under ~/.local, which won't
> impact the rest of the system.

I'd like to see this documented using virtualenv [1] to install the additional 
packages - it's so much cleaner than any other solution.

Cheers,
Paul

[1] For those who aren't familiar with virtualenv:
http://simononsoftware.com/virtualenv-tutorial/

-- 

Paul Eggleton
Intel Open Source Technology Centre

