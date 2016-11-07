Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17AFCE009DA; Mon,  7 Nov 2016 09:24:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D5D5E009C3
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 09:24:21 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id i88so93215471pfk.2
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 09:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=qvFSpZOGBTfcdw/zqmM0b+9ozXYN4hM7T4RXFWzCiHM=;
	b=VVI+Lw2NhSH1bieds4r2y7aKZzYAK031bRcmVuntXbuZZD+7ZPJj/Ps1Zjg5e/eOHA
	Sx4V3QjvUxxdk0qCZHPOayhhlOd/na+88hlyQ1SxwOcWBBEpSxb0yPcLQiBXbeGvnEp+
	xhNe2MEVhmaF86T0IrO2Zvz+gL2Rk6RVazdkCUPj13VOAUgJNK5JA8qDSg/dQkY8OxoW
	qSbhINjjRTTPABSRoE/K2iWRNrOMuUAH5c6IEmN2+VHJV2IRY30AQ/GQn6jsC2AXWhFd
	wyBabfxC4AVNz9bcp6NRb/0tTE/5G5Ub3U9LoGoB92kEXEw1aRIQJePMuE8kP+285dVJ
	ekqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=qvFSpZOGBTfcdw/zqmM0b+9ozXYN4hM7T4RXFWzCiHM=;
	b=Ok6d3IYvNlr7WDbW0aEcwt4L70TuCErj4gCYcMuksEYAwD998ZwM3pEX2HwQ2nm2wh
	8XPAaN9RiHGx5zW/PfLqKaQhpyPvj8WhjSxzQkIeLuuW1oELloSxhu/rqZfB330hcc6l
	ALk/UQiTONkDrctm7TmjCwwF59cA2LtGq91RQZyzBWQr6AZwzAdCCOCIEls4E+35EvRt
	SOexwcr7zkafV+xL/2vOViVsH8iISntmItnpAuZN58CThVNOGn9gjKuSFtylgoFcu4d2
	g87uJ+/AelwWdkmYwbx7iT1W9tN9JgnJGAzvQhqy7jTD+7ElUlIRhuOJOS/KTkbS6OHj
	OAKQ==
X-Gm-Message-State: ABUngvcc6n2wdlYqCmcUPxJw8ewN0649GTlGpGGWk4R3E7Ft2dTCjf8jg6MLTyxyfEl7Wg==
X-Received: by 10.99.100.132 with SMTP id y126mr12102921pgb.177.1478539461013; 
	Mon, 07 Nov 2016 09:24:21 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d844:e9e6:5f6d:525])
	by smtp.gmail.com with ESMTPSA id
	e1sm42050844pap.11.2016.11.07.09.24.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Nov 2016 09:24:20 -0800 (PST)
To: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <b7805230-409c-96cf-1562-28bf6a8f81dd@gmail.com>
Date: Mon, 7 Nov 2016 09:24:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
Subject: Re: UTF-89 support
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
X-List-Received-Date: Mon, 07 Nov 2016 17:24:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 11/7/16 3:48 AM, Keskinarkaus, Teemu wrote:
> Hi,
> 
>  
> 
> I tried googling this and reading the manual, but I guess this is too trivial
> or I’m doing something wrong.
> 
>  
> 
> I’m trying to get UTF-8 support to my image. UTF-8 locale more specific. If I
> run locale –a command I get these locales listed:
> 
> C
> 
> POSIX
> 
> en_GB
> 
> en_US
> 
>  
> 
> I added this line to my local.conf:
> 
> GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8 en_GB en_US"

you also need to set IMAGE_LINGUAS to include it into image
e.g.

GLIBC_GENERATE_LOCALES = "en-gb"

> 
>  
> 
> That didn’t bring UTF-8 locales although by looking at the comment I would
> assume they should be already there?  I’m not entirely sure why the UTF-8
> locales are still missing and how do I get them there?
> 
>  
> 
>  
> 
> *Teemu Keskinarkaus
> *Software system engineer*
> *Cell: +358 400 330047*
> *Fax: +358 207 669199*
> *www.crosscontrol.com <http://www.crosscontrol.com>**
> 
> *CrossControl*
> 
> making machines smart, safe and productive
> 
>  
> 
> 
> ------------------------------------------------------------------------------
> 
> Actuant Corporation Email Notice
> 
> This message is intended only for the use of the Addressee and may contain
> information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the
> recipient(s) named above. If the reader of this email is not an intended
> recipient, you have received this email in error and any review,
> dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender immediately
> by return mail and permanently delete the copy you received.
> 
> Thank you.
> 
> 

