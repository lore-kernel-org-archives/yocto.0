Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0DF6E00D69; Mon, 11 Dec 2017 03:12:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559D0E00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:12:55 -0800 (PST)
Received: by mail-wr0-f172.google.com with SMTP id l22so17119620wrc.11
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TznLu7yuF0jskOha5a5xvwaxKlQ3KuL8INwgs43lXcs=;
	b=QjLRIF2HeaCLJe2Pq00KQsHtEbMf5OH4wE9PmKv5u7YmCndiG0qggLKMs7aZdDQvAN
	m1U4KfvV+NDqxm6TeBxmsYcS5YWMBb4elPIC5kl32vwpC7MYzgOkCRzwLajxorTtqjAx
	Ud/Ri7VmhxN/cIqCfpO0O8HlGaaiOwT20B28vfJ009M+EEcXkhZZzhjQ/RjiPMt7VnyI
	uxJ62KtFjz9O2l0Eylx7HhgDj8RbwjmXoqBf6n8cUNOZBIsdU1fHYk6w9kx/kIJV2HAt
	/Ht+AKbXdvxSTdTn7XQ/qV0PqiPiJx1EKNn2df0iIfxvrjaNtaj/7gES33tUCYI35NhD
	JAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TznLu7yuF0jskOha5a5xvwaxKlQ3KuL8INwgs43lXcs=;
	b=JZroG05y1OsOb2Ied15aKB8BTaQUUKBEtKg7fJTl/EkgJjWgasxNIDi6dH+8OuC+iD
	oWPe1H+tcqv3iTbIvdoehLyHfBQXplTHgbBgO1Fgyv4P7Ns1x5skS2PrkudBGLF1sXGc
	CY/i+4xoSJJT2Mf2WQ0rVU6szrmApmO04BFUnV8g+HeUWKbSqRCg29D8ZkL/kDh07auJ
	HIeWgl6WaId9boZTzRKz2IvYB+GoYnOtKVWnQTpERBcym90pvMJvq6XFGfnBkR1AkW/5
	tAtu6I8RFxC/qKRmYRt5bR1NPel168bUoXRkQ62aMcpbMBViFh8nEYK8BO/IPQFq/VW0
	utPA==
X-Gm-Message-State: AKGB3mKaDQ15+1tlrORLGl3aKmDLZ7UJkQhCpbsAUpnR6YJe+LxxzITd
	MB702/nbQKit1fQ7jq4fN+XAOmnBPACyDfdezmlBeA==
X-Google-Smtp-Source: AGs4zMYyI7Yq9Ni387HJBSLzfEpXOogoBqbWZrk/Gv18NcOAgDtO+CE1pWtEXz3z17Coh8+nxLC/h90+Cf3HayC4f9Y=
X-Received: by 10.223.149.5 with SMTP id 5mr11276581wrs.135.1512990775016;
	Mon, 11 Dec 2017 03:12:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 03:12:54 -0800 (PST)
In-Reply-To: <CAF3SDA5n9M_fcVY-5GCC0WV3tGhyz7Fqa49iocUPurufBsrq+A@mail.gmail.com>
References: <CAF3SDA5n9M_fcVY-5GCC0WV3tGhyz7Fqa49iocUPurufBsrq+A@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 11:12:54 +0000
Message-ID: <CAPyrkgz8n9WWx4TdVbXgh-8cZB2tApCaBJ5APvS5GLQ6XhVp6g@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VPS for building and serving.
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
X-List-Received-Date: Mon, 11 Dec 2017 11:12:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2017 at 1:15 PM, Daniel. <danielhilst@gmail.com> wrote:
> Hi,
>
> Is there anybody using VPS for building and serving packages? What plans =
you
> do recommend?

I don't recommend using a VPS, they tend to get expensive for the spec
you need for a Yocto build. You want plenty of RAM, CPU and disk
space.

I use Hetzner for everything and I'm pretty happy with them. They have
a server auction system that's good if you don't need a
top-of-the-line machine: https://www.hetzner.com/sb

Let me know if you need any more specific advice.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

