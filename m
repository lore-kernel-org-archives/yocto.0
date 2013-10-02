Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10909E0161E
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 09:38:01 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so525892eek.29
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 09:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=759jh8dcfWTJVtnCLcwp/L6RD0S1doMKQilVLIOKmyA=;
	b=hjA/9bgfkPonXfYd6KnL7Fu5QrDSWnnxBhragzduEQcSRG1hYpVK1f++XleniJ5IXD
	8TXbTmlHShlu+ljkoWH/gzm3ELCIVvdx/+w1DgXlN+TazXT2xo61l63/0a4KuGSkIZEo
	jtBdDRku/SyqeOQyTNLzZihj3zpceaC9OV64yY/J0Lczfxivte+N3wX4zzKWIHwsn+H/
	fGi6i4d5zv+dKXix/zV8OoAdW9wQr0QYEHQn/ZOPv1VlBKqgdnz5B6YGFwtviyL5bMQ6
	5WGIJdI/CdtfHBpjxBqQdMa8WnWz3Kad2mopvV2BVbCAusZpG+m+ylLIiR5TLJD96gd6
	TGiA==
X-Gm-Message-State: ALoCoQmOMw2nHTDk/pRUqNH6GEhvmf/+n2TG2IkombrjQbi0aoaEkyI9BG8f1ijtknyKRAgiQAnr
MIME-Version: 1.0
X-Received: by 10.14.88.65 with SMTP id z41mr4908501eee.38.1380731879023; Wed,
	02 Oct 2013 09:37:59 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Wed, 2 Oct 2013 09:37:58 -0700 (PDT)
In-Reply-To: <521DD72D.2020102@mlbassoc.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>
	<521DD72D.2020102@mlbassoc.com>
Date: Wed, 2 Oct 2013 12:37:58 -0400
Message-ID: <CALmOhgnU1vHzM263H=CtXxayw4GaTGdTxdB5gG9=CQpe8+DMXg@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 02 Oct 2013 16:38:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 28 August 2013 06:55, Gary Thomas <gary@mlbassoc.com> wrote:
> Hopefully
> someone will document all of this in great detail some day. (in fact I filed
> a
> bug to this end many years ago...)

It would appear that
https://bugzilla.yoctoproject.org/show_bug.cgi?id=1088 can now be
closed as a result of commit 581778c52493b662f449bbbed36453f161501c18
in git://git.yoctoproject.org/yocto-docs.

