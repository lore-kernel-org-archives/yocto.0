Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B91DDE00852; Fri, 12 May 2017 12:34:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD50AE00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:34:36 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id 142so81009730wma.1
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:cc:date:message-id:in-reply-to:references:reply-to
	:user-agent:mime-version:content-transfer-encoding;
	bh=Tc1vObAaLifPXZIoctah1IoQoyQW8apthfggnxkkCCM=;
	b=HYiduXCIVtMzErvyHUQY7E+ymth+vmj113dMDhY1wbiaknZUMhSDBkT/u86tWaMyun
	UQnDXjeaJQHnHoK5k7KZH4WTu9MeNEcM9RHVqG+3ka/Y5gKiG7vOOoKM3EtOsVjorQzW
	bqwPUHki/pTliQ8qtOTEwTavurFEnr/sfwffvUI8GrKoHHwKwihnJfolE874dSRNDy8G
	OVSoM6BpU4V/iAmJvOmeIWZfPBDJhsKqZmuHWMiQEjKs7pWx5Cl3se1K6xTminGVQ/1J
	crwtKw6HTvYhOOHvX68jsk9LTGQCUT2nyBNKB9IS+Wqt9B4MF4bLl8HR/kAFYo8AxfbI
	UE3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:cc:date:message-id:in-reply-to
	:references:reply-to:user-agent:mime-version
	:content-transfer-encoding;
	bh=Tc1vObAaLifPXZIoctah1IoQoyQW8apthfggnxkkCCM=;
	b=lCcsYJgBbm8RhW4NqDVNLH+IxW1jqeCWUjbqXAV20DOldaBUdG2dFcg7Ka8tNEaPQ1
	GA8M7JNSY5sbHy/BdCcr9dTn8+noVBuJ9dOM9hbek6jpXstW47p+NEwxYOLhp0FzGows
	DrYKKoSfbFzY5MGExzw2GHHm47ph/rB9bVHYHx/ZSdbX215UfX4eWBodrAgxwGjImLEm
	h/k91T9oPk2RvKTitQOjWRG1gH6zctcec0Ui+FQKn1ACmeWAmqI584rjfMR9qdSATQX7
	dXLhiMgbFPXvAZKuelvdqlMEqx7OGoqp9POytksHQxV3xPs/brda91xhhEYU+hGfLA+e
	n1Dw==
X-Gm-Message-State: AODbwcASxFe5UDtR4bsaGhFjyyDAWF8N6qt8cSjvY0UKwq2ZkyW8Yf2t
	NcEoYlVxjuYu/Q==
X-Received: by 10.28.65.213 with SMTP id o204mr3726870wma.43.1494617675349;
	Fri, 12 May 2017 12:34:35 -0700 (PDT)
Received: from [192.168.15.102] ([141.170.140.31])
	by smtp.gmail.com with ESMTPSA id l7sm4926223wrc.52.2017.05.12.12.34.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 12 May 2017 12:34:34 -0700 (PDT)
From: "peter@gmail.com" <balazovic.peter@gmail.com>
To: "Trevor Woerner" <twoerner@gmail.com>
Date: Fri, 12 May 2017 19:34:31 +0000
Message-Id: <em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
In-Reply-To: <CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
	<CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
User-Agent: eM_Client/7.0.30068.0
Mime-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "peter@gmail.com" <balazovic.peter@gmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 May 2017 19:34:38 -0000
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I build on i.mx (NXP) machine, I want to get configured as dhcp  (no=20
static)...

------ Original Message ------
From: "Trevor Woerner" <twoerner@gmail.com>
To: "Peter Balazovic" <balazovic.peter@gmail.com>
Cc: "Yocto list discussion" <yocto@yoctoproject.org>
Sent: 5/12/2017 9:32:17 PM
Subject: Re: [yocto] dhcp eth0 network

>Hi Peter,
>
>For what MACHINE are you building? What's your target hardware? Can
>you summarize the steps you took to build your image?
>
>What do you want eth0 to do? dhcp or static ip?
>
>Best regards,
>     Trevor
>
>
>On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
><balazovic.peter@gmail.com> wrote:
>>  Dears,
>>
>>  I got Yocto image and unfortunatelly network is not somehow enabled &
>>  proprely configured. After "ifconfig" no eth0 configured.
>>
>>
>>>  ifconfig
>>  lo    Link encap:Local Loopback
>>         inet addr:127.0.0.1 Mask:255.0.0.0
>>   ....
>>
>>
>>
>>>  /etc/network
>>>  ls
>>  if-down.d if-post-down.d if-pre-up.d  if-up.d
>>
>>
>>  How should I setup "eth0" to get network working properly?
>>
>>  Thanks.
>>
>>
>>
>>  --
>>  _______________________________________________
>>  yocto mailing list
>>  yocto@yoctoproject.org
>>  https://lists.yoctoproject.org/listinfo/yocto
>>


