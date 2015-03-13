Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54B07E0087C; Fri, 13 Mar 2015 07:02:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1E7E00871
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 07:02:32 -0700 (PDT)
Received: by ieclw3 with SMTP id lw3so107106248iec.2
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 07:02:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=6MOuExA3yo8HtxWhSH/BvMtdCYYzjwszWRE+5cLrU5E=;
	b=Oe6fn4ICdnvSl2i57vVePeFjrIB4MPZ7wTHfSDsmxboLKKQOxvcbFusmn57a9zBSw3
	AtqIoAJuQa6r2xbkGWQycgjYPHAIFbdMWi8FD59BwipM2aqYXBwhw11S2oUNJ7PikXM/
	yWQA59+blQiEqIFijUKPmCPnvGd30Rz16oryXFQwE7zbspV211k/PhM09dGyaYOPBrvq
	s09jdNcDeHR+YZr/wqJb20II3Ab+BuurVxOjtmgjeU8rivI2gdsdKe3QgGuy7WcDhtEm
	ozF7Q6UjAKEPa1GkCa5rryY1zQWIciOhuQWGeAiT9t5pZ9aOh4zIBP7fHRyRNeXsc2mO
	LZHw==
X-Gm-Message-State: ALoCoQkEWPPmItVcbFuU4kgE+h/Dv77nAT7JEmuaiMGzOmguJrQSC63ouLqgPZDZLWA3OamC2url
MIME-Version: 1.0
X-Received: by 10.42.85.82 with SMTP id p18mr57254586icl.58.1426255340364;
	Fri, 13 Mar 2015 07:02:20 -0700 (PDT)
Received: by 10.36.57.11 with HTTP; Fri, 13 Mar 2015 07:02:20 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <CAFicg85=XSAvYdmtfmnWRkMkpNPnvN19r_4kd2MKHnNJvrbhSQ@mail.gmail.com>
References: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
	<CAFicg85=XSAvYdmtfmnWRkMkpNPnvN19r_4kd2MKHnNJvrbhSQ@mail.gmail.com>
Date: Fri, 13 Mar 2015 15:02:20 +0100
Message-ID: <CAFicg84CnZFUwG0YVzEbDSeMPYtb10w_CuhUZ9w1VjVp0_W7+A@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Darshan Patel <darsh.jp@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Using Pre Built Toolchain in Yocto Tree
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
X-List-Received-Date: Fri, 13 Mar 2015 14:02:36 -0000
Content-Type: text/plain; charset=UTF-8

Hi Darshan,

On a second thought, feels like I misunderstood your question. Please
refer these:

a) http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#optionally-using-an-external-toolchain
b) http://elinux.org/images/c/c8/ExternalToolchainsInYocto.pdf
c) https://www.youtube.com/watch?v=FZpKbSHRJro

On Fri, Mar 13, 2015 at 2:50 PM, Maxin John <maxin@maxinbjohn.info> wrote:
> Hi Darshan,
>
> On Fri, Mar 13, 2015 at 12:43 PM, Darshan Patel <darsh.jp@gmail.com> wrote:
>> Is there a way to configure Yocto to use Pre Built toolchain (like
>> downloaded from CodeSourcery, etc.). I want to avoid building toolchain
>> because it takes too much time and using new toolchain is not of my concern.
>>
>> I was using this feature in buildroot.
>
> Download the pre-built toolchain from here:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/toolchain/
>
> eg: armv7 toolchain for an x86_64 host machine  -
>
> # wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/toolchain/x86_64/poky-glibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.7.sh
> # sudo sh poky-glibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.7.sh
> # source /opt/poky/1.7/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi
>
> # arm-poky-linux-gnueabi-gcc hello.c
>
>> Thanks in Advance!!!
>>
>> Regards
>> Darshan

Best Regards,
Maxin

