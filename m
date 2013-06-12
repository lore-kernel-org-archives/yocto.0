Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B70FE006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 07:30:51 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x14so6024463vbb.6
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 07:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=7xu7xUX/l/1d9OeAXxg0wy59ZjW4xMo6L/sMQqLRetQ=;
	b=x3MjuMxNX/bs0Okm2r3kOmC4C36ObrD+vAx8Qunxd9KxpjUVI0N0z//FFMsZ0P15OE
	RKDs+kan5wBDJOwqV5C42WCIIL/Bzp97diy76ehaAwnZ9VLJrgWvNRxZhC4gzPluuRZL
	aeTXJmUhKJuSRm2B8C/zRVNHwglJ2bzf43uNh0ZPIUQp2UpXyW9WTQ+IaN2eh4gfwDRs
	TYVq7Z8FDjXYDukyYMJC+fwOK9zzussik++R8rKTmvA8b4DizaFgKOX01qN9xQ3w59lB
	NjnhtKMEFDceGgvgQTY3csWDaGDgsGMLHRsUUgLeGGJRDUuLkfS9mr3nWy66+tMUahRf
	dtjA==
X-Received: by 10.221.9.68 with SMTP id ov4mr1074414vcb.6.1371047450487; Wed,
	12 Jun 2013 07:30:50 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Wed, 12 Jun 2013 07:30:10 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4CCB180@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A52C4CCADB9@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B5EA46.8040609@linux.intel.com>
	<17797116383D4341B029FDF34C22BF6A52C4CCADBD@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B5EEC6.4040007@linux.intel.com>
	<17797116383D4341B029FDF34C22BF6A52C4CCADC1@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B639AC.3050200@linux.intel.com>
	<17797116383D4341B029FDF34C22BF6A52C4CCB180@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 12 Jun 2013 15:30:10 +0100
X-Google-Sender-Auth: c8TVHpUxAPzl-Yxtd6M5wC_zyes
Message-ID: <CANyK_8fYk6P1qf3irf+MGfFs5fTT-JM3kEwKOyoy76mtUu=eCQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recompile the recipe everytime
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
X-List-Received-Date: Wed, 12 Jun 2013 14:30:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 12 June 2013 14:15, Rohit2 Jindal <rohit2.jindal@aricent.com> wrote:
> Hi ,
>
> Please help me out I am stuck in some issue, actually I want my recipe to do compilation everytime on every run of
>
> Bitbake linux-yocto
>

I'm currently tweaking the kernel myself and using "bitbake
linux-yocto -c compile -f" each time. That's recommended by
http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html as
it avoids re-doing the packaging every time you just want to check if
something compiles. You may also need to do "bitbake linux-yocto -c
compile_kernelmodules -f" to rebuild modules. It's the "-f" that
causes the task to be forced.

Is this any help? It doesn't solve exactly the question you asked but
might be what you need.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

