Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 325FEE0091D; Fri, 15 Sep 2017 13:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3719CE007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:06:19 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id j16so2106344pga.1
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=7StUDU5kkU7QTXojv4win+owf+RRm+wj6m1QEXGU1m8=;
	b=W9Bd7nqAHa8dbP1J0KEWYTEYBeyNr3/l0wK/o5m4nWT9zp5LG7kyQlyb0GBHiAzpVr
	eAIQ++qc445bhip9x2Zw8f7j/rEdCoBJkk+ZbbcrsnkC1Z1Vl5c8wCoXAMLsUKCKbF8p
	B0f6SpRkO1jfmOWnCPp4VkOpnleqtEM7nkhUpeVx/g9cU22o9ePfgzuG0NdMFfsHRh2c
	vUOPgK8UkMqDApey5ISTTB39YGjbLdI0WNNr2GavtDS3WTT54PJroLtYd1sP7h3hlQNF
	a5yXYQ3jerEJwjYBbZX7AzRLp1YGq/ZvpwpGRwqErzLQO/w8Yg0njMWXoKlde+S2Vy30
	AIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7StUDU5kkU7QTXojv4win+owf+RRm+wj6m1QEXGU1m8=;
	b=onStLoe41ky3Tvbz5y5i18G/fwu1ZHsn0dAx5xyaNL4XTSvqXYtxzxLcMBVmyPO2OI
	0L77AzuzfSrTY9YBbmdypSk2lUloeQCcE6IxYY09jdRwngN2gHrq+06QOgXgIN/d2Td9
	rl/98Rw4V9zoZFjRaSBF7DqM8k4hqmf0P0h07Nt0BizCAe7K2u6Hw5tjneDVeNe8cGxI
	GH854Sv2xCaI0rTh63dhvwWivCQLqMKrbYPci8M05UQYvBtf1RbwMZqp7KbhZvN/cNDS
	kTNS4Pxz8q6M4L8v9WHj3I0LFX6yWeiyFLC8qGnqL8yD7KwQIAhIorYsgiR5A8zIINzS
	0kHQ==
X-Gm-Message-State: AHPjjUhVxt9xMKltC3hp49EVmD1njK3VRnqaaFT6aHSVkbPUNxBvyF/Q
	WqmlMDJuiCXcZg==
X-Google-Smtp-Source: ADKCNb77xv1oHQVCycapdfXV+NWZObr4C6uXeoErnM25VeNp1qRzVepbaAzxLsgH4ud6neAZ8zIc3Q==
X-Received: by 10.84.129.226 with SMTP id b89mr28499793plb.84.1505505978987;
	Fri, 15 Sep 2017 13:06:18 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:8059:611f:1111:1f0c?
	([2601:202:4001:9ea0:8059:611f:1111:1f0c])
	by smtp.gmail.com with ESMTPSA id k10sm2866140pgq.5.2017.09.15.13.06.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Sep 2017 13:06:18 -0700 (PDT)
To: "Bystricky, Juro" <juro.bystricky@intel.com>,
	"Cruz, Libertad" <libertad.cruz@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Zhang, Jessica" <jessica.zhang@intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
	<1505494250.18640.102.camel@linuxfoundation.org>
	<6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>
	<58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
	<6E51916E4A1F32428260031F4C7CD2B611A1589E@ORSMSX112.amr.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <83da2460-220f-77dd-3f0e-d661230d0445@gmail.com>
Date: Fri, 15 Sep 2017 13:06:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B611A1589E@ORSMSX112.amr.corp.intel.com>
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: Re: QA cycle report for 2.2.2 rc2
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
X-List-Received-Date: Fri, 15 Sep 2017 20:06:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 09/15/2017 01:01 PM, Bystricky, Juro wrote:
> The commit is for 2.4 M3 (5f6945f5031e1a4ca116cc1eccf4c2f9dc228547)
> 2.4 does contain the ptests for gzip, slang and flex. (Although there are some other mysteries, like sed-ptest is missing)
> It would seem that 2.2 had never contained (or lost a while ago) those ptests.
Thanks for looking into this. Is there any action I need to follow up on?

- armin
>
> Juro
> ________________________________________
> From: Cruz, Libertad
> Sent: Friday, September 15, 2017 12:50 PM
> To: Bystricky, Juro; Richard Purdie; yocto@yoctoproject.org; Jolley, Stephen K; Zhang, Jessica
> Cc: Perez Carranza, Jose; Cruz Alcaraz, Juan M; Jordan, Robin L
> Subject: RE: QA cycle report for 2.2.2 rc2
>
> Hello,
>
>
> Regarding 12080: this was a QA documentation error on the test steps, verified it again and changed the bug to not a bug, documented the correct steps for the QA.
>
> Regarding 12081: To open bugs on ptest we make a comparison from the last run in this case the comparison was made with 2.2.2 rc1 Ptest 5f6945f5031e1a4ca116cc1eccf4c2f9dc228547 which in turn was compared with Ptest 9ed748a542b520c1cb763d981969233c0f5efd4e which was compared with  Ptest 8e15e9b6e478f6368034519b2a8fd3c7ea71d23b which was compared with Ptest 6bd890d9e011014cf323e61267f8b256949d44aa, they all hold this packages.
>
>
>
>
> Best Regards
> Libertad G.
>
> -----Original Message-----
> From: Bystricky, Juro
> Sent: Friday, September 15, 2017 1:04 PM
> To: Richard Purdie <richard.purdie@linuxfoundation.org>; Cruz, Libertad <libertad.cruz@intel.com>; yocto@yoctoproject.org; Jolley, Stephen K <stephen.k.jolley@intel.com>; Zhang, Jessica <jessica.zhang@intel.com>
> Cc: Perez Carranza, Jose <jose.perez.carranza@intel.com>; Cruz Alcaraz, Juan M <juan.m.cruz.alcaraz@intel.com>; Jordan, Robin L <robin.l.jordan@intel.com>
> Subject: RE: QA cycle report for 2.2.2 rc2
>
>
> Regarding 12081:
> Looking at some previous ptest results in:
> https://wiki.yoctoproject.org/wiki/QA_sanity_history
> we can see that the offending tests (gzip, flex, slang) were not present in:
> https://wiki.yoctoproject.org/wiki/Ptest_62d7d4130202d8ede16abf9e7d779361ca70847e
> but started to appear after
> https://wiki.yoctoproject.org/wiki/Ptest_6e20b31d5d17133e0fca086e12a0ad06ab5c4cc8 (flex)
>
> Also checking the manifest file, the offending test were also missing in http://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/machines/genericx86-64/core-image-sato-sdk-ptest-genericx86-64.manifest
>
> So this is not a regression issue.
>
> Juro
>
> From: Richard Purdie [richard.purdie@linuxfoundation.org]
> Sent: Friday, September 15, 2017 9:50 AM
> To: Cruz, Libertad; yocto@yoctoproject.org; Jolley, Stephen K; Zhang, Jessica; Bystricky, Juro
> Cc: Perez Carranza, Jose; Cruz Alcaraz, Juan M; Jordan, Robin L
> Subject: Re: QA cycle report for 2.2.2 rc2
>
> This is a tricky one to evaluate. Going through the bugs in the QA
> report:
>
> Bug 12075 - think this is ok to fix on the branch and release note
> Bug 12080 - we think minimal eSDK never worked in morty therefore this
>              is a QA testing error?
> Bug 12073 - we continue to see various gpg errors even with master,
>              propose not to block release on this and only fix master
> Bug 12009 - resolved and already fixed in 2.2.2 (I marked it resolved)
>   Bug 11150 - was a bug with 2.2.1 but should be fixed in 2.2.2?
> Bug 11611 - was this found in 2.2.2?
> Bug 11064 - marked as resolved as per QA comment, fix was in 2.2.2
> Bug 11597 - fix was added to 2.2.2 (marked as resolved)
> Bug 10460 - open and unresolved with master but not release blocker IMO
> Bug 11797 - can't see any backport but not a release blocker as the
>              source mirrors work
> Bug 11109 - No backport afaict but not release blocker
>
> Which leave us with 12081 to understand before we can decide whether to release this or not.
>
> So the decision to release or not depends on QA agreeing with the resolution of 12080 and figuring out what happened with 12081.
>
> [Thanks to Ross for helping with some of this]
>
> Cheers,
>
> Richard
>
>
>
>
> On Thu, 2017-09-14 at 16:53 -0700, Cruz, Libertad wrote:
>> Here is the report for the 2.2.2 point release test cycle.
>> Full Report :  https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-
>> _Full_Point_Release_Test_Cycle_2.2.2_rc2
>> ======= Summary ========
>> The QA cycle for point release 2.2.2 rc2 is complete.  There are 3 new
>> bugs: bug 12080[2]  blocks testing to the eSDK component since eSDK
>> functionalities cannot be executed. Bugs 12075[1], 12073[3], 12081[4]
>> don’t block full functionalities.
>>
>> LPT results are waiting to be updated by Windriver.
>>
>> Performance
>> Compared with 2.2.2 rc1 there was a regression of 14.71 while building
>> rootfs on Ubuntu, there was also a regression on Fedora while building
>> sato of 7.46% and a regression on kernel of 12.12%.
>>
>>
>> Ubuntu                 Test       2.2.2_rc1
>> 2.2.2_rc2             %
>>                                sato       1:00:42
>> 1:01:16               0.93
>>                                rootfs    2:16
>> 2:36                     14.71
>>                                rmwork 0:59:29              0:59:51
>>              0.62
>>                                kernel    5:01
>> 5:00                     -0.33
>>                                eSDK      3:22
>> 3:19                     -1.49
>>
>>
>>
>>
>> Fedora                 Test       2.2.2_rc1
>> 2.2.2_rc2             %
>>                                sato       1:01:55
>> 1:06:32               7.46
>>                                rootfs    2:49
>> 2:51                     1.18
>>                                rmwork 0:59:52              1:01:32
>>              2.78
>>                                kernel    6:03
>> 6:47                     12.12
>>                                eSDK      3:44
>> 3:54                     4.46
>>
>>
>> ptest
>> There was an improvement on the pass rate in the following packages in
>> comparison with 2.2.2 rc1:
>> gdk-pixbuf with 5%
>> libxml2 with 4.20%
>> lttng-tools with 3.20%
>>
>> On the other side there was a regression on the pass rate in
>> comparison with 2.2.2 rc1:
>> acl with 6.80%
>> e2fsprogs with 100% regression
>> gawk with .10%
>> quilt with 1.80%
>> valgrind of 53.10%
>>
>>
>> Compliance
>> Results are yet to be documented by Windriver.
>>
>> ======= QA-Hints========
>>
>> There is only one concern on the eSDK component it cannot execute. QA
>> recommends an 2.2.2 rc3 to only verify the eSDK component.
>>
>> ======= Bugs ========
>>
>>         New Bugs
>>              -12075[1]  [morty] testimage quemux86/qemux86-64 lsb
>> tcgetattr: Input/output error^M
>>              -12080[2] [Morty][Test Case 1605]
>> TCTEMP_2.3_AUTO_sdkext_eSDK_devtool_build_make
>>              -12073[3] selftest: setUpClass failed failing on ubuntu
>> 17.04 (oeqa.selftest.signing.Signing)
>>              -12081[4] [morty] PTEST: Package Name flex, gzip, slang,
>> do not appear in 2.2.2 rc2
>>
>> Full Bug Report : https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-1
>> 3_-_Full_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test
>>
>>
>> ======== Links =========
>>
>>      1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12075 [1]
>>      2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12080 [2]
>>      3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12073 [3]
>>      4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12081 [4]
>>
>>
>>
>> Regards
>> Libertad G.


