Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A7DE00E3B; Fri, 26 Feb 2016 11:54:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434EAE00DAF
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:53:53 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id a4so870177wme.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+dVtr9uuZu2ro02zKYWv6pWwQ1KIzqUAE52j/0x3TDc=;
	b=w8cgj/WpAx0DV8Swc9IVHVE/i9PpkkSB+FbL78c3gDemdHKSsAeOsGAcD9216l05fm
	0v1YC/aXBvsLU02gq8H3F0KR3AwyPr1RAfE7THE4AaWmYHOuEtpQo4kvsPtVVSrFMoyN
	3A3tr1VxvZAPxAuXNpufZha39QoUHjuL2kw2GoyTUbBAPE93IJs37dKy5GpRQmHMpWIj
	OO5WGT1Ru5UkBaycKeh4NQ1dngUBa8+ODsgMjqnbNreQE3KWxHXk62y6Rop8DwCvSDgT
	cuOWHcJdcxGDZdvMkAD1Hwdk3MX2JVxvFZlsMibqgBOTVOux8XIbbuST8tPWar4UXJkU
	t87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+dVtr9uuZu2ro02zKYWv6pWwQ1KIzqUAE52j/0x3TDc=;
	b=TNbc40O7GZw6P82vnzcK48EqMaJf1zzUl8x3/nh3pJtm3ujBBpRBTnfJIOBAv2pGzc
	cQAFpD5NRz0TtdPGExE3LtjleIIC41TsAMORpnFweiOHmDHSxjklthzMbd68pFFeQ4ob
	BwM5Ejs/odTjBhTrWCvcv8GaxDeKPWgIvRXMA1dwn1hzrgkg8ix4PsE+8qC0Nv+TGrAT
	lYGwuGmrEneK/b1r6jcu06sT29mgERMPWI/lw4nDuMjYhVEHvZwnKbDuk+IRcQHuZiuH
	TxzsLqIl5mluBQFnKctAcP2PJRQ/RIzRTRn4uVyz8+h/RjFsVwsYjejd2RQDZ9LSRixY
	TxCg==
X-Gm-Message-State: AD7BkJIG1VOj9+AXldbhnV7V34pSUOsFZwbKmpyoTCxrd1FnHbtK9Gtz4PgVCB8xA1T/TQ==
X-Received: by 10.194.103.5 with SMTP id fs5mr3432694wjb.42.1456516432586;
	Fri, 26 Feb 2016 11:53:52 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	jo6sm13759275wjb.48.2016.02.26.11.53.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 11:53:51 -0800 (PST)
Date: Fri, 26 Feb 2016 20:53:45 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Message-ID: <20160226195345.GA27062@resin.home>
References: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
MIME-Version: 1.0
In-Reply-To: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org, Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 0/3] libexecdir fixes
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
X-List-Received-Date: Fri, 26 Feb 2016 19:54:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 02, 2016 at 03:31:44PM +0100, Maciej Borzecki wrote:
> A couple of fixes that resolve issues with recent change of libexecdir
> in OE-core.
>
> The first patch cleans up the recipe to install rpi-mkimage tools into
> ${libexecdir}/rpi-mkimage. This preserves the original nesting of
> rpi-mkimage under ${libdir}.
>
> The 2nd and 3rd patch use ${STAGING_LIBEXECDIR_NATIVE} rather than a mix
> of ${STAGING_DIR_NATIVE}${libexecdir} to keep things clean.
>
> Maciej Borzecki (3):
>   rpi-mkimage: install tools under {libexecdir}/rpi-mkimage
>   u-boot-rpi: use STAGING_LIBEXECDIR_NATIVE for rpi-mkimage tools
>   linux-raspberrypi: use STAGING_LIBEXECDIR_NATIVE for rpi-mkimage tools
>
>  recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
>  recipes-bsp/u-boot/u-boot-rpi_git.bb       | 2 +-
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> --
> 2.5.0
>

Hi,

Merged the patch set to master. Thank you.

--
Andrei Gherzan

