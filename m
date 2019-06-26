Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F28AE00D59; Wed, 26 Jun 2019 03:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC2E1E00951
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 03:03:40 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id w20so2501843edd.2
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 03:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=Pu2hKpLO6IPYtVEUUgfmApzez6uL9HqAZyd90SquCUQ=;
	b=IxgdjsH2Vd4gRmeF2HQhMAk2GX25AVgZ8fCsvXFSbKuJo1vFMCu5mKzBPqWTPt7Vz5
	bl2xeM5G/uNBgvIaHtlbwd9Lpmwclo8jx2jC8TUxXgI8MKYZrwZlLWJLXbN/pdFpeAe9
	436rAQ4tlvF5+kEmMsaFQKOzUBooMH/3U07otT45rWrFsSluGGsCj+W3rDAx4eNk5qjm
	lyoXoISleLbQlInj14CcT+l/Hx0vx5oABnnqIWQ1gnB0Puuk1NUyxusN0zf2SBtN76ad
	YMPFLNuperW7XXWqzpL8dk9jRx9y5qib/MlicPok5HzQLgL2rutRmOjmBqnAy5TvDqUt
	nDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=Pu2hKpLO6IPYtVEUUgfmApzez6uL9HqAZyd90SquCUQ=;
	b=hIHPNd1hl2EqK06gt44CQHZBVqpaNqPSMDBHSvGOmkhZIPcqllYdZCOaoh+k5zHfqG
	vjmfbmPQdRQB4dJKZMu8fiUUoU2lOxmxZTTtsGEN3VGreuZusJl2cp6UC09XWRxN3+ZR
	Ih/Gt1/vbjyn7RMCAZUzzXuRH/IVVq8ua+FbgN7xJ4D1jvNEGrClZWuPfQVqjZAHVTk5
	OQpkBv6JWVvAT3GMqgkYqFNcKl5DpFtlp6CnwM7AEMflsYprnTK3xGRCNphmaUVq9nl/
	KhMh4ejt1Xob2a2/mOzPdR1kkBf0/sodRJrhfHqjCG+82bqRnPZ1d9RUg8g2ayxlJEkm
	7zng==
X-Gm-Message-State: APjAAAW2ibXAb8AGcnojU/g/1IrHkAfeQO/NZzuQBfuk4Ti/oS2TZ+Lc
	aaCcaCwDcBEtYsBRJEJNHCaPyrOC0lE=
X-Google-Smtp-Source: APXvYqwDY2zJZjXXVDo0TUZd/TAMVF7aaN3ilNbOWyHb9Wozj6jTUO2mmQE41m6I1PofF+OfJtGf3Q==
X-Received: by 2002:a50:94b1:: with SMTP id s46mr4133249eda.188.1561543419578; 
	Wed, 26 Jun 2019 03:03:39 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	d44sm5574296eda.75.2019.06.26.03.03.36 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 26 Jun 2019 03:03:38 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Wed, 26 Jun 2019 12:03:34 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto@yoctoproject.org
Message-ID: <20190626100334.GA9460@archworkstation>
Mail-Followup-To: yocto@yoctoproject.org
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
	<20190624070810.GD1584@archworkstation>
	<43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
	<CAAx3WaA+OemjNchvCFd_3m3K5LE4OedqFVtwdPAjYNwUSWv28Q@mail.gmail.com>
	<CAOmL4Ujwqu1pVe5zEGntJjYTNgw7__LPi_mdgn7-xU93dwF62A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOmL4Ujwqu1pVe5zEGntJjYTNgw7__LPi_mdgn7-xU93dwF62A@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Wed, 26 Jun 2019 10:03:42 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Jun 25, 2019 at 09:25:13AM -0400, Larry Brown wrote:
>>> I wonder, if there are best practices, how to protect the data from getting 
>>> corrupted (intentionally by an attacker or by accident through ... flash 
>>> corruption or whatever).

Ideally your hardware should have some sort of hw-based secure key storage, and 
use that to support some sort of secure boot scheme. You can then implement a 
chain of trust, allowing you to securely verify a hash signature of the data 
during bootup, to ensure that it hadn't been tampered with or gotten corrupted.

Atmel / Microchip, for example, offers a range of Crypto Authentication ICs that 
could be added to your hardware to support this, if you hardware didn't have 
built in support for something like this. Their offering also included tools to 
securely inject the data into the secure ICs during manufacturing, or 
alternatively, you could write your own tool to interface with their API.

		- Morné

