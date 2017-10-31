Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 634D6E00CC2; Tue, 31 Oct 2017 04:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay4-3.pub.mailoutpod1-cph3.one.com
	(mailrelay4-3.pub.mailoutpod1-cph3.one.com [46.30.212.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64199E00C44
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 04:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=vQuAZ6dOx2GVx9E8gzJrUNEW5UmiXEdIuGHEoV0zGRI=;
	b=Lvb4SUhqdrIMJP12rvLJVwGfCGMFpRtycEnv7rDZbLfyDcLXIIsWxuWrNCqHqz4ZqO1VUinY3Qi9y
	DvML40ozj7fuFHJWu2Ot+6wCdJaIlvgPkL2cFx0RbHleD1sUR8pSkMd9taTjM5NcUWCBND+3HwZT6m
	mNmbKeBNES4b7tHw=
X-HalOne-Cookie: 51bf40e84e482c4e81755a5c3a64ed7f3b91c257
X-HalOne-ID: 04af06a8-be30-11e7-b9d4-d0431ea8bb10
Received: from [192.168.178.20] (unknown [89.12.123.142])
	by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 04af06a8-be30-11e7-b9d4-d0431ea8bb10;
	Tue, 31 Oct 2017 11:38:30 +0000 (UTC)
To: "Burton, Ross" <ross.burton@intel.com>
References: <481c8b41-8497-ac4d-eaa7-d06291b41845@embexus.com>
	<CAJTo0LaVd8oqRgMp4eQ2e9tF_KUht88BgMQh0Dur=SFYDPohXQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <9e1b73a2-b580-cfbe-164e-d98a90ee0d02@embexus.com>
Date: Tue, 31 Oct 2017 12:38:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaVd8oqRgMp4eQ2e9tF_KUht88BgMQh0Dur=SFYDPohXQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitwise Operations in BBClass
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
X-List-Received-Date: Tue, 31 Oct 2017 11:38:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,


On 31.10.2017 12:34, Burton, Ross wrote:
> That would be https://bugzilla.yoctoproject.org/show_bug.cgi?id=11314, 
> $(( isn't supported by our shell parser. Shouldn't be that difficult 
> to fix in bitbake.

Any workarrounds for that problem ?
I tried with expr but it does not recognize bitwise operations like  & ~
I'm really stucked ...

>
> Ross
>
> On 31 October 2017 at 11:27, Ayoub Zaki <ayoub.zaki@embexus.com 
> <mailto:ayoub.zaki@embexus.com>> wrote:
>
>     Hello,
>
>     I'm trying to get a bitwise operation working in a bitbake bblcass
>     function but no luck so far :
>
>     my_function() {
>
>         SZ="`wc -c < ${1}`"
>
>         ALIGN_SZ=$(((${SZ} + 0x1000 - 1) & ~ (0x1000 - 1)))
>
>         .......
>
>     }
>
>     Bitbake complains with :
>
>     ERROR: ExpansionError during parsing
>     /opt/Projects/Yocto/meta-somelayer/recipes-kernel/linux/linux-imx_4.1.15.bb
>     <http://linux-imx_4.1.15.bb>: Failure expanding variable
>     my_function: NotImplementedError: $((
>
>
>     Any suggestions how to tackle this problem ?
>
>     Thank you !
>
>     -- 
>     Ayoub Zaki
>     Embedded Systems Consultant
>
>     Vaihinger Straße 2/1
>     <https://maps.google.com/?q=Vaihinger+Stra%C3%9Fe+2/1&entry=gmail&source=g>
>     D-71634 Ludwigsburg
>
>     Tel.     : +4971415074546 <tel:%2B4971415074546>
>     Mobile   : +4917662901545 <tel:%2B4917662901545>
>     Email    : ayoub.zaki@embexus.com <mailto:ayoub.zaki@embexus.com>
>     Homepage : https://embexus.com
>     VAT No.  : DE313902634
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


