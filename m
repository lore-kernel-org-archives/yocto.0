Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A842E00D6B; Mon, 18 Dec 2017 06:15:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E5C6E00D39
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 06:15:55 -0800 (PST)
Received: by mail-ot0-f193.google.com with SMTP id n18so4125351otd.1
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 06:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DQvJ2z1yLBtVauO1ua9f0WTFpzpnrZfMdY/r41s1g8k=;
	b=Qy9C7S5f7qNef+LprurcAwRIGn7+O0YZ/tE+I+7ykGrF8E9mYi6cw7uO18d9m+A6QR
	jjfCDDBCNeaPN2lpKkKwFMWBLhI5xediw4PhkkNOy+rRpkgQdeA1e5OvmpU1zmQ58VL+
	E33an5YTZQ8kjs7YZ3AEy0ivGslv3HmOVFecVfX+O6rTf5/WTN2m1JS8stepy6U38w2B
	O1dk8u5zPUldCe4ZNpC+SYO7RuTPU8ktVYTeJBUyEMrWTM23SGYiKxjxoiy0wb0r87QE
	VF0jD351sLcyTNvLX1txCHBYtbK/9Z1p9uq/1vdvAovfCuUnFUKpOCBxxnihUkeU5Dht
	bPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DQvJ2z1yLBtVauO1ua9f0WTFpzpnrZfMdY/r41s1g8k=;
	b=Bz58YRnB+59/OBpAKQMDsG4GIh7OASm4kWK3Xd0YpAh0RdxchSR/lRp4FNi1wr3G+b
	Knt2iKOlQYmON929DCmcBH3M1/dM1ucnoDyds4u4/hF+8IyfrctJ3LobiOGlHEWpDIRv
	4pRIRj44k/h819oBLrIAJaz6bqdD1x62P5lCiAXby4ZREP15sXrss0qn0tQxQdhmpQ9M
	bsESr8yvd2X2pWj83Zl0w7pWdDAm6V1/Af6BJ3IJUsWQ1Ns2Z9NARwIJNY/8F+xYwFzt
	qk1Vz6TLvjquF9xwOEoM5cE4mgoRMEPSbGea3pm/kpp8Jy+6eVjCVlrQD8tp44gFfwG0
	TGtA==
X-Gm-Message-State: AKGB3mL77L935/J5YDbc/ikGWmVP4W3Tmw6/Gb6tZViDsOfH4whAOr3E
	851LAZtHj66QwvTzO24cnwBJGfNiF3F4fPt7Xsy4LA==
X-Google-Smtp-Source: ACJfBoslpYR5gv0QILafFh8XgUOwqiLosRKG7GMYl9JFaAx4ICV6CHIUVBE6vfK08oIeA6YnXMng7oM0K+fouSRpnJw=
X-Received: by 10.157.41.147 with SMTP id n19mr23155otb.132.1513606554480;
	Mon, 18 Dec 2017 06:15:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Mon, 18 Dec 2017 06:15:53 -0800 (PST)
In-Reply-To: <CAPb0b+OL92PGuv7qwxX9h9570cu=V7VPCNAgdNxwc09j1aWnwA@mail.gmail.com>
References: <CAPb0b+OL92PGuv7qwxX9h9570cu=V7VPCNAgdNxwc09j1aWnwA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 18 Dec 2017 15:15:53 +0100
Message-ID: <CAOT_U5ZeA2x_9q9fZU749jnf_8nHApnME+xib1fLdtxh582EVA@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: replace hciattach with a compiled binary
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
X-List-Received-Date: Mon, 18 Dec 2017 14:15:58 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
with the risk of being off topic,
the hciattach has been deprecated by btattach.
I'm successfully using it with bluez5.

On Mon, Dec 18, 2017 at 1:08 PM, Sherif Omran <sherifomran2000@gmail.com> wrote:
> hello guys,
>
> i am working with Bluetooth, and thus installed Bluez5.
> But the installed hciattach file has size of 108760 and does not work, where
> as the one from raspbian has size of 120636 and is working.
>
> is there a way to replace it?
>
> thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

