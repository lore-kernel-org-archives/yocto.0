Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DD9E00D9D; Tue, 19 Dec 2017 10:16:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3-3.pub.mailoutpod1-cph3.one.com
	(mailrelay3-3.pub.mailoutpod1-cph3.one.com [46.30.212.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF067E00B5F
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 10:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=z59QlB0yamYE2rQDxvn1znHJC8b5/HGKnD1s2H+cIqA=;
	b=tUBlRq+2EH5tR8+rHmYtXkDPQdFJzaoe4NlpSu1TuVTRPeN9AS47U+6t5Ivv+O7mp1f6hBaHAfpcw
	Pl7NewEhXt7NKjX7mhGJM0h5I6X7/yMuARijM4EeWjj5SxpKadcgQNWxVT6NfFqedjOgIq5bZ+VTEf
	K9z1ZUD4Gz8OWPDA=
X-HalOne-Cookie: e4a7939d5b629a3cbf607b4ef0b1c54cc220a6fd
X-HalOne-ID: b711b295-e4e8-11e7-ab99-d0431ea8bb03
Received: from [192.168.1.72] (unknown [145.236.64.43])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id b711b295-e4e8-11e7-ab99-d0431ea8bb03;
	Tue, 19 Dec 2017 18:16:21 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <ab3eb2b5-07af-838f-43be-0c5a7222fbc1@embexus.com>
Date: Tue, 19 Dec 2017 19:16:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Tue, 19 Dec 2017 18:16:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 19.12.2017 19:03, Sherif Omran wrote:
> how can i add rfkill recipe?
>
> On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran 
> <sherifomran2000@gmail.com <mailto:sherifomran2000@gmail.com>> wrote:
>
>     i used core-image-minimal for a raspberry pi 0w. But i get rfkill
>     can not open control device. when i give rfkill , i get the
>     syntanx output, this means it exists.
>     the wifi driver is installed.
>
>     What is the rfkill device? is it /dev/rfkill ?
>

rfkill is part of Bluez5, you can add it to your image recipe.

>
>
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


