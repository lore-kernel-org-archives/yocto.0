Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65187E00A84; Fri, 12 Apr 2019 03:58:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B4C6E0097C
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 03:58:00 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id k11so11374347wro.5
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 03:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=T98nrEt00gbtKHCyqL7qOBH2EFSif47dvNuCF3AFokU=;
	b=NicfQ1K/Rbs/7aeWQiXgsf2FB9PAC1s1SYmJaUISYahqInHhCb7UsO0PySemS5AGQz
	R3NZYHnlPNvgpgl0pRHEJ+BVqO7VIO3gFqSclxzQd8Jc9hPRGrgDNuZDFjGI6YHPm35B
	CdanDFmT9mJgGhiH+uGiK0q2/YRIUi0X7iNz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=T98nrEt00gbtKHCyqL7qOBH2EFSif47dvNuCF3AFokU=;
	b=eWgG2J3j66ekYsHbhHXR5QItUl+vMHra9SYRHC8f0YIOj4uiugRTZdM0IRMs2IRw31
	YQpEMrS7iUnj2TUslzXYLsg2o2xEi2ffoVcw6IQ6dxOByayEgIXwHKkubcifRrpt53nd
	i4SiBlokY63728wSQpV2RGS8LdVPfK0945ravMzlKiwQpV411P28OaLQ2JbFgRajUv66
	NrzNubXWt750uRBolg/0zM4n//Wwq8br1ksF1TsyH7czbz6Hw0DacXJ9HOW7B3lwOARn
	YJ079K0EjWRRU1NGsB2ND4S0uDIpLNVKOYPySDVYjSiv7n2pkqDcUh+KzypaXYW+krt/
	U3ag==
X-Gm-Message-State: APjAAAXinfC9j/X7uFH5J+ZOJb2AYCbEGeWmP99fBVGbcl/p+oh8mo+t
	nO9pXjJ4B0xG8lnHbjsle+HCIA==
X-Google-Smtp-Source: APXvYqzEqP9XwEpn+gV5/ShpjKNm2u2vHkBWhrx//7njIYJk8iI9DgpqCBPNlLJ6VT3AJxGFgoFcow==
X-Received: by 2002:adf:e84b:: with SMTP id d11mr33710750wrn.289.1555066680096;
	Fri, 12 Apr 2019 03:58:00 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t76sm12182213wmt.8.2019.04.12.03.57.58
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 12 Apr 2019 03:57:59 -0700 (PDT)
Message-ID: <d996f4fc461a2def10b9af6704b9153642d3f409.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>,
	"openembedded-core-request@lists.openembedded.org"
	<openembedded-core-request@lists.openembedded.org>
Date: Fri, 12 Apr 2019 11:57:57 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.6.2 RC3
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
X-List-Received-Date: Fri, 12 Apr 2019 10:58:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2019-04-10 at 02:38 +0000, Jain, Sangeeta wrote:
>  
> QA cycle report for 2.6.2 RC3:
>  
> No high milestone defects. 
> Test results are available at following location:
> ·        For results of all automated tests, refer to results at
> public AB [1].
> ·        For other test results, refer to attachment [2].
> ·        For test report for test cases run by Intel and WR team,
> refer attachment [3]
> ·        For full test report, refer attachment [4]
> ·        For ptest results, please refer to results at public AB [5]
> ·        For ptest report, refer to attachment [6]
> 1 new defects are found in this cycle, Beaglebone [7].
> QA hint:  Similar issue for sysemtap failure (bug 13153) was found in
> 2.7 M2 RC1 which is now resolved for master.
> Number of existing issues observed in this release is 3- toaster [8],
> Build-appliance [9] and qemu-shutdown [10]
> For ptest, regression data is not available for this release. 3
> packages are facing timeout issues: lttng-tools [11], openssh [12]
> and strace [13].
> Test result report on Public AB shows following failures:
> buildgalculator.GalculatorTest.test_galculator
> QA Comment: Expected failure for hw limitation
> python.PythonTest.test_python3
> QA Comment: Failure due to “python3” test case not backported to
> Thud. No bug filed as not real Yocto failure.

Thanks for running QA on this. Firstly, I can comment on the bugs:
 
> [7] Bug 13273 - [2.6.2 RC3] Systemtap doesn't work on beaglebone
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273

We've root caused this on master and believe we know how to fix this,
its a kernel makefile configuration issue. We can likely document this
as a known issue and fix in 2.6.3.
 
> Previous Bugs observed in this release:
>  
> [8] Bug 13191 – [Test Case 1439] Build Failure after adding or
> removing packages with and without dependencies
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13191
>  
> [9] Bug 12991 - [Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-
> appliance-image getting failed during building image due to webkitgtk
> package.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991

This is a long running issue we've been "ignoring", its likely resource
issues on the machine/VM running the test.

> [10] Bug 13234 - [2.7 M3 RC1] qemumips & qemumips64: failed to
> shutdown
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13234

This is an issue root caused to be from 4.19 and 5.0 kernels. I thought
2.6.2 had a 4.18 kernel so shouldn't have this issue? The bug wasn't
reopened?
 
> ptest Bugs:
>  
> [11] Bug 13255 - [2.7 M3 rc1] lttng-tools ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13255
>  
> [12] Bug 13256 - [2.7 M3 rc1] openssh ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13256
>  
> [13] Bug 13274 - [2.6.2 RC3] strace ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13274

ptest has been a bit tricky and we've been actively working these bugs
on master. Once we have them resolved there we can backport to older
releases.

There is one other critical issue we have with 2.6.2 which is the
revert of the boost upgrade. I'm very reluctant to release without that
revert as it caused problems for a lot of people.

I'm wondering whether we should rebuild 2.6.2 one commit later and then
release that assuming it passes a rerun of the automated QA (but not
the manual QA). Opinions on that?

I'd propose fixing the systemtap and ptest issues for 2.6.3.

Cheers,

Richard




