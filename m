Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D76FE01618
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:03:38 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id gd11so2063983vcb.5
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=zpxPhb1dV5FKoL/NAmKVL2A2LNfNsoKDHRYuuuyr9Gs=;
	b=DTFKEqkDJqmjf575uVBDMXmULKTZBMEHJkM/AMj9DDc4zP00GhDu0jFMYqdwy0LBbZ
	IXvjBnriFTdO1vNGNQ+lrVKekDR4h9XOJKqEn7SgFKI9bPUiaCbYkwljfs4/WuHoua9j
	6WV4mprZvr00PZNFdn7PKQDmQR0WZkYk5yjSPbPfWe0bgVCOhGBZC8XF2Nkvr95Dc6NF
	7OUf8gvp07a4t2C4M0qRBheEHbUH6ESn6INgV7Bk5Zqr+rV0FwnVYyJpmdwR/M2mD0F3
	DaG6/KuG+AIv9weTXZinLyfosCGJ3nOlwcfcj5FRxMCc6fuaZ00sGBUDCH0xm7sLMaQy
	AveA==
X-Received: by 10.58.67.9 with SMTP id j9mr21809285vet.3.1379941417242; Mon,
	23 Sep 2013 06:03:37 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.109.72 with HTTP; Mon, 23 Sep 2013 06:02:57 -0700 (PDT)
In-Reply-To: <CABHD4K8VcQHZSzO2Ch1mEeMNMzHXNTVw7DxqDYdO5VriOtxrWg@mail.gmail.com>
References: <CABHD4K8VcQHZSzO2Ch1mEeMNMzHXNTVw7DxqDYdO5VriOtxrWg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 23 Sep 2013 14:02:57 +0100
X-Google-Sender-Auth: JXWtFdJHGKLDAbMID-c8TszHWIw
Message-ID: <CANyK_8fqDiyBBn-fm=vEp3vxm05HaPTXrwp3-VsZVG7VEPm5MQ@mail.gmail.com>
To: Amit Tomer <amittomer25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to pack non striped valgrind image into squashfs image
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
X-List-Received-Date: Mon, 23 Sep 2013 13:03:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 23 September 2013 11:00, Amit Tomer <amittomer25@gmail.com> wrote:
> I am new to OpenEmbedded and facing an issue where our valgrind is not
> working,
> Valgrind bin comes as non striped image after compilation but while packing
> it to squashfs image ,it become striped one and fails to run on target.
>
> So how do we pack it as non striped one ??
>

It's likely in <packagename>-dbg (so probably valgrind-dbg). Try
adding that to your IMAGE_INSTALL variable.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

