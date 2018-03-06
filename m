Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B105E00EDA; Tue,  6 Mar 2018 14:23:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00DCDE00833
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 14:23:41 -0800 (PST)
Received: by mail-wr0-f179.google.com with SMTP id p104so191381wrc.12
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 14:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PazGzVcrIVQZz50HCoHvYAhqEXD+MmK+cZ4GIrolo4g=;
	b=X+HFNq/RNTHBNMuT3DU1z96jPSJNZheTg1kSTmbv2tOoLDZmJUcQIP1OKWio+ZowcS
	zcWcmssu3BKx0sQrzpIVjC7Vk62KPIA3Q5xafexN8GBpfQr+4f5FFfnTAd2WmLE4tLxj
	pheQqP0VaUQWcJ5EK3DVrqia7/ACuzTHxq4o3THy47zSw//HVwsty2YLbfC+p0khYaat
	QEdGVyx+3RK/s3fuU6mMIB9X4649rYvFX/wQUwrckv7wecHrH7y7EG6A3janthQzWqp+
	uDIYiz2j7rxS/4nJgzebWxEuFvkoEdfLCqrVvpj46u/kG7lV36hqF6jj5nUAaVkhu9sZ
	o1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PazGzVcrIVQZz50HCoHvYAhqEXD+MmK+cZ4GIrolo4g=;
	b=Hh3xBjIsH9oQPFYGOP8x03cqu4+g8yDVf+wlamqK9XlU45pNZFnH2NkTRZizyyfn9o
	Eh4CGSjapeVQd3wB+elBzYKmReQ+7K9v+HMCWupqFTfTVzH3Xb1oqsTnc3/wk4kyveLz
	OM02tD3EWWpRMDH9Z45ptgcQ1sRynfEzKoPBh9uqUWno7JBoeet9+r7OBVdy4wknRBjN
	6xVdtNXsnEwlfNqqwwJy/D2qQLYexHmbJbPz5cJipDfeM6K+zpF5m8BiRyS9vEyQeCCm
	M6WHIUtdbi5JwbRb75dNNnPzER+Vf3bYtViyPWYbIaZhAlO8Ys7JS14SeUhsIAtMZdI0
	yAjw==
X-Gm-Message-State: APf1xPC01tZRPsr+IXF8HATFYU9zXS/BnzyY6Pkkzx973tuNQ7CjoXTB
	IgDx3C08CKZlXpBzfC08wJZMSguNq4wO9t5Ktoo=
X-Google-Smtp-Source: AG47ELsTuGmWqYG01XLCOpFyZ9uVXH8RHN2XQPDSoPypMC5KgyhwE9RIx3R9c8FQUQQh5vL+jRO9gte+gfD9VtgQZ6k=
X-Received: by 10.223.144.2 with SMTP id h2mr16575427wrh.114.1520375021048;
	Tue, 06 Mar 2018 14:23:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.193 with HTTP; Tue, 6 Mar 2018 14:23:40 -0800 (PST)
In-Reply-To: <CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
	<CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
	<CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 6 Mar 2018 14:23:40 -0800
Message-ID: <CAJ86T=UbFg+d0v0hr11+_LZJbomzLTPAVUc-rV4KhN7m9BRXHg@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 22:23:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 6, 2018 at 2:12 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi Andre,
>
> I tried without
>
> FILES_${PN}_append = "${includedir}/open62541.h"
>
> and got a QA error about a file installed that was not added to a
> package.... I don't understand the ${PN}-dev here, and I'm not sure how
> packaging works in this context - since it's not clear to me which files get
> installed and which don't... except for when a recipe that depends on this
> breaks because it can't find the header file.

So you seem to have got yourself into a situation where the normal
rules don't apply. Good luck!

