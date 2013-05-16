Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29358E014FA
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 02:26:52 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id w8so1206552vbf.14
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 02:26:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=tNknMEtlVa8/VbKoLEylrv2n7OFnfozdU8JLZwLnYx4=;
	b=DYppRY8IaGTZkhRvxqeO17GuE875GHEpENbCgU8S9vsDPbmOJGQb4jXVhFvFH3bIk4
	KZEg3iEMP1tsF300xYXS3Hc4njaj6hgI2D2Q3OX9V56RuEqv/C5zDUlHlhZ5UNk2IpCv
	OC5emCL5HxHbt8EJyoo2AcjYJC7u31jJNN90MstjWoQ/NtzXN7QG7ec3Rsb399XtogHY
	1a8+AD2EpoANOIW7os1DI3JrEMRfeWtNCE0DzaOVbZbwEgQ+SczCP27J6FCjqDok0gmq
	9zgi3Ta41Keha58RBK755o3p7kasHdnrFnGS332mT8LG9CxZU/X9w4OCMoIPn/mRZniu
	GyyA==
X-Received: by 10.58.90.66 with SMTP id bu2mr27482339veb.29.1368696412093;
	Thu, 16 May 2013 02:26:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Thu, 16 May 2013 02:26:32 -0700 (PDT)
In-Reply-To: <37275e8c.d6ec.13eaca4bb97.Coremail.huanmateme@163.com>
References: <37275e8c.d6ec.13eaca4bb97.Coremail.huanmateme@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 May 2013 10:26:32 +0100
Message-ID: <CAJTo0LZP1V+ZdSXyyPU2rF5CmSY7uGDku6xM+xsEv0QdkpcJ6Q@mail.gmail.com>
To: Biao <huanmateme@163.com>
X-Gm-Message-State: ALoCoQkIGXDSMsFwyPEQHlgxdAm4ElCv6EJExcaJaFZlqZ0f1Srk9Oon9TiM0/2QFtLurr33T8oC
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Authentication on git clone
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
X-List-Received-Date: Thu, 16 May 2013 09:26:53 -0000
Content-Type: text/plain; charset=UTF-8

On 16 May 2013 10:21, Biao <huanmateme@163.com> wrote:
> I was asked to provide username/passwd when trying to clone repositories
> from http://git.yoctoproject.org, where is the register entry?

What repo and what URL did you use?  Anonymous doesn't need username,
and push access is controlled through SSH.

I've just confirmed that both git://git.yoctoproject.org/poky and
http://git.yoctoproject.org/git/poky work anonymously.

Ross

