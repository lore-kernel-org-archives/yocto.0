Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2683CE0105A; Wed, 24 Aug 2016 03:51:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E781AE01055
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 03:51:35 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP; 24 Aug 2016 03:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,570,1464678000"; 
   d="scan'208";a="1075012"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2016 03:51:35 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.68])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 612B36A4080;
	Wed, 24 Aug 2016 03:51:16 -0700 (PDT)
Date: Wed, 24 Aug 2016 13:51:26 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Michael Habibi <mikehabibi@gmail.com>
Message-ID: <20160824105126.GA17259@linux.intel.com>
References: <CAOsp8o8jNrRhcYp=vWAve+v+s1Mi2ApQD1zmVot-iD+0uVnbjg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOsp8o8jNrRhcYp=vWAve+v+s1Mi2ApQD1zmVot-iD+0uVnbjg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Trying to run toaster off master, running into issues w/ django
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2016 10:51:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 23, 2016 at 04:49:42PM -0500, Michael Habibi wrote:
> I am running the master branch and trying to run toaster to play
> around with the web interface (already successfully completed a build
> w/o toaster setup).
> 
> I followed the instructions in the documentation. I created a
> virtualenv, sourced/activated my virtualenv, and while under venv I
> did a pip install. It believes Django is installed, but I cannot run
> toaster. See below:
> 
> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ pip install -r
> /projects/yocto-git/bitbake/toaster-requirements.txt
> Requirement already satisfied (use --upgrade to upgrade):
> Django>1.8,<1.9 in /home/habibim/venv/lib/python2.7/site-packages
> (from -r /projects/yocto-git/bitbake/toaster-requirements.txt (line
> 1))
> Requirement already satisfied (use --upgrade to upgrade):
> beautifulsoup4>=4.4.0 in
> /home/habibim/venv/lib/python2.7/site-packages (from -r
> /projects/yocto-git/bitbake/toaster-requirements.txt (line 2))
> Requirement already satisfied (use --upgrade to upgrade): pytz in
> /home/habibim/venv/lib/python2.7/site-packages (from -r
> /projects/yocto-git/bitbake/toaster-requirements.txt (line 3))
> Cleaning up...
> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ python --version
> Python 2.7.6
> 
> ...
> 
> 
> (venv)habibim@bvm-poc8:/projects/yocto-git$ source oe-init-build-env
> 
> ### Shell environment set up for builds. ###
> 
> You can now run 'bitbake <target>'
> 
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchain
>     meta-ide-support
> 
> You can also run generated qemu images with a command like 'runqemu qemux86'
> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ source ../bitbake/bin/toaster
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
> ImportError: No module named 'django'
> This program needs Django>1.8,<1.9
> Please install with pip install -r
> /projects/yocto-git/bitbake/toaster-requirements.txt
> 
> Am I going insane? I did some google-fu and people recommended
> cleaning up manage.py, but those changes did not seem to affect this
> outcome.

Looks like python3 issue to me. You should install requirements with
pip3 for python3 to be able to import them.

You probably used old setup instructions. Please, read the latest manual here:
http://www.yoctoproject.org/docs/latest/toaster-manual/toaster-manual.html#toaster-manual-setup-and-use

Regards,
Ed


