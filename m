Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B16C9E00A84; Tue, 23 Apr 2019 07:35:34 -0700 (PDT)
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
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B9D3E0043B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 07:35:33 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id y197so385124wmd.0
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 07:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=VBrRHoUmTJiLfmMq+XBAzM50sCLuOXh9MGKhJahiMyQ=;
	b=d0Bz/HKxfxiKpnCKl+W6qR0F4Pw6Y4FrzMzKKTbsSntA196KSw/AORWfSQus6Ig/aY
	7EfzvuYBXJJejPbxZpxQj/hMhYzHrBDt2v89dQQKSfXv4uJc1zh/LDgTCt63pzRq+pqY
	A1+MOH26Eh4xStjZ4AadgmWzMmPWj3nHaJFfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=VBrRHoUmTJiLfmMq+XBAzM50sCLuOXh9MGKhJahiMyQ=;
	b=i3KLMofdUQ1lVFhgFSbK4vsXnC+yjWhrUny2nCczXuBzgeJCyt8Q/EtJri7HfHGY1b
	2iXS0j3MpjCghU51uBfRi2Vih1joIcI+6y8EfKaw+zGSFSweZ5xLziOdNMcZ3eXi4V/b
	ewnhAL9f2lNTaDrXbPpqim0agvtrPZL4S12EXWEgRBc8KWKIq12sbisR+kvfN8zBVu1a
	gW5TwuUJbWvmg2wjPzVPn9QAbaA2f+3stjjWJz5hiWq2CK+e5fbEyFi+wpUJ6KplzvtL
	CCAR9Jyn5+9kBQvmgceMZSwQG6wce7Z8q3S6vgV4Uub3+iNR0BBorJjQDg2W1HwQ5CQL
	AjiQ==
X-Gm-Message-State: APjAAAV1GT5qzqc+/T5/Ko7OlUTOqeO5DWyRsRL9mIynlF5YeBUDlq7U
	DwEBOPfw0nHii1rH88gyxpQg3g==
X-Google-Smtp-Source: APXvYqxMBarcJ4SU90l+/TTV74Xm0Gy4BmQra2LdkrYNPP7e8gVfqSCP6pSgQr4gfiHLzKa+olPACA==
X-Received: by 2002:a1c:a803:: with SMTP id r3mr2720248wme.78.1556030132636;
	Tue, 23 Apr 2019 07:35:32 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o4sm20080719wmo.20.2019.04.23.07.35.31
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 23 Apr 2019 07:35:31 -0700 (PDT)
Message-ID: <24835a616c9ec53fba5e4424f12b72f9e0f8d94d.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>, "'openembedded-core@lists.openembedded.org'"
	<openembedded-core@lists.openembedded.org>
Date: Tue, 23 Apr 2019 15:35:30 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DD6D05@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DD6D05@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.5.3 RC3
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
X-List-Received-Date: Tue, 23 Apr 2019 14:35:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2019-04-18 at 04:58 +0000, Jain, Sangeeta wrote:
>  
> QA cycle report for 2.5.3 RC3:
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
> No new defects are found in this cycle.
> Number of existing issues observed in this release is 2- toaster [7]
> and Build-appliance [8]
> For ptest, regression data is not available for this release. No
> timeout issues.
> Test result report on Public AB shows no failures.

I've been discussing with Tracy and Vineela how to best handle the test
results for the release for 2.5.3. In the end I:

a) Copied in the ptest results to the right place. This will happen
automagically in all future builds:

https://autobuilder.yocto.io/pub/releases/yocto-2.5.3/testresults/qemux86-64-ptest/

b) Copied in the intel test results to their own directory:

https://autobuilder.yocto.io/pub/releases/yocto-2.5.3/testresults-intel/

c) Manually generated an updated test report for the combined results
with the commands:

$ cd /srv/autobuilder/autobuilder.yoctoproject.org/pub/releases/yocto-
2.5.3
$resulttool report . > testreport.txt

d) Added a header to the report which consisted of the report from QA
with details of the bugs etc.

This means we have a top level testreport file which contains all the
test information about the release.

I'd like to make this the standard procedure for release. The release
notes and announcement can refer to the test report included with the
release and the test results as its there all together.

Ultimately I'd like to improve the formatting of the report (separate
out ptest regressions from the other regressions, maybe html, maybe
graphs, better regression information) but that is something for the
future.

Does that work for everyone?

Cheers,

Richard



