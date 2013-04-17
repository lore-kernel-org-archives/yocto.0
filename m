Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DFDE014E2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 01:02:38 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id hf12so1086357vcb.7
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 01:02:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=PzWJV+izNEIh/dd9FS1pz0tbE5U64VddwTU2vyDCk5A=;
	b=S7BenL2RgTTRFdS5J6V2u+T1QclkNTmGC2rqkZSYSwsn4sf7bjTAUPpijR2pPI3Wu6
	otAXUfKuU1HhuGaFozZghAZIFBBWPnYhQgi7lSr6+4YEcY6KTUaqRIB6LOdaFLtnOlhF
	ENf3LlJaAbSn7Zz2AbBr2sJ+/7ePzZyBZRkHmDb4xPUxDFBybiNkOxZ8L/FZEgQSksKa
	BgRHuydhvYZ6fP16ti1AhH8CUgLm1mh5PsTG/f6nPF5HaT2zUUB2/MbJCiUI4CgkJeLU
	7rnSO3wSUYxqS1Fv7Bg9u9YoxT8w7s7yF15yo4ggZTwq99eGVLyU2WK+BXvDa8y6cAxT
	9iwQ==
X-Received: by 10.58.15.193 with SMTP id z1mr4055283vec.40.1366185757051; Wed,
	17 Apr 2013 01:02:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Wed, 17 Apr 2013 01:02:17 -0700 (PDT)
In-Reply-To: <CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Apr 2013 09:02:17 +0100
Message-ID: <CAJTo0Lak8VBiZeFMx3R_Gi53b-nS=5DmyZgd6oq+z_xL__mkSA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQl4OPS+zSj3kIijps8/piIH//FklryoKZ1a684Gxv6fM+47y4u6t0DwWjLbCGmqWy5L/Ki/
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Edward Vidal <vidal.develone@gmail.com>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Wed, 17 Apr 2013 08:02:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 16 April 2013 20:15, Trevor Woerner <twoerner@gmail.com> wrote:
> On Tue, Apr 16, 2013 at 3:02 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:
>> Are there any plans to provide a repo of pkgs where systems can be upgra=
ded
>> and new pkgs installed like other distro Fedora, CentOS, and rhel?  This
>> would also require yum or the new software that is replacing yum.
>
> I doubt it. The Yocto Project is not an embedded Linux distribution =E2=
=80=93
> it creates a custom one for you. Providing a public package upgrade
> repository is fine for a given distribution (e.g. Fedora, Debian, etc)
> because it can make assumptions regarding the compiler, c library,
> build/configuration options, etc. If you are creating your own
> distributions, any of those variable can be tweaked, therefore making
> any such public repository useless.
>
> If you would like to have such an ability for your devices, you'll
> need have to create your own public site and build the packages
> yourself (all of which will incorporate any of your specific
> "tweaks"). Yocto will help you do that (and make it easy) but doing
> this in a generic way for everyone's Yocto distribution would be
> impossible (I would think).

Yes, a generic approach would be impossible because of the nature of
Yocto.  As an example though, the Angstrom distribution that is build
using the Yocto Project *does* expose and support package feeds for
on-device upgrades.

Ross

