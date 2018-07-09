Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 720B9E00AD8; Sun,  8 Jul 2018 20:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F22DFE0086E
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 20:47:12 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id l64-v6so9674486vkl.12
	for <yocto@yoctoproject.org>; Sun, 08 Jul 2018 20:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F3VoygwT6THz7AEmTlwY1uGgYHmmibrwhPjYLIqyQvo=;
	b=cZG4tYYB30VdEmttwhMt7ruTmniDt9V5aLlV289voFc+ZOLL2msBdf6+w1tk28L4uE
	iYapSrQlN/yKJ71HwiJ2H/B12UcL+t3UvUMZljqL5qHpbQZ2t3L5BiLOFsgLwoZEwJCy
	puGU0HxqW+LA0JVqNQcnGBXDgvvlS4mSGO29akMuU+ddEimY9fMwLfbATQVEa4AXyH8W
	MQPiY8IS+XjUum0cQHo53zNtiDOZrMKqb0Heq7bqvSf8CbG7vML7P6/XGdrX4GrvkbEy
	ywqG9CaL4Bwqa6MU0R33m703qZBEwtPV/omkh+1r41MbgpKCx5Ur8hgv3XVWBHtSrkCO
	W5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F3VoygwT6THz7AEmTlwY1uGgYHmmibrwhPjYLIqyQvo=;
	b=k/Hif401MXz1X61VjUVyK5FFIO+/nFbCWwJR3r/cTEI7NrxRDkbFkRSMndCYSzCsZf
	OUrnkWnizlWf5UsCjMsCw4jfx8cFZz11isgSeQaXBWweU/LBjbk9xD8ByQXt9wvicWij
	AyPyDGG+7SxWCzjKny/htnngFl6cmwys6NXc/0MYpoKJ0zNhRIgRAdd40fePWpKbCg1Z
	vha1Yh7jWxqj/MAZA8y8/wd4ZJP/gzo8p94DrcHJ4CSuhz753jSWvE/NolZGGUO2nNDD
	vsjiD6xykuXvtqZTgnQrMxPzJ9Nc7D0CPNEH29akUqMffl1tplszUqgeFsc3x40nRQz+
	YNaw==
X-Gm-Message-State: AOUpUlHvPrgzGTxcLgeqrFvtxfb5WMxz18wSPUmzhMduUwPkxhAd36Xp
	rhRbE+4NqEjI3ki9gUQhClp96TBrwbLKbskk2pQ=
X-Google-Smtp-Source: AAOMgpcQTJUEC3WtCrNpLwMg8SEP245VWmJ4MK/dV/2p7lta8357SpLwU5zS+nSDBdXgKeQ5JxrFgWO8x1qvnW6fQto=
X-Received: by 2002:a1f:9704:: with SMTP id
	z4-v6mr2166182vkd.174.1531108031404; 
	Sun, 08 Jul 2018 20:47:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Sun, 8 Jul 2018 20:47:11 -0700 (PDT)
In-Reply-To: <81f82708-8e6b-259d-d37d-2a892d9093cf@balister.org>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<81f82708-8e6b-259d-d37d-2a892d9093cf@balister.org>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Sun, 8 Jul 2018 20:47:11 -0700
Message-ID: <CAJ86T=XC0fXH6gwrHaxeoHyguArCoDbh7S0ewn+wSgWhvnLR5A@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Raymond Yeung <rksyeung@hotmail.com>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 03:47:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jul 8, 2018 at 7:04 PM, Philip Balister <philip@balister.org> wrote:
> On 07/06/2018 03:06 PM, Raymond Yeung wrote:
>> I've changed the subject heading to make it more specific to our problem.  Hopefully this generates some responses.
>>
>> It has been blocking us for close to one week now.  We want to use our 3rd party vendor openssl, not the one that comes with the source.  Apparently, even with "minimal" instead of "base" or "sato" cannot exclude it.
>>
>> Any idea [e.g. how do we systematically find out how it's included now, and possibly what other packages/recipes we may also need to remove due to dependency]?
>
> I tend to use the ouput of the buildhistory class when I have these
> questions.

An alternative quick and dirty approach is to make the recipe
unbuildable. If the recipe is unbuildable but needed by something then
the bitbake error message will give the dependency chain. You can make
a recipe unbuildable for the target by adding the following to the
recipe:

  COMPATIBLE_HOST_class-target = 'null'

Note that there are two openssl recipes in recent oe-core (v1.0.x and
v1.1.x). For this experiment you will need to make BOTH of them
unbuildable.

This seems like a somewhat pointless path to be going down though. If
you remove all packages which depend on openssl from the target rootfs
then you won't need to add in your 3rd party vendor openssl any
more... since nothing is going to use it.

