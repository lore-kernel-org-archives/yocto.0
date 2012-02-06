Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 367C4E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 14:47:36 -0800 (PST)
Received: by qcsd1 with SMTP id d1so4376117qcs.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 14:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=IY8zNEwf/FybpGkmpQUooRNDcX84dEcKV6n507vCc5I=;
	b=kAFFImWKh3zZkw+B87TLv8D5zPoi03G/L+gJWaa3qf3wWdOMMhC/iLmf/E741w4pNT
	sAnUiT7GKYy/Q5uAg3xIZUN7tV4J3KSH4OE6RPr0ZYus32Rsi5QWyZ2J64JkxgM5M2Gu
	Rk/25GfDri4F3PUA2gBH8zrOiLx5ukYCgGAY0=
Received: by 10.229.136.19 with SMTP id p19mr7490979qct.133.1328568455553;
	Mon, 06 Feb 2012 14:47:35 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	bd19sm36566380qab.17.2012.02.06.14.47.34
	(version=SSLv3 cipher=OTHER); Mon, 06 Feb 2012 14:47:34 -0800 (PST)
Message-ID: <4F305886.7010802@gmail.com>
Date: Mon, 06 Feb 2012 17:47:34 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
	<F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
	<4F2FF8F6.7060601@linux.intel.com> <4F300A55.2060305@gmail.com>
	<4F300E98.6000307@linux.intel.com>
	<CANFv2Ekqtp2bWPRDFkF4bLGsv6O68R59evC09zjygOfKgTr+nQ@mail.gmail.com>
	<4F301BA8.4020102@linux.intel.com>
In-Reply-To: <4F301BA8.4020102@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Feb 2012 22:47:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/06/2012 01:27 PM, Darren Hart wrote:
> On 02/06/2012 10:19 AM, James Abernathy wrote:
>
>>      If we could make the "How Do I" section of the wiki broken into
>>      sub-categories so each "How Do I" is a separate item to be edited.
>>      That would make it easier to find, create, and edit these items.
>>      Also once an item found it's way into official documentation, it
>>      could be removed or edited to point to the official doc.
> The wiki will do this automatically if you use headings for the
> questions instead of the bold ''' syntax.
>
> You creating headings with the = characher
>
> = Heading Level 1 =
> == Heading Level 2 ==
> === Heading Level 3 ===
> etc.
>
> I suggest starting on Headling Level 2, leaving Level 1 for the title.
> This should also automatically present a Table of Contents at the top of
> the page which aids in navigation.

Okay, I've made some edits using the == Heading Level 2 ==.  I think it 
solves some of my issues for editing, etc.  Only need the complete edit 
for starting a new topic, I guess.
> This is standard MediaWiki syntax, for reference:
> http://www.mediawiki.org/wiki/Help:Formatting#Level_2
> http://www.mediawiki.org/wiki/Table_of_Contents
>


