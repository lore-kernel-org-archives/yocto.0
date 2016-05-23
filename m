Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B71E004F1; Mon, 23 May 2016 10:26:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAF8E00343
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 10:26:37 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id qo8so64841511pab.1
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 10:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=rbzZcHFaAm9YwthTrL41BInJs3Nx5R55AxuFsdaHVpY=;
	b=n3HuGRnK2MSC37Lz0Fm1f1kx0lRSoMM78pRY8T5H/xO6H7EP/1CbUGx/RuoYR7Komd
	CO8GGs9u9OhQWRjMRU4+13qlP3Zesm7nCDdBOjuoFxX2yuCtOkJVp5q3W2ML6J4ZqKvh
	H965OAFcP/j6Kto8C6k53MjBq/hyJdIAcL4Ok4wNNBZu+97fIFhQaz4nPsuqH2E4aH5+
	KbpV7fW5hWsxP9c10ec851rZyExyHZcmM5DLofxTfB7osfhpWhxvKchFGFUq+6He84Bp
	ud1dB0WxnvUU2iT730cVHDBs5Qi6LunanROc9IAEiWbvq7JRbbGCsm5j9jz4OZf3oUdD
	hBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=rbzZcHFaAm9YwthTrL41BInJs3Nx5R55AxuFsdaHVpY=;
	b=YGcgZKav8UzRaYDFiinJNDVkugPAvqh8I03OGJiV7waunp7gxBK8rVH12APBZ5UIx4
	zTfGLLrxRjVjJtg/sbOsUnQVp3V+tY9VVgxqO/r7oS+zsFA28ORDd1EwzJNBchzWmSET
	fy5QFVGlqSEeYMywPWvTmZnGCz9eVXwUkbdBCCIi7R6ukLkjpeWtwLv1OelyoD/TXeiJ
	M/AyMYkgS+eJ+IN+e4DuRhfA5oNLSO3qVLyerL0VM4YAaRZszmYVImXkXukHpf2XJxkp
	pBO3E6tIrCJfUwtfzfYL2sX5Brc1vtkbPD0iZXamH7ZM1eG7e84skw0g5E5cJvtgSy8c
	R1zA==
X-Gm-Message-State: AOPr4FU8ZkGrk5/q9Ye6/ecOkeW2vaWzbTee5Pm9Ay4wUNcCtdbiIw+QIH4JLQj5E9SLdg==
X-Received: by 10.66.81.70 with SMTP id y6mr28843111pax.121.1464024392400;
	Mon, 23 May 2016 10:26:32 -0700 (PDT)
Received: from [192.168.18.4] (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.googlemail.com with ESMTPSA id
	s14sm46957259pag.7.2016.05.23.10.26.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 23 May 2016 10:26:31 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <5735F40F.1000402@gmail.com>
	<82AEE06F-34F3-4751-A742-D3DE921AA652@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <57433D40.1070606@gmail.com>
Date: Mon, 23 May 2016 10:26:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <82AEE06F-34F3-4751-A742-D3DE921AA652@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors.yoctoproject
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
X-List-Received-Date: Mon, 23 May 2016 17:26:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 05/13/2016 10:59 AM, Khem Raj wrote:
> don’t think so
> 
> just do
> 
> echo `git config --get user.name` > ${HOME}/.oe-send-error
> echo `git config --get user.email` >> ${HOME}/.oe-send-error
> 
> and it should be able to send

thanks. I got it working

- armin
> 
>> On May 13, 2016, at 8:34 AM, akuster808 <akuster808@gmail.com> wrote:
>>
>> Do I need an account enabled to submit to errors.yoctoproject?
>>
>> - armin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

