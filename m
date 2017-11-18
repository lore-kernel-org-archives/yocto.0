Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25272E00D18; Sat, 18 Nov 2017 08:07:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B370EE00B1A
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 08:07:46 -0800 (PST)
Received: from [192.168.159.12] ([88.109.27.80]) by mrelayeu.kundenserver.de
	(mreue001 [212.227.15.163]) with ESMTPSA (Nemesis) id
	0MEOE4-1eMhN70Liy-00FPZI; Sat, 18 Nov 2017 17:07:41 +0100
To: cddatemp <cddatemp@163.com>
References: <0b621d79-67cd-af97-d423-4cad61a8989d@2net.co.uk>
	<5a1103fc.3a5d.15fcf939792.Coremail.cddatemp@163.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <2be7d6b2-584a-703d-5b7c-8911c4333902@2net.co.uk>
Date: Sat, 18 Nov 2017 16:07:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <5a1103fc.3a5d.15fcf939792.Coremail.cddatemp@163.com>
X-Provags-ID: V03:K0:PGUNI7R2gtSIF0REaULre31RurFqSxne2PRFpyduR9Zmd8YoBiO
	dbvQ1hcvfewCuLPlQxIw4Zkmjd8DSamGi44kRncmbYM+XgSWGVy/xeZ+zEVvV3ektHP6RQa
	WjHY34vxX0cx71t8bJLZmKA+ANezv0UfRXM6XCM3gpo+bb8cwzj6RnLIqbX852pPr3c3cfs
	VWbJ2yP2xULpExa0zWcJg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:d7Ksgcy/KWc=:L/bw2667swCvNQObMNERkc
	F97HYUUWHaF0xSJ+jqNjMyti7xyI3PxI4yOzWuqCMKurTlADa/ya/hbmfMD7DshkVMqTfT0Qo
	S/6zIzyVQSj2SeXdN5CGko4riZ8kCmQrDFA+90jD44mwafeKPfuVW9xPe8F2yfGuHzw7hW+tW
	hCZCLujgbAZyPR0GU3fPsEzZfBLmZZmutQrePXKEHXxhpUIlB95oLAWssPRbtAtLZat6a6Rub
	6dVcFo+E6uVaQF/eZnc1bgg5C6uOA6CrIlgIG2Cq7ngBZNQ9FUnAe274hMS4Tr2jZFFtYEJfD
	fKweZ8AbvB5g1j+M+6nkTeEK0oHv9QdlL7+6FMxy0Ahhdj0SdBqgFMoX3clKmvyIujt/MiFby
	byz0IFb8u9sLovysXlEewv7hTP/vxsQAdPFYDL44YDnms3n1f1Y6N7Nhd2A6N7XZ98JYjZdZT
	NPkUTEnk2zUdeYmLcLa75N21xujOXWbpamTQWNfE+aEmzxqr0zvLs8C1Lr+sK5F92rK04v4Bm
	n/EIa8k2dvFicQngWlhN6LmIjkDu0curBrVtpwFadGKsh/r9fCWXuAmrH4x4i6n8oE2kYgytk
	IdTgrCgJue0ksL2Kvm3K+rr3036B/p4HB1XIGFahnGG5TVck0GrpZiRffE4c5pNFmsTmaCAjb
	Z+ZV/mqn5pLjX86oybsniaXb0mQtj2j3rK7tORvY+yxu8hPamMgaWcZFtFjhQONzdNF8h6WJG
	qqfUP8znFlknp2y2sv3tqEEqe8cfHkMIccJ5twmqgTdot4ESkwYtBrPM0HE=
Cc: yocto@yoctoproject.org
Subject: Re: Displaying buildcfg
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 18 Nov 2017 16:07:48 -0000
Content-Type: text/plain; charset=gbk
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi,

On 18/11/17 14:41, cddatemp wrote:
> At 2017-11-18 20:45:11, "Chris Simmonds" <chris@2net.co.uk> wrote:
>>Hi,
>>
>>At the start of a bitbake run it displays the current build
>>configuration before it starts to build anything:
>>
>>Build Configuration:
>>BB_VERSION        = "1.28.0"
>>BUILD_SYS         = "x86_64-linux"
>>[...]
>>
>>This information is useful, especially when you are swapping between
>>multiple projects with different versions. Is there a simple way to get
>>bitbake to print just this information, without going on to do build
>>anything?
> 
> Try this:
> $ bitbake -n base-files
> 
>>
>>Regards,
>>Chris
>>-- 

Thanks,

Thanks, that works.

I can't help feeling that there should be a more direct way of dumping
the buildcfg though. Anyone have an insight on this?

Chris

