Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E7D8E00D05; Tue, 15 Jan 2019 05:38:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3494E0048C
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 05:38:58 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id x10so2969873wrs.8
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 05:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=r82B4dYx2efwKp3TXatfzQfONLoODc5v1nvv4SFjN10=;
	b=W6mKM0m8F0IS4su6SFZG2kgBgyf03uLs5FvRzRzc1cGCkpD6qxv7MfoKrI32EVnZyr
	7UwzgNm+0qBUTa6wfn1Lm0yewOfhB99Z6Twaoe97qDoODmiBpKfm7Xu2XKf0Avro7T2B
	tAu4Mb8ndpXIVCC03tThrftLN1hi3MqR5F56w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=r82B4dYx2efwKp3TXatfzQfONLoODc5v1nvv4SFjN10=;
	b=IlzqkGaMU9yTu9AVpt8JyYV2KKNn6QcZUogivEFiS878RyqeAM2NY8iSajmQF4l4LN
	Zt7232cd9U6D3EGosuaNnc3LPANDPDcbUG3TWLbT9tyVrWdZKc1Da08HWV214TTwjV3j
	/Vxqg7iJVsJVgOhs8qxvacUYqjPIz+E0OUGXBAvpSdMbUlWwcBPcUCG/e4dQT6ZzP1qt
	UUvNx4EJw/tfauzuSpasjXSGEYPDXJqlg5RBiA2L2n3OCvCfqZUV4mLXZbUjmYcZw8IQ
	7W5s+HLWTxmFcOXgiQSTa+FXW8V+qhzKEaRNGsldOcpkvolS0Ht9BxWS1zItfraB41yy
	KUrw==
X-Gm-Message-State: AJcUukciIaLnGUzA83LTurPxx8QuLH8FLe+y94xGWhqb3fEOlzkYOkaP
	gXrH2cSn2HHRFCPnQ989jSabYe81i5Q=
X-Google-Smtp-Source: ALg8bN7oIm7tLztLGbDxYjSCp0AU1+D1cWR7ed4V4lCm9+typRlG0bribFMvAbD+Mj0PnOTJJnzTmA==
X-Received: by 2002:adf:ce86:: with SMTP id r6mr3337210wrn.257.1547559537780; 
	Tue, 15 Jan 2019 05:38:57 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	v133sm27250016wmf.19.2019.01.15.05.38.55
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 15 Jan 2019 05:38:56 -0800 (PST)
Message-ID: <c7769c36a9575fbdcd2c312430eacb3266fd60de.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ulf Samuelsson <yocto@emagii.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Date: Tue, 15 Jan 2019 13:38:54 +0000
In-Reply-To: <09d6ac15-7dbe-3ffa-3f9c-381746ec7433@emagii.com>
References: <09d6ac15-7dbe-3ffa-3f9c-381746ec7433@emagii.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Subject: Re: bitbake: DataSmart.expandWithRefs causing exception when handed "${@...}"
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
X-List-Received-Date: Tue, 15 Jan 2019 13:38:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-01-13 at 22:53 +0100, Ulf Samuelsson wrote:
> I am trying to add a new image class "SWU" in "sumo" for a "software
> update image".
> As a result:
> do_sdk_depends[depends] = '${@get_ext_sdk_depends(d)} meta-extsdk-
> toolchain:do_populate_sysroot'
> 
> When data_smart.py works on this, it will call 
> 
> DataSmart.expandWithRefs(self, s, varname)
> s        = '${@get_ext_sdk_depends(d)} meta-extsdk-
> toolchain:do_populate_sysroot'
> varname  = 'do_sdk_depends[depends]'
> 
> I will get an exception in this statement:
> 
>         while s.find('${') != -1:
>             olds = s
>             try:
>                 s = __expand_var_regexp__.sub(varparse.var_sub, s)
> 
> The definition of __expand_var_regexp__ is:
>   __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")
> 
> That is, it is looking for the string "${<X>}"
> but <X> may not contains anything in [{}@\n\t :]
> 
> since the "variable" in "s" is actually a call to
> get_ext_sdk_depends,
> and thus contains a '@' character it is not matched.
> 
> The build aborts with an exception.
> 
> I am not sure, if '${@get_ext_sdk_depends(d)}' should be expanded
> before
> DataSmart,expandWithRefs, or if expandWithRefs needs to be extended
> to handle the case where the variable is a "call".
> 
> This is blocking us from upgrading from pyro to sumo.
> 
> Any ideas on a solution?

Can you firstly say what the error is you're seeing. Your attempt to
understand it is good but I'm not sure which error you see?

Secondly, is there a way someone else could reproduce this bug?

The fragment you quote looks correct. If you have variable and function
names conflicting that would be a problem though as they're all in the
same namespace. I'm unclear whether that is a problem here or not
though based on the available information.

Cheers,

Richard


