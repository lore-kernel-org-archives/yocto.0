Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3113EE0141B
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 08:04:53 -0700 (PDT)
Received: by mail-ea0-f176.google.com with SMTP id z15so7592812ead.35
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 08:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=cjg/2Pjw4M1KJQQO+2IuqrXNgNDJMtVfG+0d/YBFfhw=;
	b=W3pxY139T+LbRMoTcbsJ/nLh7ToUB49Dm+HnaLEdReFd6lvkhDmgt4sD0a4KQsPWDh
	xha/AZV+4ONkknr7moowV9Nb+AnlxYCjB5IM2oW9VDHA1nO9DzGcov0ATNPdP+e0ajph
	Bn5VQ0xIDzgtLX4s8CHv6nsLUXLuIofVnnhhWhl9N5CxAUZugB5B64jqw7SqhAFC2M2q
	0gAlkd4/bM85yU6wmLYuquEaWGT89nM41l81UvsR+GzLo8WslMX6Z1HctT0n/1H9s4Ya
	B9xCzbPyrx/gV6LkzvAY+aHjgoZlqWOyFf3vj83mGm3q6a3hfPogjxIUI7ghAXalfHlS
	LIJg==
MIME-Version: 1.0
X-Received: by 10.14.173.70 with SMTP id u46mr4489716eel.92.1372259092378;
	Wed, 26 Jun 2013 08:04:52 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Wed, 26 Jun 2013 08:04:52 -0700 (PDT)
In-Reply-To: <DUB116-W1402B4B2A5D3B56140846E0988B0@phx.gbl>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
	<C6510F6D410BB64A8C15398EDC6B847C73C4628B@ORSMSX103.amr.corp.intel.com>
	<DUB116-W44BD641BF261A178D1E9E6988E0@phx.gbl>
	<DUB116-W11924FDD6C4599DA3B9E831988E0@phx.gbl>
	<DUB116-W1402B4B2A5D3B56140846E0988B0@phx.gbl>
Date: Wed, 26 Jun 2013 11:04:52 -0400
Message-ID: <CALmOhgkS9FP0Atz+bgM8EcEE9XJ2k3qOp8XtSsGRYqFUq48-zg@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Thanassis Silis <djnass_18@hotmail.com>
X-Gm-Message-State: ALoCoQmFOqaD9PeWv7hbogB6bzeUI3exhHu5CXMmHErZZN30e5AdMEZTZpqSMZKr0PUW7xLxT1uO
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Wed, 26 Jun 2013 15:04:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 June 2013 09:58, Thanassis Silis <djnass_18@hotmail.com> wrote:
> I have rebuilt an image with "IMAGE_INSTALL_append = " openssh" in my
> local.conf
> which led to the generation of the image with openssh as expected.
>
> However, the sftp-server executable was never included in the deployed
> image. I am wondering why this is.

Does it work if you have:

    IMAGE_INSTALL_append = " openssh openssh-sftp-server"

?

