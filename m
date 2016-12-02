Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8C79E00A64; Fri,  2 Dec 2016 01:59:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51313E00A64
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 01:59:27 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id q130so86032715qke.1
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 01:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nfoIe1uwh8gLkOw9xMhPzTnJJ2MhXAbYBNNDGi6HKDg=;
	b=DYqgwmbvOVmGqHn3N+GVVzauCyEcdrp7PLAImoldWq74rJuHEPN4F3ev8gOd7zUDFl
	+K47CtRdC5mVE+D9z1AOycvlSnvqJ5CcKLMiANwjc4ucCuJV3QWGmcBVj7OeuZ9HJh+o
	ylERUV9PVQAZxTPOrLYqkrIAFa9UVUzpCLpiYAPa2I2G4wxeKBTCrJJLShPceRaLzVJU
	K+hGrp5FPThDKJUye+m/kuP0gqC+hputW7cILUnEMdN0Ntp0ypvefG0WqJb46kRtmdt6
	qXduwDoTscBnqnMk+VpfQTDXDM8WRWdn+9AfbwIeIziCGOJXP7o1+Y4ykH/uGcfgIdZN
	HJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nfoIe1uwh8gLkOw9xMhPzTnJJ2MhXAbYBNNDGi6HKDg=;
	b=EkL+yglvxTFeClYAmtAJbjWP2QQr7eZk0k0fBg+pakV/+a0YUeUENYZuHzydcNKi7z
	BSkAmxAzAGV5bHSzLp14VwIJP6tMfOuwSnJ9eg7bJW73+zC4TvtAD1wEkWAFyrP6wc/k
	hyve2hqgIY2g9iSImO/hQ3eKYg1gMLcB4z4Daefnn0shZpsikqia4fVKg1AhiwsqDpfA
	1jM9hFbKnr2MfGoMWdykbFol0RE2o2IBIcJhkdtdV02olwKBcwjw/csAzDV1hHj1JDmS
	7ALgWrDdkODAglMCGhp3lAYEhAz9KlXbG90a64/fsPoichvjGgS2m5j0JnXxW+VYTS+9
	ZeOw==
X-Gm-Message-State: AKaTC026wZ0FP2bZ/r/bDJejF6DRarwgmG5IEn052/E/4lcQ+Nmg8xUz7NfnPWa4/29Y/wqvMjhDVo1K3DWCC1GG
X-Received: by 10.55.75.17 with SMTP id y17mr29310261qka.26.1480672767283;
	Fri, 02 Dec 2016 01:59:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 2 Dec 2016 01:59:06 -0800 (PST)
In-Reply-To: <CAJTo0LZPF8kzexk0vhptQtKZVbP71EDKjVpRMT76XY3HhcVfrw@mail.gmail.com>
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
	<CAJTo0LZPF8kzexk0vhptQtKZVbP71EDKjVpRMT76XY3HhcVfrw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Dec 2016 09:59:06 +0000
Message-ID: <CAJTo0LYYQ7YbFEdiCRfv4jJnUi8On_eS1zEyrU56LjGS4SoMPA@mail.gmail.com>
To: Kun Yi <kunyi@google.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 09:59:29 -0000
Content-Type: multipart/alternative; boundary=001a114a88c852a4e60542a9fea4

--001a114a88c852a4e60542a9fea4
Content-Type: text/plain; charset=UTF-8

On 2 December 2016 at 09:53, Burton, Ross <ross.burton@intel.com> wrote:

> On 2 December 2016 at 08:36, Kun Yi <kunyi@google.com> wrote:
>
>> Reading Yocto 2.1 reference it seems that I should be able to
>> cross-compile binaries for arm inside the SDK shell and run the
>>
>
> You can't run cross-compiled binaries inside the SDK unless you use qemu.
>

Whoops, sent that too early.

For simple binaries you can use qemu-user-* to run it inside the userspace
qemu emulation.

Ross

--001a114a88c852a4e60542a9fea4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 December 2016 at 09:53, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extr=
a"><span class=3D""><div class=3D"gmail_quote">On 2 December 2016 at 08:36,=
 Kun Yi <span dir=3D"ltr">&lt;<a href=3D"mailto:kunyi@google.com" target=3D=
"_blank">kunyi@google.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div id=3D"m_-1712959700444094127:45b" class=3D"m_-17129597004440941=
27a3s m_-1712959700444094127aXjCH m_-1712959700444094127m158beaef70e1354f">=
Reading Yocto 2.1 reference it seems that I should be able to<br>
cross-compile binaries for arm inside the SDK shell and run the<br></div></=
blockquote></div><br></span>You can&#39;t run cross-compiled binaries insid=
e the SDK unless you use qemu.</div></blockquote><div><br></div><div>Whoops=
, sent that too early.</div><div><br></div><div>For simple binaries you can=
 use qemu-user-* to run it inside the userspace qemu emulation.</div><div><=
br></div><div>Ross</div></div></div></div>

--001a114a88c852a4e60542a9fea4--
