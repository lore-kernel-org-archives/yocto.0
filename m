Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D9BCE00C77; Mon, 19 Mar 2018 17:02:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBB5E00547
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 17:02:11 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id x4-v6so2327819pln.7
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 17:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=iAFA2UYIHjCD4otRihTSj8WQml4OxeThWOQVyVrHDu4=;
	b=C/xa67bvBBNxqvfMEo6L30Z9Ry2iX8pu4uZ2QTBtD7QTbIrxoqlZklcl83RVrYLq0D
	3vepLDrgF4eHXPPbGjPZAlBk2fR+/YMG548UUoG16kHVik7Eu6kuI8AY8qi8CyKmpESB
	SdC/X5/BCwKwcn15Z5kCDfoe/6IL8VwXeaqvVW/F3eiHALV7LAjCkvuAJ8J6l+Jp9nJQ
	BpadDYVaP1d3XKWBbe5Caq2fa2q73v8//lCSZmcmg3BqKp73P4scDrW4VozLe0+Un0S2
	TbCzjGBsfgIexTTkz9MwK+d7VSS82r4NngYsDfVscSGuXK5S5X7Xp5X6DK7ejDZ+2dTX
	Ws8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=iAFA2UYIHjCD4otRihTSj8WQml4OxeThWOQVyVrHDu4=;
	b=nkmVorCWQ8qOpnDlA7MB6MLaOIvJAxuoJdFDLDRcvqb6PD8c/jQC+VnakmvEgSWXR0
	5wCLk3sByPd+Kjx9AsijbezyHWNNfDIEDy/aondgUWB7fSyJmiJqdMZMjIHlvxOP1vBf
	zlutr54Et2xWMqfHweanZWFrxAREe7vxbtg5G2j8Bviw/ur+5mBxMLVNJE7DxMInc/qp
	ELHPwvwOp2+jRy1hSrIBOkXBgDoodi56DxsMpM+uyp8w/+zdNbxEiJauqsG5pt8eCcOR
	1xUuK2dM9Sp1gtD7W2UdUkWBg4eIU8c5zINrKne5lkPlxCfdzrvG5YvqVZPUyfGO2SB/
	2vMA==
X-Gm-Message-State: AElRT7E4D16eFc2AaZLG1LQm5da+827yA8pj5UHJQHfkiuky9jqj+8Nk
	iraXVfS9CU9+pLtoYWBMIm3HKizc
X-Google-Smtp-Source: AG47ELttMv4ZkEuMjxVA32/KPtm8ymXxdkmMbwULYrw60MMxht66LzOuA6HX2+Olsbq23gV2BOlvww==
X-Received: by 2002:a17:902:a70f:: with SMTP id
	w15-v6mr14317060plq.79.1521504130719; 
	Mon, 19 Mar 2018 17:02:10 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:5c68:e4a7:d51b:aa2b])
	by smtp.gmail.com with ESMTPSA id
	h80sm387375pfj.181.2018.03.19.17.02.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Mar 2018 17:02:10 -0700 (PDT)
To: Steve Pavao <stevep@korgrd.com>, Andre McCurdy <armccurdy@gmail.com>
References: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
	<CAJ86T=UGbOp3MtiMC=rL74qHXLrnVfp0k-CTXcdPqZbeUbCytw@mail.gmail.com>
	<156ED905-4814-427E-9F21-8F92AAE0B020@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <defb3899-5147-45ec-8a5c-1f769ed7049b@gmail.com>
Date: Mon, 19 Mar 2018 17:02:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <156ED905-4814-427E-9F21-8F92AAE0B020@korgrd.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ARM CPU version question
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
X-List-Received-Date: Tue, 20 Mar 2018 00:02:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/19/18 4:35 PM, Steve Pavao wrote:
> Hi Andre,
> 
>> On Mar 19, 2018, at 5:32 PM, Andre McCurdy <armccurdy@gmail.com 
>> <mailto:armccurdy@gmail.com>> wrote:
>>
>> On Mon, Mar 19, 2018 at 9:49 AM, Steve Pavao <stevep@korgrd.com 
>> <mailto:stevep@korgrd.com>> wrote:
>>> What’s the recommended way to be able to propogate target-specific 
>>> compile-time CPU tune information to affect the build of a source 
>>> file in my own custom layer?
>>>
>>> For example, if I’m building for an arm6-based target, I’d like to be 
>>> able to have the __ARM_ARCH_6__ symbol be available when the Yocto 
>>> system builds my custom layer.  The BSP for such a target obviously 
>>> defines this symbol when building its files for such a target.  Is 
>>> there an easy way to propagate this information to my own custom 
>>> layer, to affect my own sources?  Maybe my recipe needs to include 
>>> certain conf files from other layers such as meta or the BSP layer?
>>
>> This kind of macro is typically defined internally by gcc, depending
>> on the -mcpu etc options passed on the gcc command line, ie options
>> which are included in the ${CC} definition setup by OE.
>>
>> Therefore all you normally need to do is ensure that the Makefiles etc
>> for the components in your custom layer all correctly respect OE's
>> definition of ${CC}.
>>
>> A typical bug in handcrafted Makefiles is to force CC to (e.g. CC =
>> "$(CROSS_COMPILE)gcc") and lose the original value passed via the
>> environment.
>>
>>> Currently, I notice that architecture-level symbols are available to 
>>> my custom layer at compile time, such as __aarch64_ and __arm__, but 
>>> not CPU tune information, such as __ARM_ARCH_6__.
>>
>> The exact set of macros defined by gcc will vary depending on exactly
>> which ARMv6 CPU you are targeting (and to some extent, which version
>> of gcc you are using). If you have code which needs to be enabled for
>> any ARMv6 target then you may have to test multiple macros. For
>> example see the way in which openssl defines __ARM_ARCH__
>>
>> https://github.com/openssl/openssl/blob/master/crypto/arm_arch.h
> 
> Thank you very much for your insight, Andre !
> 
> I think I may have discovered a specific situation which is causing the 
> problem to occur for me.  It seems it occurs because I am trying to 
> build a kernel module under the recipes-kernel directory in my custom 
> layer.   A colleague pointed out to me 
> that meta/classes/module.bbclass explicitly unsets CFLAGS and a bunch of 
> other macros in this situation.
> 

it wasn't clear if you were compiling external kmods. Now that sets it 
straight.

> Maybe I need to put in some custom shell syntax in my recipe, to export 
> __ARM_ARCH_6__ or to directly define the compiler macro when needed, 
> based on the value of the TARGET variable.  I wonder if there is a 
> better recommended solution than this, though.

kernel modules are built using kernel flags for best results, thats why 
you see that we do not enforce general cflags since they may be 
enforcing userspace ABI options into kernel, which is not right. Further 
more kernel build system constructs its own compiler commandline from 
kbuild.

You could add something like CONFIG_CPU_32v6K=y or CONFIG_CPU_32v6=y
to your kernel .config and that should provide you with right flags 
during your kernel module compilation step.
> 
> BTW, my kernel module contains conditionally-compiled code for 
> initializing the ARM PMU correctly for each CPU case.
> 
> - Steve
> 
> 
> 
> 

