Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A517E00971; Mon, 27 Jun 2016 07:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340E6E00953
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 07:22:57 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id v190so1718534vka.0
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 07:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gCbzCSeMJCc6V8x5t5EZqKjrV8n6UQtNLA3mV8CfgOg=;
	b=ORkFaKaZ5INKY0GkFzWZDztxoSf2PEsGIVgg9ZdWUrVomhG9qN+ZSHxChWAIVEcEoq
	7o8DkdcX9SDhPBluMaIJtrgsrN+PU8rEQfpjpQSzqdxL94Gv1t/0PWnRImkfUm28Bfe6
	dFKZ7ZSFt3Nvd254G3RZFTBtXb4vHxrMMvydQZ8vVkzRj6LThRpYkvpPqYhw1ON8OXr3
	0QVCNdO2dK50p+5Ko1gnskQDDAm0jka99GX/7OolclerbXjbU/Lvpk92UITBYeNhd8Za
	UUb4lHcE5rVYYrvMcq/3fdUvew1NuRI3yhBvgaj7LnJ2FsOG30rbjEe2CYDrG/mJvKqc
	0Svg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gCbzCSeMJCc6V8x5t5EZqKjrV8n6UQtNLA3mV8CfgOg=;
	b=B3NE6fzkJDvnDttSRUBxBkHD2TCf87c9hE7E8U3+8BSt9I7/iCGG19ySeXywpVOhNS
	bdeLetNhmkQWbpuYoaunzkmCIEudchp3yxSwE/fozHgQpbS1h8Tm89NKmaRBDN4u9WIS
	i8voNQiB6INeylBltw8U/pULVipPZG/uPf7i3wJIBJwrPsDrSqTyjLcbMGzBTM9eabXt
	WwgTIipFzo2wWg2JSRji5iaI5dhMdddgAvi8TptAgGBWyWJti4f29AVv/W8xisoxcPZZ
	X26oUScqbGCO954aKycgD6xF9g6tWc3QsqiBP62dmLRxEqTS4nivO0E7jLSganRlLc+p
	9J4Q==
X-Gm-Message-State: ALyK8tL6zMVDduLvzf4QdKtjqGDXHb3iK1OuKuwl7STc0dWrDgt0nF1O31ezfyMMOpqTOKhPGupJClU64blnAw==
X-Received: by 10.31.94.66 with SMTP id s63mr8365742vkb.151.1467037372757;
	Mon, 27 Jun 2016 07:22:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Mon, 27 Jun 2016 07:22:52 -0700 (PDT)
In-Reply-To: <57712C4E.6060400@pica8.com>
References: <57712C4E.6060400@pica8.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 27 Jun 2016 11:22:52 -0300
Message-ID: <CAF3SDA4njst=j_=hwa+xx3rTK21ct7NDXovvHQQeJ06b4zwreg@mail.gmail.com>
To: richard zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add recipes to images not RPMs.
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
X-List-Received-Date: Mon, 27 Jun 2016 14:23:02 -0000
Content-Type: text/plain; charset=UTF-8

Adding this to your local.conf?

INSTALL_IMAGE_append = " your packages separeted by whitespaces"


2016-06-27 10:38 GMT-03:00 richard zhang <richard.zhang@pica8.com>:
> Hi all
>
>     I try to add some ricepes to meta layer.The do_fetch and do_compile
> things are fine.
>     But when I went to image,there is no packages just added.
>     I find my packages in build/tmp/deploy/rpm .
>     How to add these packages to image.
>
>     I have do this when I use 'hob',but i don't know how to select them
> without 'hob'.
>
>
> best regard.
> Richard Zhang
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

