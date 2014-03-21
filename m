Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EA32E00B62
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 06:11:18 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q108so6951612qgd.9
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 06:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cRnaAVv08L4GLW7daRYm+epX/Pi0eevv/2jULjY/Jdk=;
	b=KUiord5qELBKpEjnd7P/w0Ns95YxhOQv+uN64lNIpK9ih74f8el4Wc151uafljzP4L
	4+Apy/aRW/rgqpepg6kTylL65CMjWxSGqUNMMkYOoYvEo/OjT6Zkj2FvBlv/h6rlKMFs
	0hEFZEOELWIjGzWkTUjTsmWKWVhEFURquc3oJAFFBq/NM7YaibluDMu9HMJjYNx4pZHr
	zBiCyWUfWtPt6Pioelk5iuGYHxULHfWKGZEo+B7KP2jFgYsyQ+LETBcx5pRLNeHgXgHG
	UsLTNl3c0d7UtAoREiK3WoBTZN0+GEC1pLNFUjbc8t4AhAAqe1dFxyWJqiYPVBxhfbov
	eCyQ==
X-Gm-Message-State: ALoCoQliRnMzJRimspaAER+gdq4ZvGPJMw1Zp3p19FZOeeTNKwZfJiSebSsOav8sIsUPrqegrTiQ
X-Received: by 10.224.45.197 with SMTP id g5mr57316528qaf.52.1395407478090;
	Fri, 21 Mar 2014 06:11:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Fri, 21 Mar 2014 06:10:58 -0700 (PDT)
In-Reply-To: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Mar 2014 13:10:58 +0000
Message-ID: <CAJTo0Las0o_JcsvW-X+L=EQAvUf3yVVQBunoCi=cAzR=3y2DrA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded and musl-libc
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
X-List-Received-Date: Fri, 21 Mar 2014 13:11:21 -0000
Content-Type: text/plain; charset=UTF-8

On 21 March 2014 12:34, Paul Barker <paul@paulbarker.me.uk> wrote:
> I'm currently very busy between various projects so I don't have time
> to hack together a musl-libc recipe myself but I should have time to
> help test it.

I saw that yesterday too and thought it could be interesting for
Yocto.  I'm curious as to why it's better than uclibc though
(genuinely curious, I know little about uclibc beyond "it's smaller").

Ross

