Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F13AE00D53; Sun,  8 Jul 2018 15:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7237EE004F6
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 15:28:48 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id p22-v6so17075uao.7
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2018 15:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=a4MHjYn+lAhEGKqREJhbH8dMy023IrIgU7m3ffafTq0=;
	b=rOvgknfafK/HIUfcWmlmTriZBliXiZp8IuRJmI1C/Qgux1RstmW3xzPLgnHxX8U7yl
	1zMqD3KDO8ZuqWdRdV8m+r9jFiJz6ggQY3u9nB1ylM+Uk7iWEigMemyvYi5tWIQLV2qH
	rxft2ryAC8t4TunY2PuedEkIWgOyPgNsCBps/T9QhnqJrGVpOZfVrNJO8+rlmiMsAeP7
	7rK+9y0wwnzOUGBJPWwxanOpC8g39gdPjauj6lp1o0r7dwRWepxwT5/Q/AtQ/EIkt/uq
	PAlIAKdoqxVjTq7frrr9InS+OO0u/pKPxbQrT1UQk+xSf/L5OnE0wlvKrtEjYUyIjb3s
	BS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=a4MHjYn+lAhEGKqREJhbH8dMy023IrIgU7m3ffafTq0=;
	b=QuUCEKJ+pKrytjXcrUS0E0HIViPgD/l2LV1HMegU+hG8/nXqXYxnlpb1CarUgL4spH
	5iDmkt+FBLAPwPCxzgvqP5UbxWjkP1Rwc9rVt4VAGbazwoStiIkcwWaMQiXRAXcBM6El
	LseN7vnTBDR2q55AwQpEtxwT8ffR2GQ8e1XloWJjVZ74NZ8FG8a/zaIadAP+QU+0U7mr
	N2CncxNjwYbYPNYYMrKBIEZuk4AcwuEw6W7A/2VzrAShtFQkHMgt7CwB2CPWFT/wcTBk
	hOb90FFu2IFgEJS1EijdXxJguNpc0iPN4OiwyRo7b2CHmgjcJO0NdfxBh4+xwCDSMUng
	yzsw==
X-Gm-Message-State: APt69E0O/loL/El77KIgc0x2JUlD+KtFKsj36KgZwxKMjZHgJZ09oxq0
	sNz1vLEht7fJNj+MKo7QR9CZ9x23kVkd4yNoI+4=
X-Google-Smtp-Source: AAOMgpdacgdetjiutJdATdYHSVc+z9Q75f4bMimyyZKuogWrQYtFWXJFp9kkWyq1moccMUCy4NIzFBKQh4A9Z1Hs0mM=
X-Received: by 2002:ab0:50cd:: with SMTP id
	d13-v6mr11417078uaa.45.1531088927458; 
	Sun, 08 Jul 2018 15:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <CALYZMnmEGtFOvobp1wKY_pRUu=ecMCfSaO=D8crHcX6xad+2uQ@mail.gmail.com>
In-Reply-To: <CALYZMnmEGtFOvobp1wKY_pRUu=ecMCfSaO=D8crHcX6xad+2uQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 8 Jul 2018 15:28:21 -0700
Message-ID: <CAMKF1srh4ARJ9rXZ4ZWfxr5iHQswpBbo3ybk8BzSC-Ua_FXB7g@mail.gmail.com>
To: akash12bhardwaj@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto Sdk
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
X-List-Received-Date: Sun, 08 Jul 2018 22:28:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jul 8, 2018 at 1:56 PM AKASH BHARDWAJ <akash12bhardwaj@gmail.com> wrote:
>
> How to add ld-linux.so.2 for Extracting Yocto SDK,as while extracting glibc- poky-cortexch-rpi-basic-image-toolchain.sh ,it shows that ld-linux.so.2.
> While examining the directories,I found out that ld-linux-armeh4.so is present but ld-linux.so.2 is not present,how can I add it?How can I rectify this issue?
>

You should describe your problem here. dynamic linker names are
associated with architecture and ABIs, it might
be that you need a SDK with different ABI or architecture,

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

