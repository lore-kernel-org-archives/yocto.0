Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE158E00AB0; Mon, 18 Feb 2019 23:29:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F18AE009EB
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:29:49 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id y4so22044332qtc.10
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 23:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jdjfnU8I7mFF5Mqnd/Gs9/L0ewXNSdaG3vCOFfokqr0=;
	b=X0ltb2hPOJZUTt2ZZET4WPmwr4CcUiu6LhPBv4EC4uNcgtjRFO+/8jfXXnVTry0Mr6
	rY0Toy5OoZMeahvQtDy6bXQv3FMFve8OY7ibCzGpNngTQrwlzc/mKkW4sVkhwfMj5aSj
	FZkc/oLON1bX8mFmwmnd33q5TmfZkfRxyxzUbKDBtVVgBBhs5JnSCl27xrEp3wH+cyKl
	T0paunccCaiCN6I/lgGP6SagieUikyZd6R2wutMQNxAQpImmU/bZgdD8DpRAt3V5FNBX
	ozVCu8zzcPMsvRXHqlKvqIGI4DnKQOXM6Cc9hCpnqE/tomsOoFja2mdjcjEJDbHaDq+r
	EDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jdjfnU8I7mFF5Mqnd/Gs9/L0ewXNSdaG3vCOFfokqr0=;
	b=qoXSi6QveXcBpKIFTVHHTsVaoQVaCDs8KVCtnny4AeSX1d4QYDAvZUHRYZ2rk7c7XG
	IFZ6qz0FdQ493/1g7sBwcIbKzhsYJSbz/xjjnAwcE/Sup4NmXyQzuzw4fCwWDayKf73g
	YXY6TxoTLZzE3+ub8JuBLi+0MVTHkrjC2ddGBs82zDhalpzN/5oQWtEHBmYOvm1xJmsk
	JKY1wEBlBBRaUVBcA2wat7tpIDyakmX3EqoPuKsVNa3bI4UGtjYgFohMniEHxmJubGKZ
	bkctTkj6hiPykRiIYLyOoi8CZwlkJEa47jq4uepvmTSMirk6/Ki5M6d8m8Dxw04GhJSX
	P6ww==
X-Gm-Message-State: AHQUAuaVnx71sJCatVCDCvugd01Dp5xGuJ8AIGKXnWbppFWS2BWqI6HI
	hDtyu3TC4hdOkvNKsMWJX/tm5UA9FbSMrgdt9oTrYQ==
X-Google-Smtp-Source: AHgI3IZecFS70pmM6ducL0F4Z/Rf+/26w3V5bckL1jEG+mQ9HNv/j9lWorWIQxuUWdkxtZUiQhc5tInwTyVHe8fflV0=
X-Received: by 2002:ac8:2562:: with SMTP id 31mr21801230qtn.253.1550561388299; 
	Mon, 18 Feb 2019 23:29:48 -0800 (PST)
MIME-Version: 1.0
References: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
In-Reply-To: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Feb 2019 23:29:22 -0800
Message-ID: <CAMKF1sqnR72D0ig4Frt3+nQeX+NS8bmZhtxEBEo1W1uYTeFstg@mail.gmail.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: QEMU Raspberry Pi 2 machine
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
X-List-Received-Date: Tue, 19 Feb 2019 07:29:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 18, 2019 at 10:34 AM Jean-Christian de Rivaz
<jean-christian.derivaz@innodelec.ch> wrote:
>
> Hi,
>
> The chromium-x11 browser can't be compiled for the qemuarm machine becaus=
e it use the old ARM926 processor. I have modified the qemuarm.conf file  i=
nside poky/meta/conf/machine/ to add
> DEFAULTTUNE ?=3D "cortexa7thf-neon-vfpv4"
> require conf/machine/include/tune-cortexa7.inc
> But I want to avoid patching files of the poky project. Is there a proper=
 way to add a QEMU Raspberry Pi 2 target like qemuraspi2 for example ? It l=
ook like many recipe files contains specific part for qemuarm so I wonder i=
f adding a new QEMU machine it a simple enough task.

right now OEs defaults for qemuarm is to emulate armv5te based board,
so building chromium for that is not going to work. But
I think there is effort to switch it to use armv7 which might be more
interesting for your case. For best results you can use
meta-raspberrypi layer and use rpi2 or rpi3 machine config to build
it.

>
> Best Regards,
> Jean-Christian de Rivaz
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

