Return-Path: <sergiosiena@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76F4DE008E3; Wed, 12 Nov 2014 05:09:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sergiosiena[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05919E008CA
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 05:09:04 -0800 (PST)
Received: by mail-la0-f51.google.com with SMTP id q1so11367747lam.10
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 05:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=v8fCBSQKLjDc8L55eyg3Mza1JKKTI7BqLZUAR8w3Gtw=;
	b=mYdpP2ybB3rxielAisqxFH8k6GcxBEvqb5XDm2LKWkEMkt48uGQ13DQBgV4tNUjW+2
	i3LpOTlvJsCc0+kbXlA57D/3H9moqXe1FLr+OZ5YodAjCuNhNJRGU/Og+O4/1dbSqGGg
	cQitruNGkNUYcG5r8Vt4lvjq5vC0BV+U0uwY1SLYrDVzAi9pE8Mz8F+FhkOxmzzCtoIi
	wN+oiAmQH0mn6g0cioXco2AesWsJOyY0BlfHccGjmuTiac2dXVrmlT/LabRADXQIIeRF
	/hwbpKgcPxP7dqpD1A3YZP9EuxiLnP6OfkFvmhJNsj7cs3M+yQsfaz5o1Q17sTh3Yhq2
	qeEg==
X-Received: by 10.152.22.194 with SMTP id g2mr42110220laf.33.1415797743624;
	Wed, 12 Nov 2014 05:09:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.36.161 with HTTP; Wed, 12 Nov 2014 05:08:33 -0800 (PST)
In-Reply-To: <546308C7.2010906@windriver.com>
References: <CAKm6Z3U_M8J_8tL3awdEo4aFHmY5gQt5hMh5mxggAcLqXatKnw@mail.gmail.com>
	<546308C7.2010906@windriver.com>
From: Sergio Prado <sergiosiena@gmail.com>
Date: Wed, 12 Nov 2014 11:08:33 -0200
Message-ID: <CAKm6Z3VTpSGt_VR71ET6tX=M0TTO+Wdj=8QGzu=jP=iKujRJLg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake bash completion
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
X-List-Received-Date: Wed, 12 Nov 2014 13:09:15 -0000
Content-Type: text/plain; charset=UTF-8

Hello Chen,

Good idea on keeping the cache of available bitbake recipes.

Patch applied, thanks.

Sergio Prado
www.sergioprado.org
https://twitter.com/sergioprado


2014-11-12 5:14 GMT-02:00 ChenQi <Qi.Chen@windriver.com>:
> Hi Prado,
>
> It's really a good idea. I've tried it out.
>
> Attached is a patch to improve speed, accuracy and user experience.
>
> Regards,
> Chen Qi
>
>
> On 11/12/2014 08:27 AM, Sergio Prado wrote:
>>
>> Hello all,
>>
>> I have just written a bitbake bash completion script so it could make
>> my life easier when trying to discover a recipe name and bake it.
>>
>> https://github.com/sergioprado/bitbake-bash-completion
>>
>> It should complete all commands (bitbake 1.22.0), recipes and tasks.
>>
>> When running for the first time, it will execute "bitbake -e" to get
>> the BBPATH variable and save it in a hidden file. It will use this
>> file on subsequent executions.
>>
>> Feel free to try it and let me know if you find any bug or have
>> suggestions on how to improve it.
>>
>> Thanks,
>>
>> Sergio Prado
>> www.sergioprado.org
>> https://twitter.com/sergioprado
>
>

