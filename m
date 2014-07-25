Return-Path: <mark.a.evans@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8A86E006EF; Thu, 24 Jul 2014 18:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mark.a.evans[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80785E006EF
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 18:46:08 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id a141so2760444oig.14
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 18:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=QBZTM+pFSFEaG6O6qX3PMNy8U4h52bPmzK8KdS2g2lM=;
	b=bOrI4INyMR9iMzzsWVjqg8mdIiPL86BmfquOswpOK31QydIqGrAXJc1eAKc4H84pr/
	+U0VrDx9TPwje6eMfnDCNFf+ECnuvaTBBZ8vPIhhoTCbZzzQVGikLtuYAvQ2v+RpKs6J
	SKGF/KwtyftXe2Ip96wBxFELggLjJJn4Ob9aXQZpevCchLdnx2ccfBtJPuivAhJ40sq1
	tR9zgJ988awjED+SQd9aQzw+J7fPoaJoSbS+1XgGVnmotNxuuHGl+zFm43npsxPRwTbC
	6R++idxNqonGPF+8GMZAYG54/41DDLScDarNRuj/ICfuL7gCdpfPtHxm8ZKSTEjzhQwx
	SAvQ==
X-Received: by 10.60.84.207 with SMTP id b15mr17837195oez.49.1406252767198;
	Thu, 24 Jul 2014 18:46:07 -0700 (PDT)
Received: from [172.16.1.39] (99-62-169-121.lightspeed.austtx.sbcglobal.net.
	[99.62.169.121])
	by mx.google.com with ESMTPSA id u5sm15658092obt.18.2014.07.24.18.46.06
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 24 Jul 2014 18:46:06 -0700 (PDT)
Message-ID: <53D1B6E3.4070002@gmail.com>
Date: Thu, 24 Jul 2014 20:46:11 -0500
From: Mark Evans <mark.a.evans@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
	<53D1A854.1080002@gmail.com>
	<CAMKF1srrntvZoe6b_mUq2i0tC=GGSFX3GV3UhQ96V9MAv5aF7A@mail.gmail.com>
In-Reply-To: <CAMKF1srrntvZoe6b_mUq2i0tC=GGSFX3GV3UhQ96V9MAv5aF7A@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenSSL 1.0.0m
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
X-List-Received-Date: Fri, 25 Jul 2014 01:46:14 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for the nfo. I'll go there and take a look.
--MarkE

On 7/24/2014 7:51 PM, Khem Raj wrote:
> On Thu, Jul 24, 2014 at 5:44 PM, Mark Evans <mark.a.evans@gmail.com> wrote:
>> question on the openssl recipes and openssl versions... Point me to the
>> correct distro if this is the incorrect spot to ask this...
>>
>> We're currently on Danny, 1.3.2. In there, the openssl version is 1.0.0j.
>> The openssl project is currently promoting  1.0.1h. Due to the multiple CVEs
>> being released, we're wanting to move to the latest. But, looking at the
>> poky releases, it seems that, after "Danny", Poky reverted back to 1.0.0e
>> and added patches as CVEs are released. For example, here's the patches in
>> "Daisy" (1.6.1):
>>
>> openssl-1.0.1e-cve-2014-0195.patch
>> openssl-1.0.1e-cve-2014-0198.patch
>> openssl-1.0.1e-cve-2014-0221.patch
>> openssl-1.0.1e-cve-2014-0224.patch
>> openssl-1.0.1e-cve-2014-3470.patch
>> openssl-CVE-2010-5298.patch
>>
>> Am I reading that correct? If I move to the recipes there, will that close
>> current issues on openssl? Or, is there a recipe available to use 1.0.1h?
>>
> oe-core/master is having 1.0.1h, you can backport that into your own
> layer and tool your project
> to use it.
>
>
>> Thanks for any info.
>> Mark Evans
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


