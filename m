Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 914C2E002AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 08:48:04 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id cy12so3848146veb.34
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 08:48:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=Oo2rd5/S4chKj1NlVp/uUvA3eMiJcCpvepDGaRZAFHg=;
	b=osvxFQucPqvn/VcKerAQ4yLlygZS5u8kmdPRdSuZnTGc9OIbxBFqRF+Cpf3cWalRt+
	Z70QriyB7vB73J32CLGHwswWhRiA5wXdV0UpDGu4M8pUTVVvfY99AADhNezkZGXMvzL1
	YfnsJ0qYBLTgaQz3Cu81dNvdEJfMs5De9L135MwFQo4a0HLgVodzHw0QcTNd6BwJndUV
	VZ157m3rUajduGwd3f/X9nWmxmDw97SQ3IupzuOsA3xtze9ak7Zw6LCfh75zlX8m6GpQ
	8fEu2iRuu0KNXQUoSqQxq2VDb5JNmOc6n3aYYbgz4ZYNzzWBSi8TsqDtnyiw+zU2Gbw9
	Ls0g==
X-Received: by 10.52.91.39 with SMTP id cb7mr10336743vdb.71.1361897283352;
	Tue, 26 Feb 2013 08:48:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.77.105 with HTTP; Tue, 26 Feb 2013 08:47:43 -0800 (PST)
In-Reply-To: <512CE547.10600@mlbassoc.com>
References: <512CE547.10600@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Feb 2013 16:47:43 +0000
Message-ID: <CAJTo0LZaoP5i=Zf2UnX2435DeDmgSO0Zb4FZ7PnzQ9v1257Hfw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQm4K2zfVvGfp8OM/oqaxa+ni/uHLhtWc1m3pSUb8pY3NKArhqivI/uH8trl9xPvWEInXwOH
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X video extensions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Feb 2013 16:48:04 -0000
Content-Type: text/plain; charset=UTF-8

On 26 February 2013 16:39, Gary Thomas <gary@mlbassoc.com> wrote:
> How can I enable X video extensions in my X server?
> I'm using the default server: xserver-xorg/2_1.13.1-r8

It should be enabled by default - how are you determining that it's not?

Ross

