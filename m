Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3B84E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:38:39 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id q13so1615415vbe.16
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=jYixVVFTyIBVfEU8sYvFt9uei6a+JDuzFEatwNTmSVc=;
	b=s0vPAhu096ZReg80OjVeEkXxzo1pX9LZZmMSwZp7xbqg7vSBTp15MiQ/O21MbM6cC3
	QEgccUh1yFGvoi3zS1zyFUwOXNJNELfcEUTnAzwNZ6GjjaNnHX3NtV9YGZegmOnpkdKD
	dDrIbONYgRDp3LcL+joYWulEFM1oC1apC2ea3+ITHzPHrhgJ554oxWB35EflZ+3L8W2X
	v7M+wAqz07ODrxwy8VQyaji3yJcQb11yDHe5h8wc1bRQOIcuYGaFtmf+MjjvsrEmVEUn
	EYiIdvUtcRUba773N/ufim3GasumLfrKKpAdPm2Iw2KqpzsU6xedRhRrO6mK5eSjhTE4
	pWCQ==
MIME-Version: 1.0
X-Received: by 10.220.167.9 with SMTP id o9mr26875008vcy.25.1366893518866;
	Thu, 25 Apr 2013 05:38:38 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Thu, 25 Apr 2013 05:38:38 -0700 (PDT)
In-Reply-To: <51788031.7080701@gmail.com>
References: <51788031.7080701@gmail.com>
Date: Thu, 25 Apr 2013 13:38:38 +0100
X-Google-Sender-Auth: IelLIrcuGxXBOprrSUCwCP69Lsg
Message-ID: <CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: seth bollinger <seth.boll@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Thu, 25 Apr 2013 12:38:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 April 2013 02:00, seth bollinger <seth.boll@gmail.com> wrote:
> When the shell tests for rootfs type I was seeing "[[: not found".  I
> use echo and egrep to test for the xz rootfs type to work around this
> error.
>

'[[' should be a bash builtin. What host OS are you using for the build?

Also what's the exact error message? I'm wondering if this is somehow
being ran in a shell that isn't bash. With an unknown command 'abcd',
bash gives me "abcd: command not found" and dash gives me "dash: 1:
abcd: not found".

Using egrep for a test like this seems less readable to me.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

