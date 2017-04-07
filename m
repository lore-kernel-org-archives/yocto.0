Return-Path: <matthew1phillips@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED4E9E00A0A; Fri,  7 Apr 2017 00:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matthew1phillips[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71FD3E00972
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 00:39:06 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id r203so77322642oib.3
	for <yocto@yoctoproject.org>; Fri, 07 Apr 2017 00:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ru6E+lbFiE6L9ou1LfZPX4NLUQjpxD2eLPq9w6TI2lM=;
	b=R0xr5qiSNYCM6UjuNlPjd5xX2/W9ZYaQG8JvvMgwevU/we502VURT5fu6L0TujJiGg
	NdgOQbQkU4XDxv+dh61DkcosNxZVrWjFrrSgGdRLMtwrHIjnlj9J/4dDivqKjJP57Mvq
	WQZicj6qJ3t4yP1yZ+bxuUyB3nmNnQfwbvSdsgzNCsNrPzC30KOJAT9H+I0okb78OEnt
	J6ftFUDypyuiJUGDvxHLkIdaMssUpWoapkrN64b9cn9H7RC9lYnGfCieKIR/RbVkADcR
	dAj7ImPInRwBTFqObByvbyr6MaolbTRskBWHOnCdtGvtRGaxwFGeBYY5IfTr/hqgNWMM
	+TXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ru6E+lbFiE6L9ou1LfZPX4NLUQjpxD2eLPq9w6TI2lM=;
	b=lzcMNkWlP/yHyQysRJG42aOZQi/7LZMhB4oNIRmINtJqZ2RABXCAUZV67UzcnpL75D
	Hmc9m/T4sNVb1LcajJXSDqlhNuSOomjqfI400GDr5sn9jtYIV8CHUalSSnedW2QRsuzO
	aFyiZ3vJ+sgUjgPOKMA4jOqdarI1ysgRg01J4HtPO1Its3yVJrSs1aELVEsKMpilMAof
	iS5FBbNYZbeCxPkiprlRkrYVwYI3E/MOAEpUPKodP2dL09lB34pG1J0oVaP7Q0uVodNN
	wuqEZ1ahhyXwzxrher+kHQkrOywOf/0k8tb6qWo5ecDLn9rqxYIYE3xqcqbofI5c1AoH
	RKoA==
X-Gm-Message-State: AFeK/H3p4NbG0WuRSr4LLaoJRTI/HPcDnN348r0pBzHTWS0sNFMpskcTi6uhkg2uBszN+mkOrsw52RHCgkNyvg==
X-Received: by 10.157.35.230 with SMTP id t93mr19773962otb.17.1491550745864;
	Fri, 07 Apr 2017 00:39:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.26.124 with HTTP; Fri, 7 Apr 2017 00:38:45 -0700 (PDT)
In-Reply-To: <1491489030.31049.11.camel@linux.intel.com>
References: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
	<1491489030.31049.11.camel@linux.intel.com>
From: Matthew Phillips <matthew1phillips@gmail.com>
Date: Fri, 7 Apr 2017 00:38:45 -0700
Message-ID: <CAHrosF9GEX9CTWTKFkuHXqS2jrZHMWKU6WKNTg1WWfcJee69Og@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Local repo no network help request
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
X-List-Received-Date: Fri, 07 Apr 2017 07:39:10 -0000
Content-Type: text/plain; charset=UTF-8

I used an alternative pathname that eliminated the "/../", however it
still failed. The debug messages show that it is able to find the
local repo, but it seems to be trying to access HEAD regardless.

I have also tried a couple of the additional flags that I can set for
SRC_URI (ex. nobranch, usehead, etc.). Sadly, no option is available
to limite remote fetch operations.

1) Should I locally (in the .bb file) override do_fetch?

2) I also tried running git archive [...] on the local repo, and
pointing to the tgz file as such:

SRC_URI = "file://${TOPDIR}/my-repo.tgz

However this too failed. Or, I don't think it failed in the do_fetch
step, but it later failed during the build. (I saved the error
messages, but I don't have them atm). Please advise...what am I doing
incorrectly?

Thank you,
M

On Thu, Apr 6, 2017 at 7:30 AM, Leonardo Sandoval
<leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
>> Hi all,
>>
>> I am trying to do the following:
>>
>> I have a local git repo, pulled manually from a remote repo (via a script).
>> I have a .bb file set up referencing this repo. This .bb file includes
>> (among other things):
>>
>> >> SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
>> >> SRCREV = "${AUTOREV}"
>>
>
> did you get the same result if you hard-coded the pathname?
>
>
>
>
>> I do not want to use the network (so BB_NO_NETWORK is 1).
>>
>> Although the SRC_URI is pointing to the correct path, the yocto build
>> fails because it tries to access the network.
>>
>> How should I be doing this instead?
>>
>> I can run a script (preferably bash atm) before the build if doing
>> something pre-build will help simplify anything.
>>
>> Thank you,
>> M
>
>

