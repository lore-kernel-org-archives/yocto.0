Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF940E00C14; Tue,  2 Apr 2019 11:32:23 -0700 (PDT)
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
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD336E00A54
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 11:32:22 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id r4so17918291wrq.8
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 11:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=XTYQRKoLU/1nt5Je4g7q7lqzSD+cLyD3pv+JsGUTeUw=;
	b=SKDfSuSEyvMP1ue3Y1jk3fCx0VEG1881zZCnkZtDvzZ+fZjfCE9WVHis6VOt52kNXz
	mgXkUBREVpN+MT4WJ13BqpSEsjB+9rTFqt5SWzxo49iNdzUAu81fbssXRFod/mo2gyOf
	lfwsoe3LKqnRjaRyaMCEmRQ9O48JsIeMKTbNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=XTYQRKoLU/1nt5Je4g7q7lqzSD+cLyD3pv+JsGUTeUw=;
	b=kOmos47ILOHDaA6X1ZC2qkaXhPrMsYAxobce1lIb1JmS8bINCBXF7DOd92wrpfLGd4
	tx0Xs2HutC72eA8LrpkarFwcfUS7hQSJ1EiLH5oHPTT8V2K/VYWE6vlPWxC50elvilf6
	4Lv1XQGscpq+FHf2wt74ev5ZOiBuTei2uGVWSigK8MVNvJQtJMGFkYACQvFYZDufRgQJ
	dSdyf97Mre5tSxDr3DKHJjgDYIyQVV1IpUXXBSBFMoWsLQKrHlC9eY9RaZKg+lHHJEG0
	NiTl0c6VcTJ84U+hxg/5Kh35hrUj6QcyQbSHp1GDRUAcao2Bvzyio4MUiuFIQf4CygAn
	T9mQ==
X-Gm-Message-State: APjAAAVfpltQRB/PjTnvc4Lljnzg6PVG9VkHgd4woabrdwsrflVihtyi
	FFBOPklv9vO24HVAclUcQIStLQ==
X-Google-Smtp-Source: APXvYqwoIYtgQ9L+fdSEqTiqaWmOgSVrJM5kv59vwBN9YRSAJjIa1eTNV+LtihaWZMx75idbdWc7Nw==
X-Received: by 2002:a5d:4a8d:: with SMTP id o13mr44304545wrq.209.1554229941733;
	Tue, 02 Apr 2019 11:32:21 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	h2sm29277179wro.11.2019.04.02.11.32.20
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Apr 2019 11:32:20 -0700 (PDT)
Message-ID: <d84054a5c8e62229d80e25fab9429b9864605b5b.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, Ross Burton <ross.burton@intel.com>
Date: Tue, 02 Apr 2019 19:32:18 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DAF30D@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DAF30D@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>
Subject: Re: QA cycle report for 2.7 M3 RC1
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
X-List-Received-Date: Tue, 02 Apr 2019 18:32:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Sangeeta/Ee Peng,

On Tue, 2019-04-02 at 05:02 +0000, Jain, Sangeeta wrote:
> QA cycle report for 2.7 M3 RC1:
>  
> No high milestone defects. 
> This is completion of first QA cycle after adoption of new QA
> process. Test results are available at following location:
> ·        For results of all automated tests, please refer to results
> at public AB [1].
> ·        For other test results, refer to attachment [2].
> ·        For test report for test cases run by Intel and WR team,
> refer attachment [3]
> ·        For full test report, refer attachment [4]
> 2 new defects are found in this cycle, oe-selftest [5] and qemu-
> shutdown[6].
> Number of existing issues observed in this release is 3- toaster [7],
> Build-appliance [8] and Beaglebone [9]
> For ptest, 3 package tests are failing in this release which were
> passing in previous release: python [10], python3[11] and strace[12].
> 3 packages are facing timeout issues: lttng-tools [13], openssh [14]
> and python3 [15].

Thanks for this. I have some questions/observations.

Looking at the Intel/WR report, I see tests which start oeselftest_XXX
for sdk-extras and qemu-shutdown. I think this means you have some QA
test infrastructure running "oe-selftest -r runqemu,meta_ide",
iterating over MACHINE=qemuppc, qemumips, qemuarm, qemux86?

Is this some automation we're missing in the autobuilder configuration?
We all other tests covered and this is the only remaining automated
piece we haven't covered? What configuration are we missing exactly for
the missing tests?

I'm partly wondering how you found the shutdown issue but this would
explain that.

I think going forward we need to add some kind of "who" identifier to
the test results so we can say where/who they came from (main
autobuilder, Intel, WR, anywhere else). We could add a resulttool
command to "stamp" a set of test results with this, maybe as a
parameter to the store command?

Of the bugs, I didn't see any which I think should block M3, I think we
probably should release that and move forward to M4. I do want to see
some of these fixed before we build M4 though. I've made comments on
them below.
 
> New Bugs :
>  
> [5] Bug 13237 - [2.7 M3 RC1][OE-selftest][Opensuseleap 15.0][Public
> AB]:"test_wic_cp_ext" failing for Opensuseleap 15.0.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13237

Ross: Are you looking into that one?

> [6] Bug 13234 - [2.7 M3 RC1] qemumips & qemumips64: failed to
> shutdown
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13234

This needs looking into and fixing, as well as figuring out why the
autobuilder doesn't see this (see above for my hypothesis).

> Previous Bugs observed in this release:
>  
> [7] Bug 13191 – [Test Case 1439] Build Failure after adding or
> removing packages with and without dependencies
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13191
>  
> [8] Bug 12991 - [Bug] [2.6 M4 RC1][Build-Appliance] Bitbake build-
> appliance-image getting failed during building image due to webkitgtk
> package.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991

We need to do something about this. I believe its related to resource
starvation in the VM.

> [9] Bug 13153 – [2.7 M2 RC1] Systemtap doesn't work on beaglebone
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13153

I'm hoping a SRCREV bump for beaglebone-yocto fixes this.

> ptest Bugs:
>  
> [10] Bug 13249 - [2.7 M3 RC1] python ptest failure
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13249

I'm hoping a patch from Ross in master fixes this, need to retest ptest
with this applied.
 
> [11] Bug 13253 - [2.7 M3 RC1] python3 ptest failure
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13253

I'm hoping a patch from Ross in master fixes this, need to retest ptest
with this applied.

> [12] Bug 13254 - [2.7 M3 RC1] strace ptest failure
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13254

No ideas on this one yet.
 
> [13] Bug 13255 - [2.7 M3 rc1] lttng-tools ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13255

There are patches which are due to arrive soon which should address
this.

> [14] Bug 13256 - [2.7 M3 rc1] openssh ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13256

No ideas on this one yet.

> [15] Bug 13257 - [2.7 M3 rc1] python3 ptest facing timeout issue
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13257

I'm hoping a patch from Ross in master fixes this, need to retest ptest
with this applied.

Cheers,

Richard


