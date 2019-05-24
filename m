Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE4E8E00B5F; Thu, 23 May 2019 17:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D27FDE006D2
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 17:03:46 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id h17so3982024pgv.0
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 17:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=b0RX1RpuvwW+ZYRxHXUNTRxSkOY4Ebl0sf2GMal2HiI=;
	b=fuCcL34eDUavwfVQXP6c995+U6g2qMmmkXDT5ikA2LehHKDN29wR9iIPnK2iZEqML9
	nH01Q1OhZ7dNrFmfH+/EUp+mDW4sSzJDhweqYyYBmRnN+LBQ46jfpY54xVTgBBKtvS0K
	UJCBQhfoT0HfcEJVR1U/t2pGPnexHsgQnyHlbEY01dNza2+QBPpAGuw1MItmRDq1Gzoy
	GVijB9hj1/7nbj9j8bXRGU13rm8n8iqlxS9VvqaALlbr5mZjGjstTjU8JnT1gkdG42oA
	7KELgmUzJRl9pAi4xlKK15Dvxlkklu1HlnJDLxIZ3UmzP7YdJMV2PnBhmioweLDmEGdb
	5c8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=b0RX1RpuvwW+ZYRxHXUNTRxSkOY4Ebl0sf2GMal2HiI=;
	b=uIxFebzdAeCnQRS4rjpGgUzpMN2M8y9LpZfFl/q28g1w03O0uva03+KXgj42pryUDm
	K42b6AwwWzMvSicVcO7CmCNIEDcpPwRB8/q8m/DZLSgfK2f/GzodZwdePjm1pnHeQ8TO
	kIPithyPzhH72mytiqVsocTzyf8qGHH1VApL65UiUSHKNCXLbj1dTd/L1g1gLwc2YWxw
	nxoSpLXq0J6atLLI8MagxvGjgqaHVfGQB4vVMTiIDrcPn2BxU5IGXwFrHinnNFmbBtJn
	mMbKdiVNYce32whaFxKEfODkA40SYDre94qAPR82IhX2tSGckhspYUzbk4L53+F8NE3e
	s14Q==
X-Gm-Message-State: APjAAAVWoEnBBB8YmX+/qk+bs9glKQdpJgqrkNefntkVGuxRvhjcGKMH
	NnGawi7xmdGGqXYnuCSoXvJ1W36D2jE=
X-Google-Smtp-Source: APXvYqwj6Ym7tLeLDoGtwFpJX3raxWES4TzRPoRl7ZDy32LvTdKZxkbwbiYny2h6/wH774OIwZUDrA==
X-Received: by 2002:a62:6585:: with SMTP id
	z127mr68696532pfb.179.1558656225609; 
	Thu, 23 May 2019 17:03:45 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:7892:9931:70c0:491e])
	by smtp.gmail.com with ESMTPSA id
	u20sm564008pfm.145.2019.05.23.17.03.44
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 17:03:44 -0700 (PDT)
To: Jonas Andersson <jonaskgandersson@gmail.com>, yocto@yoctoproject.org
References: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8b5bbc55-0d92-37f5-924f-084aa2b6a8f8@gmail.com>
Date: Thu, 23 May 2019 17:03:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
Subject: Re: RPI WiFi not loading module
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
X-List-Received-Date: Fri, 24 May 2019 00:03:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 2:14 AM, Jonas Andersson wrote:
> Hi
> 
> I have problem to get my WiFi working on boot on Raspberry Pi 3.
> 
> The problem is that wlan0 interface not showing up, if I manually 
> run modprobe brcmfmac it works.
> 
> To try to "force" the load of brcmfmac i added it to 
> KERNEL_MODULE_AUTOLOAD and that generated an file 
> in /etc/modules-load.d/ -> brcmfmac.conf but it is still not loaded.
> 
> I use systemd an to my understanding systemd-modules-load.service is 
> handling module auto load, but that file is missing and I cant see how 
> to include it in my build.
> 
> Building thud version and I have added the following to my image recipe:
> 
> DISTRO_FEATURES_append = " wifi"
> 
> IMAGE_INSTALL_append = " iw wpa-supplicant packagegroup-base 
> module-init-tools"
> 
> IMAGE_INSTALL_append = "\
>      linux-firmware-rpidistro-bcm43430 \
>      linux-firmware-rpidistro-bcm43455 \
>      bluez-firmware-rpidistro-bcm43430a1-hcd \
>      bluez-firmware-rpidistro-bcm4345c0-hcd \
>   "
> Then i have symlinked wpa-supplicant service to load wpa-supplicant.conf 
> file and that work when I manually loads the module.
> 

I wonder if something like this will help you
https://github.com/YoeDistro/meta-yoe/tree/master/recipes-core/systemd

> Best regards
> Jonas
> 

