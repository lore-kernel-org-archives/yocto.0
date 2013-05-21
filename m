Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E76AE01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:35:35 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id oz10so313825veb.10
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 03:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=70GzApJ/XvxJPmhPIlS9Afg7aKfCnD0A+M0i4mDcHMU=;
	b=h31cIjx4ZXa50obfqbIL9bLaiBP1qBM3Wig9q2H1Ht1HhRssJGfalV2Fkm0AIZ8fF4
	avqE4hMHEeLmzCWvtxPmFFvLoVRAzybAWftcvbhhypAOtUdZ0cua2CA6QNIlRge1i/De
	2JUgpKNscSouzg/UgI/lxwVzdFvPm/vpyxwg/mLYL0F3EHdasXlIilxJOreXS4aw7D1K
	S+Rv6G1qEpKX8zsUp0hNi8aejcY4LkHuv6thnkIlh4227hv+2O9VuEAd/uL72bWDHZRx
	FBRgwq5LTnjsOcoMA/cGI0uTAjdOBy9shl1sfLzzYkMUrY/xRA8NKsmGUYddkjnmx0ay
	J7YQ==
X-Received: by 10.221.2.130 with SMTP id nu2mr632306vcb.41.1369132534470; Tue,
	21 May 2013 03:35:34 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Tue, 21 May 2013 03:35:14 -0700 (PDT)
In-Reply-To: <CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
	<CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 21 May 2013 11:35:14 +0100
X-Google-Sender-Auth: oerpyHCovMeVntEDtxRjB4bNf7k
Message-ID: <CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 May 2013 10:35:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 May 2013 11:12, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> I sourced oe-init-build-env and ran bitbake helloworld from build directory.
> Then i get this error. previously, i ran bitbake core-image-minimal and was
> successful. No idea where i am doing wrong?

Ok, I guess that it's bitbake itself that throws the error then? Could
you try adding 'inherit externalsrc' to the top of your recipe, that
class is there to prevent do_fetch, do_unpack etc being called which
may be failing as there isn't a SRC_URI set.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

