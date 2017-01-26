Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44C2DE008EE; Wed, 25 Jan 2017 18:32:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1161FE0088B
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 18:32:39 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id m98so3893539iod.2
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 18:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Qx3NHyC0c61DQMYDj7K/a6C2pdHOWk+KilNkgp3+3KQ=;
	b=Dd6dDxqgEbUrWsb0lxAqnM/aRgzfPXl+yxjhFPiiDqJzE7rL+bB5YLXgH3c/CcTNm6
	iTjpHH8AI05j0mUb/hFpvFRko8XZz0NyVDpnkiaIqNX0CblzCv+IwODxSenQQyH53bej
	fhhx/5wiqatzOSQ6ZIWmZjdcwmTIXlyh6nlhjYimACu9J/DCu3rNQ4Wm0PCI4ztK5SM/
	UJwx3ansnvXaBzYdXVsG6wZJJ89Q2YqvVL3IgjPxvpO0wCOHLU9lsAygypaIgc3+PRiT
	/K64oq0FtGz5GKZqSeNL5wG1dLJzEH0t1VJmAiX0DAhBqV3qqPXbgixjR80Gfjep3Wp5
	TDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Qx3NHyC0c61DQMYDj7K/a6C2pdHOWk+KilNkgp3+3KQ=;
	b=g3Xg7TrwS4oFGMZpVv3B9ZGuI9Zvg0Dkoqihj0WWOWUUxBfvy3jpWIhrreirL+gI4A
	4ylz4MY8alO3aUPoUT1w5MvNVpkONBEsEzIM8DIcI8dHei4BLFMSsHEGV02qqDNVmHQt
	Wr/4fzTOgJfiM5/cxvGqzBZmo2FFbnFbHJezIzwE49xxIO7I1UmuKfMdAMnxOcBr07mH
	1L30KFUyk3mShk39oWjpGJuQHgDtrmdQso+OKdivnr95nqOALAaevL1NT9+5Bwguh99f
	6COPaJkjupOHKsZ7FgZxLFoW0lPiP5aYRqahc/lvBhrh815febhfiFSyKhJuaWdWkRW2
	JvoA==
X-Gm-Message-State: AIkVDXK9KdDqKieUJBP57tzchLitMGx0XXNn1MZS6relz5w6VSYk3rrOqlZneZlP9qktjQ==
X-Received: by 10.107.48.199 with SMTP id w190mr950729iow.117.1485397958995;
	Wed, 25 Jan 2017 18:32:38 -0800 (PST)
Received: from ?IPv6:2605:a601:a83:3700:d047:abcc:6769:c948?
	([2605:a601:a83:3700:d047:abcc:6769:c948])
	by smtp.gmail.com with ESMTPSA id 16sm651852itu.17.2017.01.25.18.32.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Jan 2017 18:32:38 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CY1PR0101MB1594E1133625F03E54753AA7B6740@CY1PR0101MB1594.prod.exchangelabs.com>
Message-ID: <4ae6dc60-627f-655e-1a1c-a4ec95e980ac@gmail.com>
Date: Wed, 25 Jan 2017 20:32:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB1594E1133625F03E54753AA7B6740@CY1PR0101MB1594.prod.exchangelabs.com>
Subject: Re: DISTRO_FEATURES vs IMAGE_FEATURES
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
X-List-Received-Date: Thu, 26 Jan 2017 02:32:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2017 06:40 PM, Takashi Matsuzawa wrote:
> Hello Yocto.
> Though it may feel to me matter of taste, is there suggestion on when 
> which of these to use when you need to define your customized feature.
>
> DISTRO_FEATURES seems to be more relaxed, you can define things in 
> your distro conf.
> IMAGE_FEATURE seems to be more strict, and you need to add your item 
> also as one of the 'validitems', unless you use it through 
> FEATURE_PACKAGES.
> (Or this is not needed when you use EXTRA_IMAGE_FEATURES?)
I've always understood DISTRO_FEATURES to be policy related items about 
the distro you're creating (e.g. "my distro uses systemd for init", or 
"my distro uses sysvinit for init", or "my distro support openGL"). 
Because they are more about policy, DISTRO_FEATURES aren't as tied to a 
specific image. IMAGE_FEATURES are more about the attributes of a 
particular image (e.g. "include debugging tools like GDB and strace when 
you build this image"). The two have always been orthogonal in my mind.

I suppose it would come down to what the features is. If you think your 
new feature is more of a policy based thing, it probably belongs in 
DISTRO_FEATURES. If it is more about controlling something about a 
specific image, than IMAGE_FEATURES is probably more appropriate.


