Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59161E00A3B; Mon, 27 Jul 2015 05:26:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6224E009D6
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:26:06 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so74205171igb.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=0lKkM8//Aw29VQfDgOpP9OXipVm0tywqL5dYc1jrJds=;
	b=OW9IKlCNZ6rQpJEExXgk10GQzRAyio3BtAleTEydqXnVZ/wG96m2ALTjSxYU8DLuFm
	++gL1Rd5LNs8/dnzjDTgTE3Rmab/2RKVJ3/r9eikzzNc4R8CRdeaj73k9YZIFiIwRLzg
	HkNjT7DpKbQTZLApEXWXDRCJ5ARzyndI+vYQjNQyZ9iPL9J6ur2C4fD6J7nc2kca+1X1
	XsKlP8jMfA0wGNsDZqpGf23bKz1o6WhPn2JWl9j7lcziL8AEc7OftNOeXpHF0JHR187w
	syiCUxuRqRS/c1LCsk4KVI8c2aMjp78/8e5gQAJAdc3IDNG2gnjQF5d5wEQlmkfCCEvg
	CCog==
X-Received: by 10.50.18.42 with SMTP id t10mr4533444igd.0.1437999966631;
	Mon, 27 Jul 2015 05:26:06 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j20sm5869232igt.5.2015.07.27.05.26.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Jul 2015 05:26:05 -0700 (PDT)
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <55B5213D.9040604@gmail.com>
	<CAP71Wjz6LZ465Mjskx1gDLV5xpff=_jZiqogAJsm0=x3_o+e1w@mail.gmail.com>
	<55B61016.1030504@gmail.com>
	<CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55B6235A.20508@gmail.com>
Date: Mon, 27 Jul 2015 08:26:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 12:26:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 07/27/15 08:04, Nicolas Dechesne wrote:
> On Mon, Jul 27, 2015 at 1:03 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>
> are you doing a minimal
> OE-core build?

I'm creating a BSP for the Firefly using vendor-ish u-boot and kernel from:
http://wiki.t-firefly.com/index.php/Firefly-RK3288/Mainline_Kernel/en

>  can you try to reproduce / narrow down?

It seems related to the version string. Something to do with creating
modules.dep.

>  Are you running
> recent master?

Yes, master on everything. I can push a work-in-progress branch to
github if it helps.

