Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB40BE00922; Fri,  3 Apr 2015 07:45:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11CEEE00914
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 07:45:49 -0700 (PDT)
Received: by ykfa3 with SMTP id a3so25735344ykf.0
	for <yocto@yoctoproject.org>; Fri, 03 Apr 2015 07:45:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ct/QccmojIklfUWec+dDEtLTghfhSGjARzLLooRypBI=;
	b=d9AdeoncXU4+bLGhfZ4IeEbmEL9hjFZ1mnRzdviMpLXsCKD80eH4x1T1xO4F8vjoUq
	5m/q6xrrVK0yLEExkCGU9mcrE6zH12sp3ebyu5Eg4h2puidWCuCYCWILDZOgW0AgfbvX
	BcXsHpKOxFwZOdrY+A1lgGBScXQX0a7iqjPcilcPuP+ORxXorjwsnfKeSVDtKVaMigUv
	B1kgsggt6pFZtmdjKf/LDZrbkceMJ78qWrANc57Z/iStszGi82g2ni+oliRWmLQVEpSh
	qeFhfWqcMjKcYMcce9gNuAFoMDYS1RTEedvHiyk7pJjCbt8+eTIaqDYI1sqgD5nSyLMD
	hdLQ==
X-Gm-Message-State: ALoCoQnctoAiuj2IcMbxKAJbM+S2AnNyZqeF2mAjHi25DKK52zdRQRc6ebZtNJGY4hGIj6Gd937Y
MIME-Version: 1.0
X-Received: by 10.52.30.34 with SMTP id p2mr1467097vdh.89.1428072348709; Fri,
	03 Apr 2015 07:45:48 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Fri, 3 Apr 2015 07:45:48 -0700 (PDT)
In-Reply-To: <551EA5B1.3010103@gmail.com>
References: <20150403045054.881D040004F3@centos7-a.osl.yoctoproject.org>
	<551EA5B1.3010103@gmail.com>
Date: Fri, 3 Apr 2015 15:45:48 +0100
Message-ID: <CAPhnLPDryCLyFxS4VauJHJD2aK3jCq9EO6Jbh2s9K4nj6+F9vw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: akuster808 <akuster808@gmail.com>
Cc: Poky Build User <pokybuild@centos7-a.osl.yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto- now available.
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
X-List-Received-Date: Fri, 03 Apr 2015 14:45:52 -0000
Content-Type: text/plain; charset=UTF-8

On 3 April 2015 at 15:37, akuster808 <akuster808@gmail.com> wrote:
> What version does that poky hash tag equate to ? dizzy, fido. I am too lazy
> to look it up ; )

fido

>
> Also the referenced url is broken.
>
> - armin
>

Yes. Something messy occurred last night. Please utilise:
http://autobuilder.yoctoproject.org/pub/releases/yocto-1.8_m4.rc2/

> On 04/02/2015 09:50 PM, Poky Build User wrote:
>>
>>
>> A release candidate build for yocto- is now available at:
>>
>>
>> http://autobuilder.yoctoproject.org/pub/releases/yocto-
>>
>>
>> Please begin QA on this build as soon as possible.
>>
>>
>> Build hash information:
>> meta-intel : 53eea4f12311b4808b3af9695ac822eea1fc60c2
>> meta-fsl-arm : bfe01a0ebde407086f4a7710ea165c6beff310d7
>> meta-minnow : 13a5f2ab84c7284647a3e067a33109c11dae0568
>> meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45
>> meta-fsl-ppc : 4c8cd553f9de56379e2b6502ceb996521e2d6a20
>> poky : 33558eacc8a2d3dce3396b9ab2fd0773ac5076bc
>>
>>
>> This is an automated message from
>> The Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder
>> Email: elizabeth.flanagan@intel.com
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

