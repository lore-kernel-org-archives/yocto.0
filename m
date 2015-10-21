Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7B8CE006F1; Wed, 21 Oct 2015 09:35:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB75E0059B
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 09:34:59 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so59306176pad.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=wqMgHXzlydFC5wWu3Rv+zc4iNDJVgFzxkZVOTIdu+Pc=;
	b=SdbBedRGtZkLXIc/Q1ytKkJxBy7Qi4CX8v8FZArjMTbwIOy9RbMSo/YTfcWCP5TpRV
	5IvFl6AwvzvMangdeibLcYemZ1CTaf1rtlI3yuZI47zkQ/iGDpN1LkfiulRpU5NYGQn3
	lgosvFots3i2/q51C4WR4C1wcc9iRoas7dSZ32XclxPYCtrAvM81cn25g++/zK9LlXC4
	3ScelsqlDdIh0ZJrckcgXCKDxchdq79op/fcoExcuzvNbj8HQioI+AOS0y9Y7JgBHzR0
	OR2L5aXuk6sS7QeitT8YXDBMr5OKyt1bSag80tI/1nZU+eD+uEt4nbTpp1aykqAONqpn
	+77Q==
X-Received: by 10.66.162.227 with SMTP id yd3mr11783094pab.53.1445445299544;
	Wed, 21 Oct 2015 09:34:59 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:2488:b73b:7240:2aa6?
	([2601:202:4000:1239:2488:b73b:7240:2aa6])
	by smtp.googlemail.com with ESMTPSA id
	yh3sm9979739pbb.82.2015.10.21.09.34.58 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Oct 2015 09:34:58 -0700 (PDT)
To: yocto@yoctoproject.org
References: <D24D4681.68AC5%belen.barros.pena@intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A4C9EE0@AZ-FFEXMB01.global.avaya.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5627BEB1.9020508@gmail.com>
Date: Wed, 21 Oct 2015 09:34:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A4C9EE0@AZ-FFEXMB01.global.avaya.com>
Subject: Re: Meta layer for Cavium CNS3xxx ARM processor
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
X-List-Received-Date: Wed, 21 Oct 2015 16:35:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Abhinav,


On 10/21/2015 05:58 AM, Bipnesh, Abhinav (Abhinav) wrote:
> Hi,
> 
> I didn't find a match for Cavium CNS3412. 
> Is there an equivalent machine which use below flags for building up binaries.
> 
> -march=armv6k -Wl,-z,max-page-size=0x10000,-z,common-page-size=0x10000,-Ttext-segment=0x10000

Not sure about those specific parameters but you may want to check
meta-arago and meta-eldk, those to list armv6 support. Its a start.

- armin

> 
> Thanks,
> Abhinav
> 
> -----Original Message-----
> From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com] 
> Sent: Wednesday, October 21, 2015 18:13
> To: Bipnesh, Abhinav (Abhinav); yocto@yoctoproject.org
> Subject: Re: [yocto] Meta layer for Cavium CNS3xxx ARM processor
> 
> 
> 
> On 21/10/2015 10:01, "yocto-bounces@yoctoproject.org on behalf of Bipnesh, Abhinav (Abhinav)" <yocto-bounces@yoctoproject.org on behalf of abhinavbipnesh@avaya.com> wrote:
> 
>> Hi,
>>
>> I am looking for an meta layer which provide support for Cavium CNS3xxx 
>> SOC as need to build some application on that platform. Below is the 
>> output from the board when I check for the release and CPU information
>>
>> $ cat /etc/*release
>> MontaVista Linux 6, (.dev-snapshot-20130726)
>>
>>
>> $ cat /proc/cpuinfoProcessor       : ARMv6-compatible processor rev 4
>> (v6l)BogoMIPS        : 279.34Features        : swp half thumb fastmult
>> vfp edsp javaCPU implementer : 0x41CPU architecture: 7CPU variant     :
>> 0x0CPU part        : 0xb02CPU revision    : 4 Hardware        : Cavium
>> Networks CNS3420 Validation BoardRevision        : 0000Serial          :
>> 0000000000000000
>>
>> So is there any meta layer which supports above SOC.
> 
> You can find out about such things in the layer index:
> 
> https://urldefense.proofpoint.com/v2/url?u=http-3A__layers.openembedded.org_layerindex_branch_master_machines_&d=BQIFAw&c=BFpWQw8bsuKpl1SgiZH64Q&r=geJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=XxYTvsQRPzXBJWLwdOWeBiHMpE2Nn6iOx6n2oQQJml4&s=i0Lhp1I_W_sJiWRro6u6fjpwCUbISC9O5dSlLY08yBM&e= 
> 
> Make sure to select the correct branch on the left side of the menu.
> 
> Cheers
> 
> Belén
> 
>>
>> Thanks,
>> Abhinav
>>
> 

