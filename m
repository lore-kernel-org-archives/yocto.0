Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30834E00DA9; Thu, 31 Oct 2019 00:15:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F7EE00571
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 00:15:16 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id a13so4485745ilp.1
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 00:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Hc7iE/ITZlRStr0wdx8mWXay9qs1hqhgPU1upXujMJk=;
	b=Y3WuIPfMH6ouNX5+5h9I3vAd7LWtHB/skYpvWYsGWG5djXNpRZhouBvesP959F1gcH
	s5NN1p5m4Oq5uQCEy3wdokYvKPoBLRGDSl7r3v7nY+sUr0h4OKpt/fM8AHlqvvpiIMAt
	flwFO3oiZZxao2mHfwcBe0IsecYQN1EEFl+TNDaMKixvrzWNP+nwf8aiMRslpq3Kmkqr
	EgsErEkGqxg97dFchUlEx4yFIz5t04Gcz9nnBz8Bsaj/c2uxRUKsJqnYRU5kc7lcBO+g
	9mcetH2dQ9lJuADD5G5iocf27kR6cFkbikZA5oHwI+C0F9L8CuEUWEygUGkeM8W5KOhr
	3bWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Hc7iE/ITZlRStr0wdx8mWXay9qs1hqhgPU1upXujMJk=;
	b=fQVIY8FtWFimpl1gRE2V56+24GJYh7TfYxIkOsL6okk1DwuZP26gqeWQM62Y+rBM6V
	/vis6PZCw2mMh3emuzHeqBUamEPdjfOELyt1RHFZpE2re+NTMBGUqNXVzxz0eVYt7twG
	HC+oNBWycFUT0MqEC+I09wnNIe4J44Grj2RjVpakzLKroxjqMN7RGPNOPi9R1xI5xTy3
	2nUom7iGN2WsWZpoqq/85HbLpicVAUEjdehi7oc7yHYYUYp/tCubUcRQ3iCxE8rRKmt0
	hKsmRQOusEvfR+0tKoeeZbejVR3wtNWcGufLV9SkFWl/JNswlMJKwETRmfP5wnIwttnk
	QlFA==
X-Gm-Message-State: APjAAAVeziQdK0hgvCSzA4IBVmFMkDLAz2K0KysXuI3MHu5luUXZV043
	2l6CBUd8Wbtak1O6FfhdROdUb6sYIK0tFm7wYs0=
X-Google-Smtp-Source: APXvYqyQ8+N/JNo88UGj/9FUapU9cKuQPd6krQyKnUlJVeVccG+euESt79xnh8IGJhAWIbkLVNuyCdnyyIO6P1rxm1w=
X-Received: by 2002:a92:d5cf:: with SMTP id d15mr4555026ilq.302.1572506115441; 
	Thu, 31 Oct 2019 00:15:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:aa09:0:0:0:0:0 with HTTP; Thu, 31 Oct 2019 00:15:14
	-0700 (PDT)
In-Reply-To: <CAP71Wjwk-X6Aa+KsZjTwf-JnoKjwZPHnE0ctTYxEGzn8kSDskw@mail.gmail.com>
References: <CAA=hcWQgrC0LGdejAEP=i9pnR4BS3q5XqnqBYbwD9221wkGA2Q@mail.gmail.com>
	<CAP71Wjwk-X6Aa+KsZjTwf-JnoKjwZPHnE0ctTYxEGzn8kSDskw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 31 Oct 2019 18:15:14 +1100
Message-ID: <CAA=hcWT96ARhR-StpS-=rUF5D3B9tgv=kh2h=Q8FUWWB9qZLvA@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Which recipe for qmicli?
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
X-List-Received-Date: Thu, 31 Oct 2019 07:15:17 -0000
Content-Type: text/plain; charset="UTF-8"

Thank you very much Nicolas.

On 10/31/19, Nicolas Dechesne <nicolas.dechesne@linaro.org> wrote:
> On Thu, Oct 31, 2019 at 7:26 AM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> The qmicli is in libqmi-utils in Ubuntu package, but I could not find
>> Yocto libqmi-utils, only libqmi recipe, is qmicli in libqmi?
>
> yes, it is there. There isn't a 1 to 1 mapping between debian and OE
> package names. But if you build libqmi recipe, you will see that the
> libqmi package includes qmicli.
>
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

