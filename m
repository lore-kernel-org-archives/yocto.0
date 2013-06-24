Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D469E01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:59:58 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so9129296ves.0
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:59:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=4eMF2G6s7NUowjjfgS5xG0s0A4dS4xAI02UMTOVxX9U=;
	b=orZdz91Y1Zz3aDlm0TslBRWMubUCZ7aj2sO6lpi6OfO1GkL7JbKXBAEcyncL77w/Fd
	3uIblpnN2os8u8jGMiHvNRx8NXQbMJTgAMbg+jcft3H+enrU3LybvPxokmzg1akMEMXv
	7n1fqKakvRX/W9mKdhfdcX6mV862FA8+bkpBKZ/MV04xXmeJxz0oZ7+TV+P0h+dO+JLZ
	CjNezKeAIX2HByrgqui5ag61nAwQ+1F04b932bd6hMuMIlpS7GBiPf9iGHAG6SpLDsm1
	EUJ1va8cwRh8inRIO6Ezgqsnyn/bqjMsuiQrfeMfnll8isxwx9JprxfxbT94TbBge3VC
	wU8A==
X-Received: by 10.220.42.147 with SMTP id s19mr11767015vce.46.1372093198168;
	Mon, 24 Jun 2013 09:59:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 24 Jun 2013 09:59:38 -0700 (PDT)
In-Reply-To: <51C87A0C.1050003@balister.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jun 2013 17:59:38 +0100
Message-ID: <CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Gm-Message-State: ALoCoQnUEGAiDGoORshxCe4eCql1R+vt7ixsIIywgOEk7EckWD3NwrgPdUhZS673I5k4TfFFTQnU
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 16:59:59 -0000
Content-Type: text/plain; charset=UTF-8

On 24 June 2013 17:55, Philip Balister <philip@balister.org> wrote:
> Explaining how poky is built up from oe-core + meta-yocto +
> meta-yocto-bsp + some other stuff would be really helpful in reducing
> confusion over what all the pieces are and where they come from.

Agreed - explaining clearly that Poky is mostly an aggregation of
existing repositories and not actually canonical upstream for anything
is probably a good move, as this is clearly misunderstood by many
people.

Ross

