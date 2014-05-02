Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2FF8E0096C; Fri,  2 May 2014 06:25:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF8EE00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:25:53 -0700 (PDT)
Received: by mail-yh0-f44.google.com with SMTP id z6so4128138yhz.31
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 06:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=kp2hfg9fh/qZAVklHZ/7CBL1RhwIh4xmSwXcH/7r2+A=;
	b=WKWK3L6k9JecxHsDQm83hq0yopXnbIt70c6utWoEsZj7plJu0AgfgQkGdFdWbKVeqG
	mHqsa+S89+fZpZdMtfMG8SAv2tP0BQ84PRkPK58sMeyiJlyxvPwW+MH/ixcuGWkzkOWm
	G0U4OZQHkUAwBbUdjlXamc7+qCqe9pvT6UY/kvA0TcmNKsJl3QwlIGC7wXyVJ6HpdSWI
	mvFdAFuNPlsZNcYk6KtQuy1sfcJZZ5Hs5NXFzAhqmTQWi8I/yI7bjYW3GQBQtrCsdetz
	LojTHryT0rPlyzkTBDYnN3lH4ks440It6RC3+b7lEw9BoE2gYHEKy0ghL7rLOmg6xN28
	3X6w==
MIME-Version: 1.0
X-Received: by 10.236.43.98 with SMTP id k62mr23084172yhb.33.1399037152036;
	Fri, 02 May 2014 06:25:52 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 2 May 2014 06:25:51 -0700 (PDT)
In-Reply-To: <CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
	<5363973A.6020106@dynamicdevices.co.uk>
	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>
	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
Date: Fri, 2 May 2014 10:25:51 -0300
X-Google-Sender-Auth: jVlxTNwOUZdeEWyGNqEp40uAlEI
Message-ID: <CAP9ODKpg3+SyhU9+KPqPgUyKSGb1pU2_601cK8eq1-b-KG_Hcg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 13:25:56 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 10:23 AM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> On Fri, May 2, 2014 at 10:11 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> Or indeed, would be not be reasonable to modify the uboot-config.bbclass
>> such that
>> it tested for and discarded empty strings in UBOOT_MACHINE / UBOOT_CONFIG
>> which would seem to be a more complete test and would eliminate the
>> problem ?
>
> Like: http://privatepaste.com/8046479967

Fixed: http://privatepaste.com/3ffec754d4

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

