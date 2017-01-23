Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82BD2E0082A; Mon, 23 Jan 2017 03:19:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC6C9E00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 03:19:38 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id c85so127215205wmi.1
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 03:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+5Xt5oG3FZ28Nlls6tlmi0OafsNyvoxs7jMaRChYQVM=;
	b=HqZJ9gMgq0EwRZkspFt9h/8/TqRE3DZLog+KmChE9aF0RpctXi5UGZhJo8msyF939n
	zURPpdalfO4auckwhCnU1XypoGAeeUgV/XDPTYsjf3bS1IOMp8qENApGHOJNc7Si7pZA
	PXZW2Zsxhr+kRytQXeDTNmFJpiZciRcTUJiz20HFKeAWf8OUguiK4gw64aBMpsi4ozd6
	UuXvo6Cw2PU+f68EEFxgvim8h3mXab9rIdHLdqgaoZCPV6SK/mPfabXz9WV53zFg3/iI
	heLrMRKlCZSNr7urow7m713VpVVQykj7Y94NoIfdiHH9MG+dbcenmSymX+AURnOXjASx
	8jKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+5Xt5oG3FZ28Nlls6tlmi0OafsNyvoxs7jMaRChYQVM=;
	b=mYgz2m6nZJyT8pwYeP/n0qmVrjzOEj9gnjE+8x5/6s9WbC+ICM87ppCd6qmmBKKmcn
	a9KjEVnxN5PgCOuJlKSJqOxEfAnqmBbfhfXnyQkplkw6mFKW7PxAYNENDvtT2/RtVwX/
	jK8a/5e/j2nQHEaMCGY2w54peayhtUQ/Q4vsdZgrc/5HLPTHx40U8ckRyhBb7rUWH+0D
	VJ67Qw9iL2g7kTW/vvr7pezTEwaNa7r9z6YJAi73FgRp/DWuRomHtW1oehpcKxyEe/+C
	Zl31rEYzlm7an3844BMpk7rWuHEAwc9Gp9ZFWqku3xUk369rfVFT+GwZMVjKUN3MXU+f
	6ZAQ==
X-Gm-Message-State: AIkVDXJA/C64L/Euo58n4eb0OD3znDv3YhrH+Nf6SS3APHbxWjCLm5O/IKNmLHSjLsYOgD1ignXDkXJBSfA3aw==
X-Received: by 10.28.13.16 with SMTP id 16mr12602358wmn.101.1485170377192;
	Mon, 23 Jan 2017 03:19:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Mon, 23 Jan 2017 03:19:16 -0800 (PST)
In-Reply-To: <8ce61c39-5082-5540-ca6c-d234cf62d993@topic.nl>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
	<8ce61c39-5082-5540-ca6c-d234cf62d993@topic.nl>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Mon, 23 Jan 2017 12:19:16 +0100
Message-ID: <CAD4b0_+F+TL3QwzZrqhKRFyhe964R5FBPcmAz=9ahHdDjcad3w@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@yoctoproject.org
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Mon, 23 Jan 2017 11:19:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 23, 2017 at 12:02 PM, Mike Looijmans
<mike.looijmans@topic.nl> wrote:
> On 20-01-17 14:59, colin.helliwell@ln-systems.com wrote:
>>
>> Thanks for all the pointers everyone. I=E2=80=99ve now got (in my distro=
 conf):
>>
>> DISTRO_FEATURES_append =3D " systemd"
>>
>> DISTRO_FEATURES_remove =3D " sysvinit"
>>
>> VIRTUAL-RUNTIME_init_manager =3D "systemd"
>>
>> PREFERRED_PROVIDER_udev =3D "systemd"
>>
>> PACKAGECONFIG_append_pn-systemd =3D " resolved networkd"
>
>
> Thanks for the tip, I was also wondering why network didn't work with
> systemd.
>
> Is there a reason why this has been disabled by default? It's strange to
> have a system without network as the default setup.
>
> I would at least have expected network support to be enabled for any mach=
ine
> that has some networking features.

Pick an choose, most features are opt-in to avoid bloating the final image.

Some people are not interested in networkd and prefer to use connman,
NetworkManager or other tool.
Note that networkd is not wifi aware, but does observe interface state
changes. For wifi you'll need wpa_supplicant to actually drive the
process of joining networks, while networkd will handle DHCP part.

resolved is not enabled by default either. Even when enabled, it's not
really useful without the nss-resolved piece. I've posted a patch to
OE-core [1] that would set up /etc/nsswitch.conf properly but I wasn't
merged.

[1]. http://lists.openembedded.org/pipermail/openembedded-core/2016-Septemb=
er/126738.html

--=20
Maciej Borzecki
RnDity

