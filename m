Return-Path: <trevor.woerner@linaro.org>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EEBDE01206
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 18:56:14 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hj3so2044541wib.0
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 18:56:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=xl/PegfY+OhA1rnLEu+PC0glanvI6PyNa9Rn4Ht9JYo=;
	b=l8e7rLZGzaIwGWS++kFNaaIzzsNtgLWd9n/QSGHMg+t14134vumKhn5ivPjrIMfTWX
	ifjAGlbJkyOMgkK0h3uSf3M93TgvBlvxhbeC99sK06AEaDw22xViA/6/qOPvA4z3hVYQ
	V2VrlWWZ8UCwiGlsSpdmgDbATucmkItnu2nbUuRz4OwqAg/Zf0eG/m/kne2vr+rQoT5y
	enfHvOMRxxwz4q02UVHgE0BwSDB72l2evWvxhYWTLzy6g5eZTlAt1Oux7YLkHcJOaunC
	nNh8WCmLS0R/f3Rp0wnFiZiewOowyxEFNHyo0EUwStmGwVvjND8cDG8apghjmGe9KqJw
	pggQ==
MIME-Version: 1.0
X-Received: by 10.180.211.49 with SMTP id mz17mr1962838wic.23.1372557373507;
	Sat, 29 Jun 2013 18:56:13 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Sat, 29 Jun 2013 18:56:13 -0700 (PDT)
In-Reply-To: <CAP71WjyBMQY338qym=wSpptbo2CyXaxosF4YgC7GEkMhxUSMsg@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
	<CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
	<D4BD4C7E-8D99-4C55-821D-DF8C2BF9F6EB@gmail.com>
	<CAP71WjyBMQY338qym=wSpptbo2CyXaxosF4YgC7GEkMhxUSMsg@mail.gmail.com>
Date: Sat, 29 Jun 2013 21:56:13 -0400
Message-ID: <CALmOhgnaKkTxBko81RvKjRc+imfarpSaY8bXj4ZOCFeLZ8hGog@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
X-Gm-Message-State: ALoCoQngKroYpbZIaOgfhq9LsJndB321/iaCURQhRPCqNDx5LtxL0KOjovPF2xI8P+ldHhfTkCvJ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Sun, 30 Jun 2013 01:56:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

It looks like the community freescale work at github is using it too:
https://github.com/Freescale/fsl-community-bsp-platform

