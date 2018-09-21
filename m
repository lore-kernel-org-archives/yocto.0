Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D626BE00ABE; Fri, 21 Sep 2018 13:28:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562E7E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 13:28:27 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id o13-v6so14256037otl.4
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 13:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1ETzWkrcwGUtqjsd1YP42sc0TOixNsXAvkG1hjZYKXo=;
	b=VSjpYLy03dbRNt9lW3Se0xDun936j5jQi21sIsVpu9ZL//e8vAXomywtZk/ZEZ9Z6J
	Ggu0YQPgNbhH43lZhkFFOJbxlXfTvONq6A1sPnAJ2htjuskFMQ4mklnY2zL0SOgcS6ap
	SfMts4o4dI28MMKok8e5rwAoM0jQn1BP1srnFxwIrCjI7HCiWhE9gM+TwYOEpq9p0c49
	mS+mTNx4Bodqq+eMambjIOrzc6n9l2wC8f2tf/JOSuT0veDOAxvXanKk4nfSQShMAL2+
	XLN6DLZh22bjZ1wpRsghhmLmK02VXlJCLZ0qhAwO0ZW3Jl/gCmiXvcH5OTVnf74ADe9k
	VkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1ETzWkrcwGUtqjsd1YP42sc0TOixNsXAvkG1hjZYKXo=;
	b=PIPIgMaADNNmNeFDryO3kAdi3pyyB5rwCgPIFrcq/iILmsVSZzJkUowa5Zo1V4V5sY
	SpMIRkFKoOkTJ4qju6J1tgDOaj3gVYR3+nU0uebeylmNld3QbAw4QdlZmcP0Ej8VO1fT
	PwNok5lQiyOhqvOUPY+uJ+TbQTcpsK3aiHuA4BrxXMxLL/9rNEOx5wS2FI1mqkm8cxUX
	SZpWN6WvIXGj/k/7NVSsloXBZ8lLZfQ/r5B+ZL1f7zI7SXglF+MA5bYl7cWZyfVgiMLf
	4GoQl9XNKPy8AOnCFQd6KAz+IWw56cG+roU9utbM0Iic7RFfxaAhxaz64/69+ouXMDgE
	U62Q==
X-Gm-Message-State: APzg51Bt2MIqLGu5VWDIXPVUbOmUU4I0of03gcPuNZdp6YmmPVIF3j+t
	TdRjn3nKxm+c+j3ktgEP0Hi3e2cYqxPG0xWxIAs=
X-Google-Smtp-Source: ANB0VdaC472ql9ZRo8yISZk/GEvoMq4MkEn9hkCfy6YmEb2ERt9+Sm2tSGqqOIXTIvayy4MUUhAlJSfgg4XTQ1x6fEY=
X-Received: by 2002:a9d:450c:: with SMTP id
	w12-v6mr25419190ote.283.1537561706824; 
	Fri, 21 Sep 2018 13:28:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP; Fri, 21 Sep 2018 13:28:26
	-0700 (PDT)
In-Reply-To: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Sep 2018 22:28:26 +0200
Message-ID: <CANNYZj_86CCUv0AyzCdom8Mz4hOO0yq-Upr8U6-Bk2YSKMxncA@mail.gmail.com>
To: Sinan Kaya <okaya@kernel.org>
Cc: Sasha Levin <Alexander.Levin@microsoft.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [RFC] CVEs on sumo branch
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
X-List-Received-Date: Fri, 21 Sep 2018 20:28:27 -0000
Content-Type: text/plain; charset="UTF-8"

2018-09-21 21:43 GMT+02:00 Sinan Kaya <okaya@kernel.org>:
> 2. Apply the attached patches to sumo branch.
>
> We'd like to hear the community opinion.

For stable branches the yocto project tends to be on the conservative
side. Which means option 2: backport the cve fixes.

For the master branch, version upgrades are preferable, unless a
pre-release freeze is in effect.

Alex

