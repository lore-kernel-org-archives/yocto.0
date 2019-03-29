Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1125E00D28; Fri, 29 Mar 2019 02:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93106E00AB0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:37:20 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id 3so1142310oir.7
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fOxiPZThWwReMVNlBqbPL/8y8ED2KOFNrt3QYbxb7js=;
	b=ss837DvLcFDkDdBnvKYDwLCp6GCtrSD53IvB1LAMHGGR8UvoiY8m9oHPrsMIUDVVur
	ny3BgNzsmwEJSgMmdqyBiIZzwV3QhVzVZJHIhRnnVDlk6PKoxHav8CW78lFgaebek9qp
	RUbY6/Xq8qwqIq0byYGlGOwOWBsyvoSBiPSaKm0d/O+RsvbIAELwJJvvJqGYICxkzBvM
	XfBVMt+kZgscPxmtQ65sn+6kKGA6t1B5VslVRNNU9fuHWLD29Iw+GIh81249Fh5oqJde
	ZGb2vLZdkcVsDI/YQ+gDBht6AGEIbT9onQPmDvdQ/4Kl42OKzuPslW/SPK3+g+xeOMtz
	Gi+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fOxiPZThWwReMVNlBqbPL/8y8ED2KOFNrt3QYbxb7js=;
	b=ZBqrUmV4067XHGOAFoearqsa/mLGbmw2z3HlBiP3FGPLP9pTLIktAcMQoSzp655n5e
	grm27EFtDiShb8J83z3MFWjN9al3wIIkP91hxXytSouHx9rIt6Ubf/n4C0duYAUBZBz2
	kO7lYIWE1EXUpO5G1+wpaihU4swkb8u7vBwNhfZP2ZEPgLU1XHE8EUjTAMsJrZIJI/UL
	RgOtkSyy8tGx55MIA+80V0K5DgmHWdJ12Sdj94+K8jGxv0FC5wEwNXdCgj0Os8slIfs3
	2XZp5BPhLg8TFeh6FX0QxR7aZH8IirzIWSdiw9sQ2GG4u7AMnacw1cDLh9kugEL46KFn
	KcIA==
X-Gm-Message-State: APjAAAU0Rxk8/mZsB/Yp9zUTSzcNy7tVjmn9M4XUgPlByPrQXQY+Lzfd
	ZNycKdIZ66appExrDreyQX7PXFPMU+5iUZdTxoU=
X-Google-Smtp-Source: APXvYqxaCtiSv9wpxlyn45QNXexRS9j4w8XqSRcMAXEfOxSnO3zZMcT1cvt99wIbpnUVHFV9Fg0TpbrwVlauVu47gAM=
X-Received: by 2002:aca:5809:: with SMTP id m9mr3015642oib.88.1553852240087;
	Fri, 29 Mar 2019 02:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
In-Reply-To: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Mar 2019 10:37:09 +0100
Message-ID: <CANNYZj_VMX8FdBhMCwvq_hMYNa3n_Ng-kMacAo4Eg1ug+VuPcQ@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 09:37:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019 at 09:51, Dimitris Tassopoulos <dimtass@gmail.com> wrote:

> To do that, add this to your build/conf/local.conf file
>
>> DISTRO_FEATURES_remove = " 3g"

This works around the issue after the fact. It's better to track down
where 3g is added in the first place, and adjust that.

Alex

