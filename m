Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67255E0095D; Tue, 10 Feb 2015 03:47:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CA1E00949
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 03:47:38 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Feb 2015 03:47:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,549,1418112000"; d="scan'208";a="664230487"
Received: from mjbowe-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.120])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2015 03:47:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Date: Tue, 10 Feb 2015 11:47:36 +0000
Message-ID: <2538442.Kq68S1fAHq@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A34CACD@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A34CACD@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error while trying to read environment variable from a recipe file
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
X-List-Received-Date: Tue, 10 Feb 2015 11:47:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 February 2015 10:24:45 Bipnesh, Abhinav wrote:
> Hi All,
> 
> I was trying to read some of the environment variables from a recipe file
> using below python code
> 
> PACKAGES = "{TEST_PACKAGE}"

Problem #1 - if you are attempting to refer to the value of the
TEST_PACKAGE variable, you need ${TEST_PACKAGE} not {TEST_PACKAGE}.

> python __anonymous () {
>     packages = []
>     buildScriptVersion = os.environ['MajorVersion'] + "." +
> os.environ['MinorVersion'] buildID = os.environ['BuildID']
>     buildOffSet = os.environ['BuildOffsetNum']
>     buildNum = int(buildID) - int(buildOffSet)
>     if buildNum <= 0:
>         buildNum = 1
>     Num = os.environ['Num']
>     version = buildScriptVersion + "." + sprintNum + "." + str(buildNum)
>     packageName = "test-" + version
>     d.setVar("TEST_PACKAGE", " ".join(packages))
> }
> 
> But while running I am getting below error
> 
> 0001:def __anon_29__test_bb(d):
>      0002:    packages = []
> *** 0003:    buildScriptVersion = os.environ['MajorVersion'] + "." +
> os.environ['MinorVersion'] 0004:    buildID = os.environ['BuildID']
>      0005:    buildOffSet = os.environ['BuildOffsetNum']
>      0006:    buildNum = int(buildID) - int(buildOffSet)
>      0007:    if buildNum <= 0:
> File: '/usr/lib64/python2.7/UserDict.py', lineno: 23, function: __getitem__
>      0019:        if key in self.data:
>      0020:            return self.data[key]
>      0021:        if hasattr(self.__class__, "__missing__"):
>      0022:            return self.__class__.__missing__(self, key)
> *** 0023:        raise KeyError(key)
>      0024:    def __setitem__(self, key, item): self.data[key] = item
>      0025:    def __delitem__(self, key): del self.data[key]
>      0026:    def clear(self): self.data.clear()
>      0027:    def copy(self):
> Exception: KeyError: 'MajorVersion'
> 
> So any thoughts to fix this issue. As we need to have a package name with
> such variable which will be set in the environment at run time.

The environment available within the build is sanitised, only certain
variables are allowed through by default. There are a couple of alternatives
for working around this - whitelist the variable through, or access it via
BB_ORIGENV:

http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#passing-information-into-the-build-task-environment

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

