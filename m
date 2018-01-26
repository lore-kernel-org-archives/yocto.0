Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC97AE00E11; Fri, 26 Jan 2018 10:57:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A51E00D6D
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:57:36 -0800 (PST)
Received: by mail-pg0-f54.google.com with SMTP id 136so806598pgd.8
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=u1Y54IMswCqrVs7WPhTzi6ndWDBrzR+PABS19YxnPcY=;
	b=tWqHe5luYF2Az5lO6FKDbw5ek2BFfEhSmtjITlenLvCnnTg3rAzzn8JIxWVc5mnYmI
	D+eVcGrbHaeHOwzSsP8V17wC2C4U+gD7J7Ei2QlXU6Jmv+ggqVTXcSQO5NsKvO/gB8hs
	ZUf/GadupN17xrAMwGXILmBX9OxunPupJAetY2wSQFNokZNTz5GaX5kb42FZOooQJ5e/
	u3nmMapagW8nW8KmVISpGhBtw6V9Ceu4fbEiIf5861hMMAlG1bmj8HuS5Ih5gn41Pa/7
	Y1mfhwKZDjewInTPzUcV4ogj8jo73J8AOCuEvt86PtI34zWxj3I0QcHwir78dzVAlXK3
	YqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=u1Y54IMswCqrVs7WPhTzi6ndWDBrzR+PABS19YxnPcY=;
	b=JY8G/I3N+A3J4vje+xaRbGBQ0oeh6KmqhE1dN7g9ieQ1YVFhOc0B/YmzZm2ADp3Thb
	w6LaVRU5JxIrVss4x7GVjoZflwPBBxsTkNcaimc5rBcaIenkaKafqr0NpdQx2hom1ioC
	x0oZzpNk+EJmT+9mpyryBxIy9M4VKy/WsDf64HS/Q+hXQ/Yf/LFcSPkTlrrwR43qHxk/
	yOnFCkl+SOG7eZo4DoZg2ki1qOXBu9LdnLKEuLL3GOoiUhFmmAwORoGa1ctcqfDmZ4Gs
	pi56T3ChVhPhpEUsDAKw7C5NpCmdrDN/+BFGkXVNUbolm++4kbNXeCMUXhpvH6Rv0aIF
	pscg==
X-Gm-Message-State: AKwxytdTY2USssjKAFINp4fdq1XDCaWnVHwgagJvCkVsZYMqWQV4iqTY
	0Jyoj6PX8HmqgPQSXXkw4urLJd15
X-Google-Smtp-Source: AH8x225WnknCC+G7E18wu2K3XdN3AAg86PCK8Ec9TGMpMUt/XChUTcQ+/SMppoPwfuv0W0jgG44lgw==
X-Received: by 10.99.95.193 with SMTP id t184mr16290358pgb.189.1516993055390; 
	Fri, 26 Jan 2018 10:57:35 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:bcb1:558b:44dd:74b6?
	([2601:647:4c00:6cf9:bcb1:558b:44dd:74b6])
	by smtp.gmail.com with ESMTPSA id
	s14sm1462502pfa.120.2018.01.26.10.57.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Jan 2018 10:57:34 -0800 (PST)
To: yocto@yoctoproject.org
References: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <5717e72a-4379-18b7-b92f-c17044e288cb@gmail.com>
Date: Fri, 26 Jan 2018 10:57:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CABatt_yonV4oU48rbZrQay+iYe_P-AYVZdgV5-_EL1AwvxkVqg@mail.gmail.com>
Subject: Re: image inheritance problem
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
X-List-Received-Date: Fri, 26 Jan 2018 18:57:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 1/26/18 10:52 AM, Martin Townsend wrote:
> Hi,
> 
> I have an image say
> 
> my-image-minimal.bb in one layer and and append this
> (my-image-minimal.bbappend) in another layer.  In this append I'm adding
> IMAGE_INSTALL += "kernel-modules"
> for example.
> 
> Now if I run
> bitbake my-image-minimal -e | grep ^IMAGE_INSTALL
> I see kernel-modules
> 
> So bbappend is working, now I have another image
> 
> my-image which has
> requires /core/images/my-image-minimal.bb
> ...
> 
> But kernel-modules is not appearing in this image and
> bitbake my-image -e | grep ^IMAGE_INSTALL
> 
> confirms this.
> 
> Any ideas as to what I'm doing wrong, I assume bitbake supports this.
> 

in second case you are including the .bb file so its behaving as an
include file.
bbappend only applies to parsed recipes not include files.

> I'm using the Krogoth release.
> 
> Many Thanks in advance,
> Martin.
> 


