Return-Path: <jefro.net@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72EDAE002E9
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 13:22:54 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id r10so1283513lbi.1
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 13:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=8MRTcBm/LigkE/RF1goX1mKnSNUAgKbQ2W0L/iolwhM=;
	b=mbZQnA4z9qi3Rl44iGLGlIgJPxNlNRHLKhr3XlHOCQGcukcH90QejoEtIkAyKv2IXa
	p/4zc+cQc2+ZPb/eioEgOpTLxiGE5IQcBbVwllFw2fe3odT5IQ03ymnA55dMnXvtULpq
	S5ar4Hc/wPCho+mKHS+hALKQtPTkr5HptbZdSKfpnNAMnqHxeIWe8ZbD5RAgnXvlRery
	0xKqLtXplkzVZng11GLWnV83k5YNulFV+lplUcGYsaNbD3vAp8GRAOvcXLBWggmr9v7Z
	dPZ7BCKRKx4k7DykVb8HboNkP9Rhz0LJGtUvDaOPMrTZZjaUV6n4LI5KXo/VumV4jMZR
	z4PQ==
X-Received: by 10.152.9.233 with SMTP id d9mr2492040lab.33.1375215773230; Tue,
	30 Jul 2013 13:22:53 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.57.105 with HTTP; Tue, 30 Jul 2013 13:22:33 -0700 (PDT)
In-Reply-To: <CAAGt+t1ZSMcDv2RvomcXNLkjifWaoi_panY4w8nD+gSnTL6aGA@mail.gmail.com>
References: <CAAGt+t1ZSMcDv2RvomcXNLkjifWaoi_panY4w8nD+gSnTL6aGA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 30 Jul 2013 13:22:33 -0700
X-Google-Sender-Auth: 9yy-37VSFQfExeRm7ZNe52tf_tY
Message-ID: <CA+YB3rYuwf+TsqG0=yy5=PszfECx7fF+=GjOoM50YgVy110Ttg@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake CaspaVL
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
X-List-Received-Date: Tue, 30 Jul 2013 20:22:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello - sorry for the delay. You might want to talk to the Gumstix
folks directly, as they may have already integrated this driver. If
not, you should be able to add it to your build with a simple recipe.

On Wed, Jul 24, 2013 at 4:18 AM, Zafrullah Syed
<zafrullahmehdi@gmail.com> wrote:
> Hi all,
>
> How do CaspaVL driver can be integrated into Yocto project? Any ideas?
>
> --
> Regards,
> Zafrullah Syed
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

