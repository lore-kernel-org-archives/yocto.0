Return-Path: <koansoftware@gmail.com>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 359BAE0094B
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:53:47 -0800 (PST)
Received: by mail-ee0-f46.google.com with SMTP id d49so2263688eek.33
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=eTsKEhg18wGAcx2g6gSwObGJC6oEIpDrnMuDy1wRR0s=;
	b=llC5F8eAaTBj8vCqlG5WF9ayfXZZazjdhiiCNmBY7kXXCbD0mBD8EwFM5K0q5xa2mp
	F5eHJzH7yHF0ANNN6y3/gg7IFaEcD6Z2Up/jSZNjpu8hnrWCkQQ94T4fQnW7clYet4dS
	27jeAYjyVfAPaOb795guYCq0QHKxDcWfzEo91z1zfTtUqC7cu98f0U0JxYP0/pnFpaCO
	UgYttyI9RQmRA/Dg5v6z/eRWpK0Q4nKdlw25SUktqGZEv8pkqpzSjtZUOmhLzmtPUcSn
	HcfAGy8WLX0Opw/0rabe/3yZyB18SLIjb6JlNQWnm9B1PrAv+y1ruVDQmuTxt9wcHFrF
	dC7A==
X-Received: by 10.14.246.196 with SMTP id q44mr11293905eer.45.1393595625805;
	Fri, 28 Feb 2014 05:53:45 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id 48sm10752021eee.2.2014.02.28.05.53.43
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Feb 2014 05:53:44 -0800 (PST)
Message-ID: <531094E5.2050906@gmail.com>
Date: Fri, 28 Feb 2014 14:53:41 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>
In-Reply-To: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>
Subject: Re: Build qemuarm compatible with freescale i.MX6
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Feb 2014 13:53:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 28/02/2014 11:03, Federico Vitali ha scritto:
> Goodmorning,
>
> I'm new to yocto project, I would like to know if there is the
> possibility to build a qemuarm
> kernel compatible with fsl i.MX6. I'm developing with a sabre SD board
> and I would like to
> run the same filesystem both on the real target and via qemu emulation
> on my PC for application
> developement purposes.
>
> Thank you in advance to anyone who wants to contribute!
>


Federico,
AFAIK the kernel can't be the same and moreover iMX6 generated system 
will use hw graphic acceleration, so probably couldn't be the same.
You can use a generic ARM kernel on qemuarm and a specific one on iMX6 
with the same image type though.

Ciao
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

