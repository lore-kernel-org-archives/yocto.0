Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A72E00B92; Thu, 14 Feb 2019 01:13:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D80A9E00BAF
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 01:13:42 -0800 (PST)
Received: by mail-pf1-f169.google.com with SMTP id n22so2794974pfa.3
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 01:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rQ/V+Z1YQZi9K+wCZb0l1ULffihAqm2DRy8b3lUdDyU=;
	b=L1wslxy2IXG7FnaIxALNlTFZvn6rmV16AUIVBh/BUQQbs24bgC/e/+21YG550flBy3
	gk95KN4g3YgffKJP9lHDcOrDeC8LABGEnBmRD+iPJkcbP23OYv6Am3w0RLJfQVELttDH
	s7bPkAQReATKcDgeebBeQapCuBObd6IrlLw0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=rQ/V+Z1YQZi9K+wCZb0l1ULffihAqm2DRy8b3lUdDyU=;
	b=CLv3YVDelQzLfv3OlbMPVtOo0/prQW6Yq4p+9WGM9jEZ7RMIMpgn2cJ8D9LeCWoDGa
	rCLZHVxbBOh3xLgjzdvfZmQu6r7ieXVURGki06eWmme5msI2mTMwP6WSzdkaoFD3oLDd
	wTgz6Zd3T9Ea+ROH6AjlDFoM75oN+46NMwvAEzHlWq61aZfoHKd4q+558MqRlLF652NH
	oy4YE3wbFzJXMh7aj9Vkj3059YyO9dsAVokw3mL9orEATNGaBkKC7EWCrNLysQ7b5MIY
	zX54tb4jFs2jqVoi3SHdgrhIXFzeHn6DWfrJKUNYyXXrkglx5+GB19RpkhIU+iQYtGiR
	2qZQ==
X-Gm-Message-State: AHQUAuYRr8lS7OSCCs41X4mDsvQLj+tecfK4eV2KO+dzAADsAyWDzhHq
	cdVFBHwVEOxayIuM5wc+NNk1hA==
X-Google-Smtp-Source: AHgI3IY9IuSC8ETPGyDX/YiAGk6RZeF97rhTD5GzUEaW2nvv7CdF17H/qf58GBjT6EJNCSyw+asmjQ==
X-Received: by 2002:a63:f40e:: with SMTP id g14mr2775506pgi.326.1550135621708; 
	Thu, 14 Feb 2019 01:13:41 -0800 (PST)
Received: from [10.0.0.243] (c-67-189-24-112.hsd1.or.comcast.net.
	[67.189.24.112]) by smtp.gmail.com with ESMTPSA id
	g14sm4397731pfg.27.2019.02.14.01.13.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Feb 2019 01:13:40 -0800 (PST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
References: <03b301d4c2ed$7497f360$5dc7da20$@gmail.com>
	<CANNYZj_PY61tmw=JjP7PPqqSVJff6kd=rsv=daNscx9eSkNWSA@mail.gmail.com>
	<1634479.1jWiZZ8UfD@localhost.localdomain>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <6cc49be5-a9f3-bf38-2570-b12048dc4471@linuxfoundation.org>
Date: Thu, 14 Feb 2019 01:13:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1634479.1jWiZZ8UfD@localhost.localdomain>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW07'19
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
X-List-Received-Date: Thu, 14 Feb 2019 09:13:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

The regular 3 hour update wasn't installed on the new server. I have 
repaired that and added the RRS updates as well..

The update has been run several times in testing and I'm curious if RRS 
has caught up as expected.

On 2/12/19 5:57 PM, Paul Eggleton wrote:
> Hi Alex
>
> On Wednesday, 13 February 2019 6:22:23 AM NZDT Alexander Kanavin wrote:
>> On Tue, 12 Feb 2019 at 17:10, <sjolley.yp.pm@gmail.com> wrote:
>>> The recipe reporting system integration with the layer index is available
>>> at: https://layers.openembedded.org/rrs/recipes/OE-Core/2.7/M3/ and the
>>> historical data has now been imported.
>> Sadly the new RRS still seems to be suffering from the 'outdated info'
>> problem. For example glibc, or python3 recipes have been updated to
>> latest versions, yet RRS still shows that they haven't been.
> We're reliant upon the layer index updating and it appears that's not working
> at the moment. I have asked Michael to look into it. Thanks for the report,
> I'll reply back here when things are sorted out.
>
> Cheers,
> Paul
>
-- 
Michael Halstead
Linux Foundation / SysAdmin


