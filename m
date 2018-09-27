Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AE82E00754; Thu, 27 Sep 2018 09:58:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.53 listed in list.dnswl.org]
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893EDE00519
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 09:58:45 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id d7-v6so2732695lfj.9
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 09:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=8jV5J4i4AY6RnfrXRgnOVwWUfnw5A969/FPI95zDNVo=;
	b=Wu9SATU071bQyZkahHrPkoPuHO5U7cFsm2T+7eIyRGivjedP9Q9PsybfNV1S1ny9GY
	ZiHK2oRtbjN4aaNOX/1+tbru6NMEe6PetowoaomNXrz8m0o7N1aIc415lDmBYMbIiSFe
	DhOU0gQ9s/VOEA9aQAhteIMf4joPnQjm/HYJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=8jV5J4i4AY6RnfrXRgnOVwWUfnw5A969/FPI95zDNVo=;
	b=TrBTVgLMUVNIuAkD0Qc4fl6lQw0u1LsFQDT4pJ9NO0c1HhsHuvC9zNQX114TgbPP7H
	WjnIGSOjvsYhjOf/mTTNf7ruBxpKDqMyXBo0uKkzidq7SZbKRSNNLp32hm5Z4yQwxrQv
	Cnt9LdRi9QduB4/6RFqAkPMR2L3Tc6/Vip6hm8HOoZmo/CLm6ldO9sAXi5cx15Pie059
	sTbDM4fzEsyBBSaCrKEkL/hncg4JluotyS3bbeQixrxHIIMp6QpXo2etC0Sl+jbHGX/2
	RvgtSHubXJGB7KNaBrMTtoHg8W8XzHxFxLHmQRwImVqEIRRYPV/1Uz5A7ODYIUChMUcY
	oXtQ==
X-Gm-Message-State: ABuFfoiSC85I9jGRy+CkktzuFOR+BZVX1GV0BFl3/cAxUdIPqNkTjFZP
	nT8jgQNF+3C0zrdYvWzGvRFBiZpv5+UJe38i53bOs/Rv
X-Google-Smtp-Source: ACcGV622uoKbaV0rRqTmUoLmJ2eNZVm2ybm3T9cpNN/Uf8Pz6z55vO1BsHcfyg+LtzXxNQ7Oegkcsv1Pyxua6buQclM=
X-Received: by 2002:a19:8f57:: with SMTP id
	r84-v6mr7764540lfd.131.1538067524040; 
	Thu, 27 Sep 2018 09:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <20180702040215.GT19965@denix.org>
	<20180927151523.GB7186@denix.org>
In-Reply-To: <20180927151523.GB7186@denix.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 27 Sep 2018 18:58:32 +0200
Message-ID: <CAP71WjzqY0B6=L3+bssy8VphgLT9Os2-ZiB6ZAG3jACMjY=Esg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [OE-core] OpenEmbedded branded T-shirts and Polo shirts!
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
X-List-Received-Date: Thu, 27 Sep 2018 16:58:47 -0000
Content-Type: text/plain; charset="UTF-8"

Go grab your next attire !

---------- Forwarded message ---------
From: Denys Dmytriyenko <denis@denix.org>
Date: Thu, Sep 27, 2018 at 5:15 PM
Subject: Re: [OE-core] OpenEmbedded branded T-shirts and Polo shirts!
To: <openembedded-core@lists.openembedded.org>,
<openembedded-devel@lists.openembedded.org>,
<openembedded-members@lists.openembedded.org>


Besides black and white OpenEmbedded T-shirts and Polos, the shop has also
added blue ones!
https://www.hellotux.com/openembedded

Plus, Yocto Project shirts are now available as well:
https://www.hellotux.com/yocto

--
Denys


On Mon, Jul 02, 2018 at 12:02:16AM -0400, Denys Dmytriyenko wrote:
> OpenEmbedded branded T-shirts and Polo shirts!
> Show your support!
> https://www.hellotux.com/openembedded
> --
> _______________________________________________
> Openembedded-members mailing list
> Openembedded-members@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-members
--
_______________________________________________
Openembedded-core mailing list
Openembedded-core@lists.openembedded.org
http://lists.openembedded.org/mailman/listinfo/openembedded-core

