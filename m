Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74D47E00C51; Tue, 28 Jun 2016 06:34:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39590E00C31
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 06:34:22 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id v188so2176550vkf.3
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 06:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aMlBmvbeIvjpjufq2BDXhIQCBBt3KZOcm4D9PdyjZ3c=;
	b=OOXh1O4A6FhUEeXUgzWSFizWSVo/jjXEc5XPGNIbEYvGHCgyQSQOMGERUjgwoj9SPc
	fvApV6orwv5xvrtFwN16SnbmeiKCqnWMSpml8vJGa5uDKrYoChxhTdX+eiNqZEID/+4Y
	Zqfo5FhacmurFQ86VJbQTxDd1hAWNjbQJ34IpKjQAihjFNtGcZsDwTIO5YDxC0s0ltbN
	syHel9qu6rG2P0r3eRItzAGu/ktdXfg68ES6HVznthGbidpNZd7Q6TE8b4bn43FRTJvb
	UZu0ZIxJcwvypvWl6l1ieAveDde843FhqYBomo33O5FKMBg+mJMDRPXitnes8AiaOOYe
	f56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aMlBmvbeIvjpjufq2BDXhIQCBBt3KZOcm4D9PdyjZ3c=;
	b=EtaDjwGasw7mrPW6l3FjVAA+L7+Rc+yJ2VtLO9READel1/JFf+i1v1rz7Pw8b7w5wK
	qvsY8GMK4p+KnF7BpwjcUKvJqfV8U0Kun+YQiZ401O1bpEciUDMjsIE9d6RhyX8MF8k1
	Ff1iqeHisC3VrPOhwEEJSXc7FtFUWrhWZCVALHgNm5fjBwKlwsg7NfkEytwqdOgtmAzC
	hJhiKkdJhfvU8zQLzPqHjB95lICToeIUrkFugu0OUbWEpCoX3YVsK1ezbLgd33l+f4AP
	A6jIT2RzLeF1Sdwg/7psSZojXd+pkpyZSummMfJOA2VUNiV3xEoEtYgb4o5ut2wb/wLL
	OZmg==
X-Gm-Message-State: ALyK8tIuYwF7KTLNuSuJU87x/yPHKZxH1DSPGXQsSV7vbNZ9Gv/cPfBXjeeNJNbSGnDpr8gM0u7hNyhUN8GOgQ==
X-Received: by 10.159.33.33 with SMTP id 30mr567114uab.22.1467120862178; Tue,
	28 Jun 2016 06:34:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Tue, 28 Jun 2016 06:34:21 -0700 (PDT)
In-Reply-To: <DB3PR04MB0684C1511F275EE872ED9B54EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAJTo0LaLSseY14pcCm_V+mx4rmh=cSRvQkwkWp40LeSgbWuTqg@mail.gmail.com>
	<DB3PR04MB0684C1511F275EE872ED9B54EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 28 Jun 2016 10:34:21 -0300
Message-ID: <CAF3SDA6GT3ERs3r2t6qdx5Gek919ehqTqsJtsonBZTJUxNoGAg@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Tue, 28 Jun 2016 13:34:26 -0000
Content-Type: text/plain; charset=UTF-8

I think you should set CROSS_COMPILE variable

usually I have a script at kernel root to setup variables for me: here
is what I'm using for Daisy
https://gist.github.com/gkos/28f7cf019b716eba8574b21e6f628aa7

2016-06-28 8:20 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
> Hi,
>
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Tuesday, June 28, 2016 6:27 PM
>> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> Cc: Khem Raj <raj.khem@gmail.com>; yocto@yoctoproject.org
>> Subject: Re: [yocto] Failed to cross compile kernel with Yocto toolchain
>>
>> On 28 June 2016 at 06:56, Zhenhua Luo <zhenhua.luo@nxp.com> wrote:
>> Luo Zhenhua-B19537] gcc can't be found after sourcing the SDK env script. but the /usr/bin is in the PATH env variable.
>>
>> You *do* have a gcc in /usr/bin, right?
> [Zhenhua Liuo] Right.
>
>
> Best Regards,
>
> Zhenhua
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

