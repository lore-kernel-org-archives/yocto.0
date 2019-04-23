Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81317E00BAA; Tue, 23 Apr 2019 07:31:32 -0700 (PDT)
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
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76C8E00B1B
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 07:31:31 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id 4so359777wmf.1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 07:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=vSRVyHn8V2s71l1LYtjc0LpzhudIanjQxd9aY3yaC8M=;
	b=aNCLkU/foZ92Oh0rmZGnhQ1V7momjKLP2Avyzo+4FBg386gLeyep9rPRJoYHS9Ge31
	KhFCPivMcFgz26VQchK10JCUUUdDOo+bKDTFiYSyhzvM1S4sbRR4T0LJ6caEnfQV7Sfo
	D29agiCacFcLFWqpk0xhznn2VryYxRcZkTVxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=vSRVyHn8V2s71l1LYtjc0LpzhudIanjQxd9aY3yaC8M=;
	b=iw16gLMHJKlJI5pfUptUG0RqODgQVfGAUwYoQg95dghzTZGQpkc2MbEMi3QVfBIeXd
	Uw8rqQ7xmCOxzLFCh+ZEpUYfmqoNUAOWGj/DerGBOE5gjGHP5YY6WvA0HqshH8Ac1TjL
	n1UpfZDX8wAPdVbgG/+VW0+PbKRX4QHAlGGonYU27Mr0nWsBO7H3hgoIfTto3xAZbdZQ
	8c/PNiO+lDDXFylpTRyKQzA/apfwlxSC3GQx7w2B9bi6zfiETKSiYOdxmZ+LHsyKZA1g
	mmRSvGVkuNeNWTcChiOPikYxodyCSY80j3JDhcaJFKPHtdyjhEgzN+X8L+X6dmfZwhCd
	tT/Q==
X-Gm-Message-State: APjAAAWF5rgd8oQiN/dkXCNr1+tDBZBO5S2lu8hNntPKVZ3WSX67vL17
	0IZzf4PL7uUaTVGa6iyye5TkdA==
X-Google-Smtp-Source: APXvYqwzumVjOopnOZ3QkpGir2QLznWNcnpDd2mc3hVvc6u5uoW5MhAoPgYqPpFG4eT9HqhYl19Oog==
X-Received: by 2002:a1c:dc09:: with SMTP id t9mr2610390wmg.142.1556029891031; 
	Tue, 23 Apr 2019 07:31:31 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id l1sm5287012wrh.58.2019.04.23.07.31.29
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 23 Apr 2019 07:31:29 -0700 (PDT)
Message-ID: <191c2490a17a1e5b18b6a0d98659c30d766adde4.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>, 
	"'openembedded-core-request@lists.openembedded.org'"
	<openembedded-core-request@lists.openembedded.org>
Date: Tue, 23 Apr 2019 15:31:28 +0100
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
X-List-Received-Date: Tue, 23 Apr 2019 14:31:32 -0000
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

$ cd /srv/autobuilder/autobuilder.yoctoproject.org/pub/releases/yocto-2.5.3
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



