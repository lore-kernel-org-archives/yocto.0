Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D52B9E00D3A; Thu, 19 Oct 2017 02:39:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01440E00CFF
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 02:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=evURWVtJMgsb10n3JWq9oK6DpwInCoRwhlcOseSzg14=;
	b=y6WsdbdKwylAUkN1TsuDzVnLGlBwacjxFVFPy1X6fsSvVHcaeLLaJgEzpnk7SaqBi+SlFnRt6AzQT
	oRoumFfTSXLu/IhcT9/rnXp72LRd6utkDu+dBvpmKTvCdX23G+/uJR2qfgpTlSWDXEzXbPOvt37Nxx
	t1pHUPtOj75thCg4=
X-HalOne-Cookie: 9075b6176e4dd141088a45e3579151cbbf50402c
X-HalOne-ID: 6820e537-b4b1-11e7-a520-b8ca3afa9d73
Received: from [192.168.178.20] (unknown [89.13.10.176])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id 6820e537-b4b1-11e7-a520-b8ca3afa9d73;
	Thu, 19 Oct 2017 09:39:31 +0000 (UTC)
To: yocto@yoctoproject.org
References: <bc2a1b00-29ca-e3e7-3e54-51f8f88650e7@numalliance.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <7d046f0a-a71a-27d5-c5a2-6fdf55b950ee@embexus.com>
Date: Thu, 19 Oct 2017 11:39:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <bc2a1b00-29ca-e3e7-3e54-51f8f88650e7@numalliance.com>
Subject: Re: sfdisk package
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
X-List-Received-Date: Thu, 19 Oct 2017 09:39:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 19.10.2017 11:36, Stéphane Ancelot wrote:
> Hi,
>
> I would need sfdisk package, I have not found it.
>
> I suppose I must create it or are there any software forge where I 
> could find it ?
util-linux-sfdisk ?
>
> Regards,
>
> S.Ancelot
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


