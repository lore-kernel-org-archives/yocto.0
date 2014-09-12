Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36DB4E00799; Fri, 12 Sep 2014 13:10:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F4EE006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 13:10:33 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id dc16so1294684qab.37
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 13:10:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PRW+3YxZENeI7PlFLdMyI9VJB85v1d0ZLCPd5SqugJU=;
	b=c1eMw23eoYzqZ6QCH0M7Ov6A+hshnBnTvR0Nj6QxdF0XvnyyD3RFwzZ/hbBa6AP9b9
	cTHV3JAP+qUBi586W8tbOqFXwzTpQOsahtK1ggJKZ72kitcOs7PE+77ESoJ6nYvUzQmh
	y9MZSwu6L9n/+j3eAdD6HPROt2mbKAq2t1RfocRSDAmymqThJtRq/99y+066JaEk+zuL
	R5j6+I3IuBjQPkj0WsEwf+Zr96RRbnCn5v59Q187GlSdLHW/ch5FcXGu7ZtwyyBEqTua
	oIX38677oD7GE5nbxdtDfeAIoI5OLuGeBGYjxbuE3NCa+FhyhpBC9Uh2XaY+ATWV8r7k
	wY1A==
X-Gm-Message-State: ALoCoQktyYNRXMxJaK4K1MNNH2q+k+1XqCf8/kE30g060B0twqkFc3R0Fv0uvmo4waUPx8ya5V4F
X-Received: by 10.224.126.202 with SMTP id d10mr15263061qas.22.1410552633079; 
	Fri, 12 Sep 2014 13:10:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Fri, 12 Sep 2014 13:10:12 -0700 (PDT)
In-Reply-To: <541325E0.8070001@windriver.com>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
	<1410539753-24011-3-git-send-email-Vincent.Riera@imgtec.com>
	<541325E0.8070001@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Sep 2014 21:10:12 +0100
Message-ID: <CAJTo0LYHm1R6jm+Tnws=P6gMc=BZDXXYscUnrxeOkAKxsAbRbA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] Add MIPS Creator CI20 machine
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
X-List-Received-Date: Fri, 12 Sep 2014 20:10:45 -0000
Content-Type: text/plain; charset=UTF-8

On 12 September 2014 17:57, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> On 14-09-12 12:35 PM, Vicente Olivert Riera wrote:
>>
>> Add support for the MIPS Creator CI20 machine. You will need to build a
>> working kernel for this board using this kernel repository on GitHub:
>>
>>    https://github.com/MIPS/CI20_linux
>>
>> More information about this board can be found at:
>>
>>    http://elinux.org/MIPS_Creator_CI20
>
>
> All of the meta-yocto-bsp reference machines are using the kernel, and
> kernel version of linux-yocto* so we can ensure a consistent update
> cadence and set of features.
>
> Something that I'd like to see continue.
>
> I can see how the ability to re-use the tune files makes sense, but
> the BSP should follow the format and structure of the existing ones,
> otherwise, the value in pulling it into the common layers isn't there.

What Bruce said.  You've a specific machine that needs a specific
kernel, so this can happily live on as a Yocto-compatible BSP layer
outside of meta-yocto.

Ross

