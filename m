Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BADDE00D1E; Mon, 22 Apr 2019 08:05:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0052BE00CEA
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 08:05:42 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id y204so18238459itf.3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 08:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ihYvus47Ul61VTSoR2xELCPcHpQdK+MSRJWxOyQM4UA=;
	b=OVu1rxABwxqOJaw5y42elgvdrnRLBcu2hDhjb7s9GqWgy1R0jvpVZ6OYjIIsy6ould
	GiB0zuaLJfOPlcOsecLmHUr7niQ70BL7AbxiJzeQvSWNTzBWY8NyPxZqEdNg0/3CpPD/
	0LT+3Oe2bjNLVGni/Hc9m3VKRq2FvVHuKkr0OJstehltkUowWojclire+FveDNISUBMa
	uOQ4R++6Hrq/HkWmpdv6F94yEPZ+rQGcP5mWjkxnseuLAGqUXghcgFHAnrfRiMR3T7EV
	+rduEItYdrNdodjJSdaqSYCAC2Z3wR+Qds90CSepahssVJ6PT6enyO37qzkvTe1ahtZk
	3RoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ihYvus47Ul61VTSoR2xELCPcHpQdK+MSRJWxOyQM4UA=;
	b=P4AhumtJWXTI6SokQv+hJk6fnRoNtb2bSYUF+Q7ygwHqsOzJn1NwwflXcY6EA8t5A1
	fn99XqJ+yKGTB9zcmIRHrald2JykD1AWemxNz+kkGreqbte98IgL35tLZsE4d9ULXSJ/
	GM5dY3cieAt7rsQxZB/52cSb7zvrZ6rnMR9VmtJoZs8Rc1VaGpCFKFhAyGFL/R+GdA72
	9wzZCrHth5nihPzI62QSSfeFLa8tLRzfr30G1KGi3o0b8ZW84WdRBqysSikBy4X50SFc
	eiySiCdUt3IV8h708y76ePOaUnJY7KdTBoNlnrTrEUE+ZTWo+MfNTNvZAJX9KnvtyrEc
	nCrQ==
X-Gm-Message-State: APjAAAXJeBk0W/n0RdaeEoGGeYZvpi73UpOU5kMq8SHIAiXUeXqjZEN0
	1RCZhOIHbP/rhEWwKpvYMr0=
X-Google-Smtp-Source: APXvYqy6lzzeUblRYBrwhsMGrWEAYEX5FBpuP8fosdGG9FvHZl6rWIOzfw1PdbxKKvW+9G533w+AoQ==
X-Received: by 2002:a02:741c:: with SMTP id o28mr933148jac.144.1555945542252; 
	Mon, 22 Apr 2019 08:05:42 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	r21sm6188702itb.35.2019.04.22.08.05.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Apr 2019 08:05:41 -0700 (PDT)
Date: Mon, 22 Apr 2019 11:05:38 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190422150538.GA20206@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, romain.perier@gmail.com
Subject: Re: [meta-rockchip] [PATCH 0/5] add new SoCs support
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
X-List-Received-Date: Mon, 22 Apr 2019 15:05:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Randy,

On Sun 2019-04-21 @ 11:53:34 PM, Randy 'ayaka' Li wrote:
> After the FOSDEM, my patches for ARMv8 cortex tuning
> are finally merged. So I think it is complete the
> lose piece at meta-rockchip.
> 
> Since the big-litte is not supported by OE now,
> I make all the chips' configure to use the big core
> tuning.

Thank you very much for your patches; I'm happy to see rk3399 support! I've
queued them up for https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/

