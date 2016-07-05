Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E7FCE00DC3; Tue,  5 Jul 2016 06:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91C22E00D87
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 06:33:09 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id k68so8671146vkb.2
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 06:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lxDvb0zFsfQquS3MdD7ZMBrMeMG1yXdc+E45R8LtNhA=;
	b=Iuf1qsL/nDQFx/yUbNsfX+oRgWyZaBQGjDkaEudVnxknRd6CwDrFp/jfXLp5N5Rx4b
	WOk/ZMS2stNAPb6oE0hc6qHNdnVOq0aLu22/B1LOQhW94Y6/sfm3TJOdbkzclvWbOZgh
	SS1SAfCBOpuMmROnuKwpN73gZezAkjbUuKWPsZh3HtXOC3FKBeBwZtdNSV3Ik1kvLMoF
	PHy/9GKXu7xqILKsUwR/FfoGNfR2P4fO+QtxITrQcTgJTSYbBMQaqgYM+NvWUZVkE1TW
	pjx7bi8PY400C8556DIt46Ck9BVbwsS2u4vAjNmOeb2nbRpJqUGH6TEwrFsXteaS5PT9
	Lm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lxDvb0zFsfQquS3MdD7ZMBrMeMG1yXdc+E45R8LtNhA=;
	b=dgCp/6xWGNVft2RCkfSo25XBPhDU/K37eQsveBnTn6JDXTDBPFlp25czWUTSuTYrPg
	sT7SEbJIY+vur2JdcnL1gW5e+4GDL/3mQSZfLJq3QRORSLHDp7UHWZoOhfs3HtELOz0N
	fD4+yyAURYxBZ7eiwn7kyJI22Y4co9l4FAd419paAm6azpOk7IAaQQLoCTm7srEau7nk
	V0hyRnIS3HYJpHewDtWUtnlknGoC4aG1i5SBBoU+kw37rkDydZYlHaSurvlQVIomCZxf
	WcXS4iKCWeMGLPI3jBptLrzP3/zuowbtRBiXijKUrf1hAIW/rTxeDoQ+BT7CGDT+MqbG
	JgAg==
X-Gm-Message-State: ALyK8tL1vYy+ajfszccUqIk1Ivsrc429DbmXHzl72fZ5s+I+nQbtOH7XKlnVXoln0Z5WeG2lh/62Ok6Bm07LGw==
X-Received: by 10.31.70.193 with SMTP id t184mr7629793vka.123.1467725588446;
	Tue, 05 Jul 2016 06:33:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Tue, 5 Jul 2016 06:33:07 -0700 (PDT)
In-Reply-To: <CAJTo0LbXHJLFxqm9ix-W_W2jC0=70kWo_4Kx_Gqqa7gvgm0aXg@mail.gmail.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
	<CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
	<CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
	<CAJTo0LbXHJLFxqm9ix-W_W2jC0=70kWo_4Kx_Gqqa7gvgm0aXg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 5 Jul 2016 10:33:07 -0300
Message-ID: <CAF3SDA5u75SyjS0uzt2pA-hutpBr0WXzFiQO8kYHt3jETJiZiA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 13:33:11 -0000
Content-Type: text/plain; charset=UTF-8

I see, well I didn't know about that, thank you very much for pointing
me that out. :)

2016-07-05 10:24 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 5 July 2016 at 14:10, Daniel. <danielhilst@gmail.com> wrote:
>>
>> I faced problems with symbols being droped if -l option is passed
>> after -Wl,--as-needed. To circumvent this I changed my Makefiles to
>> add link options prior $(LDFLAGS) expansion.
>
>
> Note that --as-needed only applies to links specified after the option
> itself, so changing the order to be -lfoo -lbar --as-needed means that
> as-needed isn't being used and can just be removed.
>
> (or your link ordering fixed)
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

