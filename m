Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0121EE01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:04:32 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id id13so265428vcb.23
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=BQpy4k8vgo1lw3w42J2BaNhJa1wVHZ0eI8Uy3mhGKRg=;
	b=u7AUuc+ttx/8qWJstELGsDhvev6aSMGF4wXQOI2H1iHTZz18vodOIdDymXOvsUtWAP
	VW/UjZlUqpVFQ55zOI7WV8ljlh7taGi/9sliHzhrtDMEpoiaAteiwUe73V9dXjbfFEdH
	XawVokOC3PPeNtwCTPBmC8NQD9z2SeoHIB8/t90UgmrexvpzUm90fpUi2ODwSqD+NmXU
	7+WT3VbUFbxevpOmIr1BJ3gcAh759MuhjzXzBg4x0KgxiSJ6DpCUuBk+/FKyJVj0Enj3
	5MIKizhJdt9QEvcq/Y4/e0YxHxbb0vbiEgmrGYw+trkXK85yJ3eLngHE9Q2/ZmYbecQn
	Pq9g==
X-Received: by 10.52.32.37 with SMTP id f5mr511437vdi.28.1369130672315; Tue,
	21 May 2013 03:04:32 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Tue, 21 May 2013 03:04:11 -0700 (PDT)
In-Reply-To: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 21 May 2013 11:04:11 +0100
X-Google-Sender-Auth: 7yn9PMmwiijX-vHcQh-ruEF9_BA
Message-ID: <CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Hello world package error
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
X-List-Received-Date: Tue, 21 May 2013 10:04:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 May 2013 10:42, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> When i try to run bitbake helloworld from build it throws "Nothing provides
> bitbake " error

This sounds like bitbake isn't on your PATH. Have you sourced
oe-init-build-env from the poky directory? Does running `which
bitbake` give any output?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

