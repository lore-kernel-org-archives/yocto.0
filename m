Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C01AE00BD0; Wed, 13 Jan 2016 19:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E098E00BBC
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 19:08:02 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u0E380oM005798
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Jan 2016 19:08:00 -0800 (PST)
Received: from [128.224.162.155] (128.224.162.155) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 13 Jan 2016 19:07:59 -0800
To: Vivek Per <pervivek@gmail.com>, Yocto <yocto@yoctoproject.org>
References: <CALLyC8SbQtH_eWCWdY6cK_Y_gZGiRZ5Fq5MuPtQauWvzpJX9Vw@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <5697110E.8050803@windriver.com>
Date: Thu, 14 Jan 2016 11:07:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8SbQtH_eWCWdY6cK_Y_gZGiRZ5Fq5MuPtQauWvzpJX9Vw@mail.gmail.com>
Subject: Re: How to set password policy using libpam in yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 03:08:05 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 01/13/2016 06:20 PM, Vivek Per wrote:
> Hi,
>       I want to create run time users in my target and the password for that
> should have maximum of 12 letters (which include both capital and small) and
> minimum of 8 letter. How can i modify "libpam" recipe to set this configuration
> . where to add libpam recipe.
>     I found in one blog that i have to add this feature in "DISTO_FEATURES =

Typo, DISTRO_FEATURES (not DISTO). Try to add this in local.conf and build:

DISTRO_FEATURES_append = " pam"

// Robert

> "pam" but , i don't see this feature in "DISTRO_FEATURE" variable in yocto
> reference manual
>
> https://wiki.yoctoproject.org/wiki/PAM_Integration
>
> How can i include above feature in rootfs using libpam .
>
>
> Thanks in advance
>
>
> Thanks and Regards
>          Vivek
>
>

