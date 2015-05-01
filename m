Return-Path: <ccoutand@widenorth.no>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 125A9E0095F; Fri,  1 May 2015 00:48:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A723BE0049A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 00:48:04 -0700 (PDT)
Received: by wiun10 with SMTP id n10so41690863wiu.1
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 00:48:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=bs93VEXOkcYNQjQQxnqHSzso6yTlV7+DMcN9lyLt9lM=;
	b=boNdrRjTcXXR0D3a0m0vpu/Hb5mv+nDkv9kAi6CHCh9cPYS6ic92FlKgcAWByae8+M
	aUYIsTBze+8uy3/PNxxWhhRl7rQIFYi5dRyOKKW9D0+vkF/RyPDYkQupqEpp7kvZkMTM
	hocEt3ku8dUEGEkIVmmCuMdQ+hdDSAxcbFxBXKg+cC5lLSOFxpaffgfV+ogJiB9oPjDF
	Z9+F/i2HtEqrAtTGVtyCsZ1+TBsdwaRttff8C+RmuRWZD14CQVRymGk1ussTX42sknhS
	BMrdRiBfuK0xHJqB0PFAu90mUJX2M6n2y8eeWJKdFfPd15EIYMaH+CTqtbNivy+OBzZj
	CZ3Q==
X-Gm-Message-State: ALoCoQmLM+casPnIKgIcHoGv6LpQ6hsuNG6CrceLgM99xgZZ7NGGaicib1XVvm3Q7ToIWB/TfXeY
X-Received: by 10.194.104.201 with SMTP id gg9mr15429368wjb.113.1430466483276; 
	Fri, 01 May 2015 00:48:03 -0700 (PDT)
Received: from [10.0.0.126] (ti0071a400-3573.bb.online.no. [85.165.205.2])
	by mx.google.com with ESMTPSA id z12sm6529938wjw.39.2015.05.01.00.48.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 May 2015 00:48:02 -0700 (PDT)
Message-ID: <55432FB0.4050204@widenorth.no>
Date: Fri, 01 May 2015 09:48:00 +0200
From: christophe coutand <ccoutand@widenorth.no>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
	<6115291.3O8KzSeDpB@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <6115291.3O8KzSeDpB@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to add openmp to the target image
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
X-List-Received-Date: Fri, 01 May 2015 07:48:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Thank you for your help.

replacing
IMAGE_INSTALL += "libgomp libgomp-dev libgomp-staticdev"
with
IMAGE_INSTALL_append = " libgomp libgomp-dev libgomp-staticdev"
in local.conf seems to do the trick, the library is now part of the 
target image.

Regards,
Christophe

On 21.04.2015 12:12, Paul Eggleton wrote:
> Hi Cristophe,
>
> On Monday 20 April 2015 13:15:06 Christophe Coutand wrote:
>> Is there a way to include the openmp library on the target image? when
>> building the full target image for a freescale processor, I get gcc etc...
>> installed on the target filesystem but not libgomp. It is however correctly
>> deployed when installing the SDK on the host machine.
> The library is packaged in a package called libgomp, headers are in a package
> called libgomp-dev. You can add these to your image if you are looking to
> build things on the target itself [1], but if you are simply building an
> application that you want to link to this library from within the build
> system, you should not need to explicitly add it because the build system will
> pick up on the dynamic link and add a dependency from your application package
> on the libgomp package automatically.
>
> Cheers,
> Paul
>
> [1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage
>


