Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FACFE00AE6; Fri,  2 Aug 2019 03:26:59 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7844E0049C
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 03:26:58 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id j5so146945366ioj.8
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 03:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CuTShbEY0ApdmFYc52r/SASenjZ21Pfmvt/Lrvohk1o=;
	b=iOSOKRjbLialnVUeqnNb52HtHLtTPInwHbesc8ls+CLGuxWjTwif6rDydMXolJw/vd
	OAlK9LV3lp70jMr+/+v668JzGP0GkPfMtNVDXugB8qJdWvbesxkTMswxJOAmDfDxTQtq
	tC+u36tCSZ91hi6SZ59KNJXZS4/Wr3tLJmyFB+wHAzmv5SLB+nysLj3G+Xh6vu7Li6fl
	foqP0qBjygi/SusZNQ+BAdjKjzO1wera7XbnJFcah35X6ui+kNLOrlC5Oub5rqkG+soS
	s9NQSd7GchVccjh85eU7VED8RB9PklVGi9f2MrXiFfrQ9YQ9guYc1rnbYBS67XXiYIE/
	Ev3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CuTShbEY0ApdmFYc52r/SASenjZ21Pfmvt/Lrvohk1o=;
	b=bYylzjDQtExkTdjYBmss6uXBQASbj0fFLfYzcs8KEcQ8fd5kSqgW4Dx8WOpsmsN2fz
	VQ8DOhZWUKjngsJNn+ZKHUQpeAeqnlhtF0QdaQQ2jqWWkK/v5J4m0rrhiYVWRZprzDbn
	mhYwFEPwDgk6mMOvGC1EM6pSQpYHjTTmiVMme4nkjV63eqCvTeHXrCZG1xWpBU/o4B4H
	9tB7BhK0YbLhkBsP6ZcSNJWv9mvN3KgNt5wvrYrdPkx42o/na5BoH8D41dl77PucCt12
	xWvgp3BHYPYmSejn3YTj/3+qdiIAjZIiAaTrHK35Fi1/Bz1TD9oay+8nm/nNET+d0xQU
	eyvQ==
X-Gm-Message-State: APjAAAXt7IPQVdzsbs6FxLobtleqhqFNOoku4B2jD/nKSwZOUmdf6PA3
	HhKITeQFwSSldxVP6V1IEDDAhfcJ9IfY+VlP9k1NoXE4gn0=
X-Google-Smtp-Source: APXvYqzroxgIC+Oh6kSED5vV74zsCRT86fUH3hT5Lcl8H5OfSFiIl6vN6RVPXfN6kIEz/q2ellK3tTeXogNIdEjUvUU=
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr867109iod.204.1564741618364; 
	Fri, 02 Aug 2019 03:26:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Fri, 2 Aug 2019 03:26:57 -0700 (PDT)
In-Reply-To: <a8962625-43b0-006a-46fb-7df592302dbc@ibeeto.com>
References: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
	<f881304f-668d-01c6-65ec-c26cf82199b5@windriver.com>
	<CAA=hcWR+c=am2SHqRr3tUeMShLkzB+HrD2UBqhDwvK9ViyVHnw@mail.gmail.com>
	<a8962625-43b0-006a-46fb-7df592302dbc@ibeeto.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 2 Aug 2019 20:26:57 +1000
Message-ID: <CAA=hcWQE+f19X692ct=ze05wBPeyMPMbyCUCnMdQe6SagpYGwQ@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: yocto@yoctoproject.org
Subject: Re: Make the service the last run in boot
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
X-List-Received-Date: Fri, 02 Aug 2019 10:26:59 -0000
Content-Type: text/plain; charset="UTF-8"

Terrific, that works well, thanks Rudolf and ChenQi.

On 8/2/19, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> Adding
>
> After=multi-user.target
>
> to the [Unit] section in your systemd service file should do what you want.
>
> :rjs
>
> On 8/1/19 4:08 AM, JH wrote:
>> The application requires network connection to communicate services
>> via Internet, it could only work if the network connection is ready,
>> so I really want to know which system servuce run at last I could put
>> it in the After statement.
>>
>> On 8/1/19, ChenQi <Qi.Chen@windriver.com> wrote:
>>> On 08/01/2019 03:37 PM, JH wrote:
>>>> Hi,
>>>>
>>>> How can I find the systemd last run service I can put it in my network
>>>> application After=<last run tartget or service>?
>>>>
>>>> I need my network application service to be run at last in boot, I
>>>> made After=connman and Requires=connman.service that did not work,
>>>> always failed in boot, I have to manually restart the network
>>>> application service which won't work in field operation.
>>> I'd suggest you find out what you network service actually require.
>>>
>>>> Searched from Internet, there is a blog Systemd: Run it last to create
>>>> a custom.target After=multi-user.target, and put my network
>>>> application service WantedBy=custom.target, that works well, but it is
>>>> a little bit cumbersome to configure customer.target in Yocto bb file,
>>>> enabling the customer.target is called systemctl isolate
>>>> custom.target, the /etc/systemd/system/default.target link needs be
>>>> changed to from multi-user.target to custom.target. I am not sure how
>>>> it could be done in do_install, appreciate your tips.
>>>>
>>>> Thank you.
>>>>
>>>> Kind regards,
>>>>
>>>> - JH
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
>
>

