Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F30E00DE1; Tue,  6 Feb 2018 12:25:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20865E006E3
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 12:25:08 -0800 (PST)
Received: by mail-wr0-f175.google.com with SMTP id t94so3319969wrc.5
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 12:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=OZ0fBL63aPblyCwU8LnKphzPh7s2nBxjpvisiomI9UY=;
	b=lJhSS6WobakptU0IYAAmH1WBVdUAzTL3ftAJSBAoAvAWYqmKhXpiB2d10OPHiey44i
	0+6c6nb+setWa0AqhvW79Jqa40lXMFGTqpkxgndPSolVPvp6p6A6+6P9syYz0v24fiq8
	NEY2/At6XGabpxhwfAixj1wNzXI3HnpSiZWJYzxiZpSyZF6PJLCqJGGpiFH+MgHxzX/9
	pz7IvH7ZdMBpv3gjdVDnuBgoDc637MNof7XxkmwfKevwGHJMVSVQZkSnqT4FneEmgUOk
	MJvut5utPhnpIP+JHVGxth+SSLSjJgL8OtAuCCOd16BNWAN0wTsyI4SUduqzb9Dqf5Of
	3D5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=OZ0fBL63aPblyCwU8LnKphzPh7s2nBxjpvisiomI9UY=;
	b=PwYs4MB+dszXgFYvfpWNrtKUYUtyYzfclcZ6MuU49DHCpUdxXsDXHD/sAMT31R3PxI
	zlJLDzbO5DML2V7zPpcdHewSFPNijEpQkLPh5wiw9mQZ7jrzbMmgLhb4VWCAkMtsMIvC
	Jt8TQDppMKgKPS7LiTTj60pIFv7kTZAoBZnJBC6uD7uNydMgTD29LY4l2W5GhRg2wqA6
	aKOut19/IV6iOKxnTGXoDFRqC6c7iSbHvJeiAp16ie6IZmxw3mFfgt9GC0WFPIS3Dfhz
	rPPmjic8IlmL47UpCIHSzwYfqipOngZOilr9ghU9oy+7xZEZyOdeni+/XnAQxSw5IKs4
	iWqw==
X-Gm-Message-State: APf1xPBAtcxp0idfjpMyi4D8h+MiWtNqhybmOgh3LsO52yKhsepE2BW3
	AESo2UzMDiGZT8BNYmI1sh4bB6s4
X-Google-Smtp-Source: AH8x224nGk+bjndYhu7cOLwENNGTJeGvIFn4tJtctw2m/mYzizfopGT0munhmVr+BZmauNNc95LAnQ==
X-Received: by 10.223.159.66 with SMTP id f2mr3408589wrg.142.1517948707667;
	Tue, 06 Feb 2018 12:25:07 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-138-178.home.otenet.gr.
	[2.86.138.178])
	by smtp.gmail.com with ESMTPSA id w133sm336771wmg.5.2018.02.06.12.25.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Feb 2018 12:25:06 -0800 (PST)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
Date: Tue, 6 Feb 2018 22:25:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Tue, 06 Feb 2018 20:25:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

On 2018-02-06 14:53, Mircea Gliga wrote:
> Hello,
> 
> I have a problem providing a static library in the SDK:
> I have a recipe that builds a library. It outputs an -dev pkg with the 
> /usr/{include,lib} libs in it and a -staticdev pkg with the static library.
> The main pkg is empty, in my recipe I have added ALLOW_EMPTY_${PN} = "1" 
> because the -dev and -staticdev depend on it
> 
> In my local.conf I have added:
>      SDKIMAGE_FEATURES += "dev-pkgs dbg-pkgs staticdev-pkgs"
> 
> Then I run
>      bitbake my-image -c populate_sdk
> After installing the SDK, I get the headers (from the -dev pkg) but not 
> the static library from the -staticdev pkg.
> 
> Why is that ? From my understanding specifying staticdev-pkgs in the 
> SDKIMAGE_FEATURE should have this covered.
> 
> I was able to "force" the install of the -staticdev pks by adding to 
> local.conf:
> 
>      TOOLCHAIN_TARGET_TASK_append = " mylibrary-staticdev"
> 
> Do you have to manually take care of this ? Then, what's the purpose of 
> SDKIMAGE_FEATURES += " staticdev-pkgs" ?
> I would like to  have all static libraries in the SDK.
> 
> Thanks and regards

This sounds like:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=11724

> 
> 
> 


