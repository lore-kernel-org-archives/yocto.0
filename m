Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B00E00D6B; Thu,  9 May 2019 23:41:47 -0700 (PDT)
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
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07092E00D46
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 23:41:46 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id b3so3619056iob.12
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 23:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Noqbrx7CfPcaLvCrIZhQApSO2J4UbnXX64Fsl0O5DFQ=;
	b=QtD8/VLxWNRebFxPrB+GRH6Ct8y1mF2xbJ/f+J9uRoJ9o5PPb/w3niGjIM7A8Iripu
	VYA3cO7455c9BxuCwGM4mkfL2WYx4QDen992q4JiAv/SWMmhNEXr/YEcsyIRHsbK43nk
	utCFWz1ms5GdYhpVuN5MIE9TsWSs0AfOIjNrhNPKtWY8pMWQcRnd1K93zTERkUlGvkYC
	1Xtz3ae8rEHytCXafOe7CzIuRB5+R44w/rGjUeoOyxzSOLUBVP+f456dq8yh1KWr7bFc
	GnhO2DTNPgixVWXpIJok5qX85yvNdlni1YiBlACI+omsinLHel1G5ppdqHiK4wdW9b1P
	8vJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Noqbrx7CfPcaLvCrIZhQApSO2J4UbnXX64Fsl0O5DFQ=;
	b=KX8BvjNWcECEoC3I8dwYRreLcJoTTtGgRqY8IXF/zXKMao8r3wkaSM4Hp6SX/w5Auc
	BM4LJox41zVea3NvklwEi0LayknfnPISMLEOz8m81S+nrqtTtp/YEnjSBppyUU0yhmyo
	rqna0KfmwMfK056t76tXVDRT587LHE1i6lyasPC6zyxb4S/KhfvUcHmM0aT0nfXGEAzL
	hLAwI2VBRvvSospPuUpOgCn/XKnwQK98yzHO6bFaabK5Szn8rPsUjHLlyFIuWzrHYVnu
	FWUF/wMZRnsF5WuTi6dyadrkNbpsogKXmpDkI/aBFSHp9VGhQ4wdLFiX9ueiVbyh22Q0
	DpbA==
X-Gm-Message-State: APjAAAW+1JsikMBicVVTG7wrPToD4Ux8vKEIGWYj4yXJC2KHWzcfw0CQ
	hOWyIK2gWHcsWR1PwdCcEEYfdZe0LPS/+GzEZjiC1idS
X-Google-Smtp-Source: APXvYqzsINyv6rmaM+/BxX+0HNNvhho+nDErDStsOZbR3AMH18UNqnjWh6iqs8bckdqBSqd9wV6Liftz/BFynGDsZHU=
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr1745461iop.159.1557470505993; 
	Thu, 09 May 2019 23:41:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a507:0:0:0:0:0 with HTTP;
	Thu, 9 May 2019 23:41:45 -0700 (PDT)
In-Reply-To: <CAA=hcWRJPnHVi=MQ5g3QZ=z5t45f1wk+E2G0VmEmcEuNHnQ+7w@mail.gmail.com>
References: <CAA=hcWRJPnHVi=MQ5g3QZ=z5t45f1wk+E2G0VmEmcEuNHnQ+7w@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 10 May 2019 16:41:45 +1000
Message-ID: <CAA=hcWTAwRZmQusbnfU357koiAesHyOfLMUBO8r5NcNHvgA8Vw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto image systemd debugging
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
X-List-Received-Date: Fri, 10 May 2019 06:41:47 -0000
Content-Type: text/plain; charset="UTF-8"

Figured out crond log journalctl -u crond.

Which systemd daemon for auto service launch during boot?

Thank you.

- jh

On 5/10/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> How did you debug systemd running Yocto image on embedded system when
> services or cron jobs  failed to run?
>
> Thank you.
>
> - jh
>

