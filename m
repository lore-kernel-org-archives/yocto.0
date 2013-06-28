Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10547E014E4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 13:07:00 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id n10so2817008oag.0
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 13:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=j0KR9rSyqxfZNaP4TfVkG0N17DvGoaDfM4m+EcoD3nY=;
	b=bH8R5T8/LjStEt5K0C4SSxuUq3brW5JVPqu/ZjZR+N6sXNr2p5jbXUuUolyeUAvplU
	tGYOeE4IYMTfBxJ+FoNkaEKgQEfED5Yz138mbhwA9Mr8KIFed/RihrkrVEp1OggzkXiz
	2FWq+QSsX1ql+4UPDq3C8SiimhsTvpfTVzWzEohA1uXjAei5onRxZB7vrDhnCoYKju0j
	3nduXAne6Qve3Hwm5lUnCm/xKRnmpjJJqOHezF530T+F7oZW0B5o43IeOw2rd02vDVYd
	6116G/9bGsi5mo5Xam77rLTO6Ema4RtqEd83s3BuVQV2++siBC/AyX+4qyzdAXjWxW6B
	TtjQ==
X-Received: by 10.60.155.200 with SMTP id vy8mr5787641oeb.72.1372450019994;
	Fri, 28 Jun 2013 13:06:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.126.144 with HTTP; Fri, 28 Jun 2013 13:06:38 -0700 (PDT)
In-Reply-To: <D4BD4C7E-8D99-4C55-821D-DF8C2BF9F6EB@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
	<CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
	<D4BD4C7E-8D99-4C55-821D-DF8C2BF9F6EB@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 28 Jun 2013 22:06:38 +0200
Message-ID: <CAP71WjyBMQY338qym=wSpptbo2CyXaxosF4YgC7GEkMhxUSMsg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQmGNAa6t4wc5E1z1MFKk4b2TPY9BZHg4wvS5px5AH5REH7EeAmZ+imMt/QM636NYspRq9d/
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
X-List-Received-Date: Fri, 28 Jun 2013 20:07:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jun 28, 2013 at 10:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
> We use android repo internally to manage the layers and I think there are
> projects out there like here
>
> http://www.jann.cc/2012/08/08/building_freescale_s_community_yocto_bsp_for_the_olinuxino.html
>
> which are also using android repo to manage layers.
>

indeed. gumstix too: https://github.com/gumstix/Gumstix-YoctoProject-Repo

and at Linaro we are moving all our OE jobs to use repo tool as well.

