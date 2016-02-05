Return-Path: <markus.lehtonen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CA2E00CE7; Fri,  5 Feb 2016 02:53:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D90E00CE3
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 02:53:25 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP; 05 Feb 2016 02:53:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,399,1449561600"; d="scan'208";a="647647553"
Received: from mwoodwar-mobl8.ger.corp.intel.com (HELO [10.252.19.30])
	([10.252.19.30])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Feb 2016 02:53:25 -0800
User-Agent: Microsoft-MacOutlook/0.0.0.150701
Date: Fri, 05 Feb 2016 12:53:23 +0200
From: Markus Lehtonen <markus.lehtonen@linux.intel.com>
To: Chris Trobridge <christrobridge@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <828E5A00-39E2-4522-A379-7F828152785D@linux.intel.com>
Thread-Topic: [yocto] Signed RPMs
References: <DUB130-W75F413446FD2227886136DDAD10@phx.gbl>
	<8D8D7F9C-EA46-4F48-9298-6D50BA671BE9@linux.intel.com>
	<DUB130-W3021BF7B2487DF73566399DAD20@phx.gbl>
In-Reply-To: <DUB130-W3021BF7B2487DF73566399DAD20@phx.gbl>
Mime-version: 1.0
Subject: Re: Signed RPMs
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
X-List-Received-Date: Fri, 05 Feb 2016 10:53:29 -0000
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

On 05/02/16 11:15, "Chris Trobridge" <christrobridge@hotmail.com> wrote:

>> Date: Fri, 5 Feb 2016 10:00:50 +0200
>> Subject: Re: [yocto] Signed RPMs
>> From: markus.lehtonen@linux.intel.com
>> To: christrobridge@hotmail.com; yocto@yoctoproject.org
>> 
>> Hi Chris,
>> 
>>  ...
>> 
>> That really should not be needed. What version of poky are you using? I was not able to reproduce your problem. Try building signing-keys, does it copy the pubkey to the correct place?
>> 
>
>
>This could well be the issue  - I need gobject introspection so I am using poky-contrib ("akanavin/gobject-introspection-experimental:7145f5b9dbd84a26fe4b5ee6ab9077b1ff1ee3a5").

OK, that is probably the reason. There were at least some dependency problems in the signing feature which were fixed not that long ago.


>I got another error later building the rootfs that mentioned not finding DSA.  It may be related to not having a suitable poky, but also I am using an ECDSA key pair generated with gpg2.

I haven't tried signing with ECDSA keys. I've been using too old gpg for that. I probably have to test this, too.


>I have cloned a fresh poky (main) instance, switched to a DSA signing key and built the signing-keys target from that fine, with the RPM-GPG-PUBKEY in sysroots.  So I will bear this in mind in future.

Good. Let us know if you have some further issues.


Thanks,
  Markus


