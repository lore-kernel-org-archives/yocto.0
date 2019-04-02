Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0318AE00BC8; Tue,  2 Apr 2019 13:17:44 -0700 (PDT)
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
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0910CE00994
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 13:17:42 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id k17so18248752wrx.10
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 13:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=Id2OTy7yBHRIHKycNh//5bzixYVvkhwuECRKZNu8TjU=;
	b=NiAiLWfMOgdCK6s5Y/0STM1pl3WVoaV4vAKOSiVzzwgNi7IsbLW06nM/5TohEFzCGx
	Yn7oaPzs+xcP2MAQVDQDirDaMSvF/0s8Bko598B/FgMeb4lMu2+yYLOZq2zzhCL8tE65
	xwP2TA/mWh8ZGd51H8qqYJqAE6PL3c6/evrt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=Id2OTy7yBHRIHKycNh//5bzixYVvkhwuECRKZNu8TjU=;
	b=EPG1fE77FfqJd6QAmdsJffwAg28YsD4d0yBm8ojU7Bnqbp1wfCP8Nb8TtUTvtHengL
	45lBbI7ysgQyz2yIdCar4TJrfyhoCo/EBpVaEHI+JUhZIN1qVfWJk+kkgw8Z7uebjaNQ
	XKDJz483tu4YoIF8hNHqgdXW7u/Af5ikIT9n+nLkIRtPcze2LJ6hhmBrTrWRk6BOypFx
	hk/gLK8wVlIORuhEP2ZJsweuBTykQAKxzecGP1XPvJ5EBB3c9LB5BqQuiNdOgNkoSd/i
	67/XEP2uvorlwHAPYwcvzyw/80Jq0RnNzlV/H/pZV2hVzCDdwnaJ2VVtwtPBQB77Cq7i
	loAw==
X-Gm-Message-State: APjAAAXznUDyrWrLGxaSSLfKmgg/o2wnFFn73ZKPnapzsORGiBTroXid
	YYYSOonsPDh1TPnV7UW54jZ/BA==
X-Google-Smtp-Source: APXvYqxKu59I5abo5jpBOVMGmFvcrs8OTKezgiuhVORHgv3h5WXvUBubSTs53xGdLDzcPwnWu9kWwA==
X-Received: by 2002:adf:f68d:: with SMTP id v13mr50168152wrp.6.1554236262033; 
	Tue, 02 Apr 2019 13:17:42 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c20sm23996502wre.28.2019.04.02.13.17.40
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Apr 2019 13:17:41 -0700 (PDT)
Message-ID: <849529a7b47d2ec9cf919089074cf4c5661bdd2b.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>
Date: Tue, 02 Apr 2019 21:17:39 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D043481A33CC@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D043481A33CC@PGSMSX109.gar.corp.intel.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: Proposed new QA process
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
X-List-Received-Date: Tue, 02 Apr 2019 20:17:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

This is a good start. I've filled out some details below and had some
questions.

On Tue, 2019-04-02 at 03:28 +0000, Yeoh, Ee Peng wrote:
> Given the new QA tooling (resulttool) available to manage QA test
> results and reporting, here was the proposed new QA process.
>  
> The new QA process consists below:
> ·       Test Trigger
> ·       Test Planning
> ·       Test Execution
> ·       Test Result Store
> ·       Test Monitoring & Reporting
> ·       Release Decision
>  
> Test Trigger: Each QA team will subscribe to QA notification email
> (request through Richard Purdie).

The list of notifications is maintained on config.json in the yocto-
autobuilder-helper which has a branch per release.
 
> Test Planning: The lead QA team no longer need to setup Testopia and
> wiki page.  Each QA team (eg. intel, windriver, etc) will perform
> planning on what extra tests they plan to run and when they'll send
> the results back, then send these planning information as acknowledge
> email to QA stakeholders (eg. Richard Purdie, Stephen Jolley) and the
> lead QA team.  Each QA team can refer to OEQA for automated and
> manual test cases for their planning.

What form will these notifications take? Is there a time limit for when
they'll be received after a QA notification email? Can we agree to
include an estimate of execution time in this notification?

> Test Execution: Each QA team will execute the planned extra tests. To
> make sure test result from the test execution could fully integrated
> to the new QA tooling (resulttool for test result management and
> reporting/regression), execute OEQA automated tests and OEQA manual
> tests through resulttool (refer 
> https://wiki.yoctoproject.org/wiki/Resulttool#manualexecution).
>  
> Test Result Store: Each QA team will store test result to the remote
> yocto-testresults git repository using resulttool (refer 
> https://wiki.yoctoproject.org/wiki/Resulttool#store), then send the
> QA completion email (include new defects information) to both QA
> stakeholder and the lead QA team.  Each QA team will request write
> access to remote yocto-testresults git repository (request through
> Richard Purdie).

Ultimately, yes but I want to have things working before we have
multiple people pushing things there. Need to document the commands
used here to add the results too.

Do we need to add something to the results to indicate which results
are from "who"? (i.e. from the public autobuilder, Intel QA, WR QA, any
other sources?). We may want to add something such as a parameter to
the resulttool store command so we can add this info to results?
 
> Test Monitoring & Reporting: QA stakeholder will monitor testing
> progress from remote yocto-testresults git repository using
> resulttool (refer 
> https://wiki.yoctoproject.org/wiki/Resulttool#report).  Once every QA
> team completed the test execution, the lead QA team will create QA
> test report and regression using resulttool. Send email report to QA
> stakeholder and public yocto mailing list.

We should document the command to do this. I'm also wondering where the
list of stakeholders would be maintained?

Is Intel volunteering to help with this role for the time being or does
someone else need to start doing this.

A key thing we need to document here is that someone, somewhere in this
process needs to:

a) Open a bug for each unique QA test failure
b) List the bugs found in the QA report
c) Notice any ptest timeouts and file bugs for those too

> Release Decision: QA stakeholder will make the final decision for
> release.

The release decision will ultimately be made by the Yocto Project TSC
who will review the responses to the QA report (including suggestions
from QA) and make a go/nogo decision on that information (exact process
to be agreed by the TSC).

Cheers,

Richard



