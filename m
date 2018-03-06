Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4FB2E00E0A; Mon,  5 Mar 2018 19:26:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8825CE0083E
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 19:26:12 -0800 (PST)
Received: by mail-pg0-f54.google.com with SMTP id m19so7775957pgn.1
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 19:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4aaCo4NQS9+NiXzX2W7O84j3KzEQvOzX7oWf3kSY3Tk=;
	b=rOJe8+8wg8WUEJfxCumjI4K3G0z2zGHHju8AnoQr69s88epiSSfx957LQbNdlLNf+6
	BBEEIDJNVYJNQel4L+fEEP0FAkrIVu3f2Nau6FrLdXFzvoXnl2u4O/yGCWdx+J1phYfO
	/1Xdvvu58ghs4fNbo7Fca7XiVhKF3St4PJm9p2gyKhcf/ubvVPdGpdyhmCYiXMvyRMhd
	Yf9ecN8WlJJU3TWg+O2YVsL+Q6l+DMX01XFKMNYv0OUlwKUitySyBAnIgjTdcSPvwHuL
	gwub62IaOKj4rI9QxNSwoS77LpE1JmOwhr3x0dBNz/NweB43ecJIBCvExSc1rIcacqo4
	CFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4aaCo4NQS9+NiXzX2W7O84j3KzEQvOzX7oWf3kSY3Tk=;
	b=p2fE08o+NC2LjyaGJhOLJ1eDRuT60zFv1cH3UYNudBGNJpLvag9MuBRCkO7XxkCZPG
	/27HA63cBFlS6FpVB5Y5lrjqK9LlrTGzKxelzBOZpnJ7M4LzhBrOqrUNpoby406+ku6y
	nooiH86xWNYnjQ2ciXw+i0I///238kuTG9Ec8fRtYcgCzusjG7SRcFr/cwbsbNaRbTP/
	wNTpTRANGUghJeGmtLSykysBwCM8g5qZew/hZc2xjm0W9lukbUDhHXx89Yj4hRSiIsZl
	8+5ow8RxcIvKJ9HIh8u23b6cAanXQDrCZzCawUe58DT8T3oAwaWNYByD9cF2qcVZ4E3e
	05BQ==
X-Gm-Message-State: APf1xPC1YqHA1V6MuRClfylfF55sJUh0eW/ojqp+3ayFTM7TWcpWTPhO
	gz7oQh7WFIHi40c/T+WJievPVt7h80Ugn0d6ZkE=
X-Google-Smtp-Source: AG47ELsXAwyFEYdrDTP8x8QgAgRb2nFs9kY7kkMvmVbltNGpBbPin+4YErb/WhO9Nb+0Hpu3CE7UyHdiuQGwb7Ew22g=
X-Received: by 10.99.170.73 with SMTP id x9mr13969804pgo.393.1520306771562;
	Mon, 05 Mar 2018 19:26:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.170.69 with HTTP; Mon, 5 Mar 2018 19:25:41 -0800 (PST)
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Mar 2018 19:25:41 -0800
Message-ID: <CAMKF1so01smFighV7WUB8RzndjUxE-17CiL=e_eyh-Bhs9gQoQ@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-java][PATCH 00/14] openjdk-8 updates
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
X-List-Received-Date: Tue, 06 Mar 2018 03:26:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 5, 2018 at 1:30 AM, Andr=C3=A9 Draszik <git@andred.net> wrote:
> Hi,
>
> OpenJDK8 in yocto is a bit outdated, so these patches
> - update openjdk-8 from the 1.5 year old version 102b14 to the
>   current 162b12
> - modernize the recipe using bitbake variable overrides
> - enable building with 'security' flags enabled
> - fix the aarch64 build (by using the aarch64 port, which is
>   still separate in the OpenJDK8 series)
> - fix the musl build (by adding appropriate patches)
>
> This was runtime-tested on x86-64 with both glibc and musl
> against the 'poky' DISTRO, and compile-tested on aarch64
> against glibc and musl.
>


this series looks good thanks for fixing musl port

> Cheers,
> Andre'
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

