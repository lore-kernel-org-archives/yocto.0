Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6090AE01036; Tue,  6 Sep 2016 19:28:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0325E00E51
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 19:28:18 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id y2so6745332oie.0
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 19:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:from:date:to:cc:message-id;
	bh=8M+pPJR9q/3HO5vGNE6ZpStcIEa2LEqseJxDs3Wl1L8=;
	b=eUUjsgTMwAAKojc18SBFzcAs+CqLMIdSKO3J6UVyG47u1CKOPO4f17o6jeOWzQz0a+
	6ucMLTLJdErpfkMbOEioLC2AIpnZvR+VQmuOrhDeHXASmlIsHp++8qzB+pG3taDumHn6
	KNjuVjuM3iwHyJzAq59++dTii7Z+rPXAbXHU1h6880T3VFM7ODuLru3uUE0FEPhjJ3xq
	TbyQZp65rkVgUOV7lC2LLAF382nw3rAFtlxXtRwzzrEZTO+xfakjU638ItS9c66Mhp9e
	gZl8F7OXkjJAK8fPtHPNwnw1GebhxogE7sR2gMoaJPPMr73IfE2Sv3ds554WY8NSTg/2
	h/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:disposition-notification-to:return-receipt-to
	:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:from:date:to:cc:message-id;
	bh=8M+pPJR9q/3HO5vGNE6ZpStcIEa2LEqseJxDs3Wl1L8=;
	b=ZJ+rYaQy1G8jnjW8/TaTblAbVuFR7NEUD+QiDKxKe26KwEuhGGT4FRR+I9pHQePGK4
	qdJhUGht4u2AyF8y7Z8TpE76N0GxPBIl8JQnhaZ53ew0+zial6DlinvHVjfsoFJK3VMk
	1+fFw3Ze0jpwSq/GCM31WTbUYVxBtqLHCvVgMFVOSHeFwmxY+qJNllnjp8i9Tbw/KoQj
	3TbHIFmCoQIC0ckZ61vRw20vMWe8luBc33E0zbXO31EdudfEhjs5jlmzWNVdn/KNvoZ6
	u324HYSTalHLvQBLqUy/FvsXnlJuCFO+SOYWlAXqd/HQcv+hIpiqke4fDFw6zYOE/da7
	JuJw==
X-Gm-Message-State: AE9vXwPEgbqnPhM/tDXeUUPgGgnjeTfblWqDxld05OyAOCneDw4oILvFyZMSDyy0A04++Q==
X-Received: by 10.36.216.138 with SMTP id b132mr2892686itg.38.1473215297756;
	Tue, 06 Sep 2016 19:28:17 -0700 (PDT)
Received: from [192.168.0.11]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.250.193.223])
	by smtp.gmail.com with ESMTPSA id v7sm1376541ita.9.2016.09.06.19.28.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Sep 2016 19:28:17 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <SN2PR10MB00940D62C2AD81857308535ACFF80@SN2PR10MB0094.namprd10.prod.outlook.com>
References: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>,
	<CAPDOMVhBu=nEJZM1FSfiiS=e-BfmQy8tVKPb7MajUUfQQBps1w@mail.gmail.com>
	<SN2PR10MB00940D62C2AD81857308535ACFF80@SN2PR10MB0094.namprd10.prod.outlook.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Tue, 06 Sep 2016 22:28:14 -0400
To: Adolfo Sanchez <adolfo_sm_cr@hotmail.com>
Message-ID: <B740C381-8A9D-4584-BAA3-5896118753B9@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing build following Quick Start
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
X-List-Received-Date: Wed, 07 Sep 2016 02:28:19 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On September 6, 2016 10:22:35 PM EDT, Adolfo Sanchez <adolfo_sm_cr@hotmail.com> wrote:
>Hello Nick
>
>
>Thanks for your feedback.
>
>I tried installing the libtool as you suggested, also performed and
>apt-get upgrade just in case
>
>I am still getting the same error
>
>
>Best Regards,
>
>Adolfo
>
Adolfo, 
Try installing libxmu as that's 
for the library. 
Nick 
>________________________________
>De: xerofoify <xerofoify@gmail.com>
>Enviado: martes 6 de septiembre de 2016 09:47:59 a.m.
>Para: Adolfo Sanchez
>Cc: yocto@yoctoproject.org
>Asunto: Re: [yocto] Failing build following Quick Start
>
>On Tue, Sep 6, 2016 at 9:13 AM, Adolfo Sanchez
><adolfo_sm_cr@hotmail.com> wrote:
>> Hello
>>
>>
>>
>> I am new to Yocto and trying to learn the basics of the system
>>
>>
>> I am following the Yocto Quick Start guide:
>>
>>
>http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html
>>
>>
>> Details:
>>
>> 1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a
>> Windows10 host.
>>
>> 2) I downloaded the poky from the Yocto page instead of download it
>via git
>>
>> 3) I am tryting to build the basic core-image-sato for qemu
>>
>> 4) I am getting  the following error:
>>
>> ERROR: Task 1921
>>
>(virtual:native:/home/adolfo/Yocto-testin/poky-krogoth-15.0.1/meta/recipes-support/gmp/gmp_6.1.0.bb,
>> do_compile) failed with exit code '1'
>> 5) I test  the ${WORKDIR}/temp/run.do_compile I get the following
>error:
>> x86_64-linux-libtool:   error: 'abs.lo' is not a valid libtool object
>> Makefile:421: recipe for target 'libmpq.la' failed
>> make[2]: *** [libmpq.la] Error 1
>>
>>
>> Any help would be appreciated.
>>
>> Best regards,
>>
>> Adolfo Sanchez
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>Do you actually have libtool installed and the latest version for
>Lubuntu 16.04, if not try installing it using apt-get.
>See if that helps fix the issue if not report back with the error
>messages you are getting after installing libtool.
>Cheers,
>Nick


