Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC387E00D63; Tue, 16 Jul 2019 07:03:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A0BE00798
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 07:03:02 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id h6so40041672iom.7
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 07:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=8dCX5pXVpjO2cC+Z8Eb/pFcYDwr/XZX4uG13mzdhYxU=;
	b=fGhp6xQZyGHKFEB1gn3O1rB8J9aAfZjvHyHH7fjRCf+MMG4UxVjTuKWXZU3bf8ah6W
	gfp5jLsELy5T741umusiADLSCSCJck7FczBx6OOhGCkb4jToCE9Y1odF7oihZ1YsL0Lv
	XfkT9o0tucE1xVOYur2mYbhMWrFh4HrWRINFjL4i7tJkIZsOiVOVTge89b1WJ7qKtu9a
	z3yYh/5cicslDt5JWlNDj5sfqHmj7bL49nu+lBS/P31Ws5sFbhT7I+6or0aWT/e0DWZa
	y845inEHac2tXyxZ13S0YtmzX3Uo2A6ESTSVmY9bj9gaE35K7gFL83c5VCF5NNbxbMqc
	kXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8dCX5pXVpjO2cC+Z8Eb/pFcYDwr/XZX4uG13mzdhYxU=;
	b=coR58rmf+y46mzSx8/aqmsX/BT87NGcjGAt9AwZ+C8uIeWzsWWE1JW91UYu74paDp4
	gjn1wxcdLfaBewOS+PL7W6+NHNpyONwd8x8NvSqq5qJyigsNIuUTRvFF6qhLaO7HrQ59
	3t47bk9Zed7Dho1UwYenVX1rDbv70Ty8OYZTtNHVEXjHjDbWqOpbohhlBfXs7RBMV7JG
	JAdtxqRw3PYFGtaWs74qEUXQ5aHoof9YiFe/Jo7dD6+jl1c3gEPwsywJGBpp7elBTwMQ
	hT8JfryIalUGaXuDZsM7GUm3xKyBPhz+uH3VpralYvNspB8ELJVsZv1MjKEB0kN4A+tl
	Z+jA==
X-Gm-Message-State: APjAAAU0EGJLae07UmTyfNz2piyRHmMq1ck5Uyt2vAnUfaEU5YMpvITB
	OHrTPUoF5lwpVq/eJzLkXcQabyAs
X-Google-Smtp-Source: APXvYqx9bBhefnP55huBFSXVJZArTNv2NpDQb2pDaSEW1F/MAEq4ZIz4+4/pzrC+YZo5iuklDAQoPA==
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr687786iom.36.1563285781881;
	Tue, 16 Jul 2019 07:03:01 -0700 (PDT)
Received: from [10.30.197.57] ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	p10sm36047609iob.54.2019.07.16.07.02.57
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Jul 2019 07:02:58 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
	<emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
Message-ID: <19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
Date: Tue, 16 Jul 2019 09:02:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wpewebkit, cog and libgles2
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
X-List-Received-Date: Tue, 16 Jul 2019 14:03:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 7/16/19 8:43 AM, Andy Pont wrote:
> Ross wrote...
>
>> Well the libwpe build script says this:
>> find_package(EGL REQUIRED)
>> (https://github.com/WebPlatformForEmbedded/libwpe/blob/master/CMakeLists.txt)
>
> I’m confused now as there appears to be two active meta layers that 
> support WPE WebKit. The one you reference meta-wpe and the one I was 
> originally using meta-webkit (https://github.com/Igalia/meta-webkit) 
> as that was the one that included Cog. Is one preferred to the other?

AFAIK, meta-webkit is the one you should be using. Its the one currently 
being actively maintained by the WPEWebKit folks.

>
>> Which suggests that you can't build it without EGL. You should
>> investigate whether EGL is simply an option, or whether it's used as a
>> fundamental part of the rendering. If it's optional then the Mesa
>> recipe can build a software GL implementation, if the latter then
>> you'll need a new browser as software GL is *terrible*.
> I’m not wedded to Cog as a browser. I just need something that can 
> support HTML5 and Javascript as it will be running a single page 
> application (SPA) served from localhost.

I've used Cog before. Calling it a "brower" is generous.... it doesn't 
have any of the normal browers trappings like history, navigation (e.g. 
back button, refresh), tabs, etc. It's probably more accurately 
described as an HTML5 rendering application, which sounds like all you 
really want anyway.

FWIW, I've always been under the assumption that GLES was required for 
WPEWebKit.

>
> -Andy.
>

