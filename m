Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 457E1E00B77; Mon, 12 Nov 2018 09:08:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24DB8E00AD1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 09:08:35 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id f6so3720584iob.1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 09:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=94hv63C9Opt+ErIvJDyvHe6Fognm45C3u2wJBzjoL58=;
	b=KDdxrEi2arwj4bOEs3+7g6/Np/b+HCxswCQOGcu/JqzCDlz0im3egAACydOydxBaIn
	Kg71PmkjFh7kq1Q7tIieq8dFyhHf/B9/8DIRdGOiD6K9TBEMuLUi3qUjCeqHC75K0+L3
	Iz82q3nnlyHJFeS7VwO3n8PUiSSEJT52JmIPgUmDT6yKm6Iwdsuk+MCkAEqBtnxUR8up
	qjK5CTC373hdic4rLFKf5GYAq8TWoxvGW9tV2jRM8lUyVxGc17MSNnFicg39dEth7nJY
	Bs9w/UfdB9dGF8vThdVEPuaZsPl64dWxoJYG9R8+baTDCAkf/N5Qg6AHXE5wKCjoNd/U
	kgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=94hv63C9Opt+ErIvJDyvHe6Fognm45C3u2wJBzjoL58=;
	b=qbvBCPhJUSjpMEaofdZLY1cJLvV3ovTkA5ofW/iymSbbnv1+Z+x6gnpNLqHY1evXAo
	wgsUqTD8qmi504LS67MM4tx2MU6X3FY1ZdLFt8tVZWusHYLlQ8YESwk3LgOLFKHdn6yQ
	DzRjVNi65Ah8Ix93OVSeWy+yVsnaK57j5kdC3gVwW/FPYyiB+xtg68bKKD5mP0ohzVyB
	ncWKnJx1Ps1NK7z9NPb19zfzkovvgVAXGWJAhOKleZroYCy8U6Qnew7Gi/qinBavgExv
	bKItCZ90HaM1V2Th7QrPd2V5oNN/MaFcTD6jYHdmglBZVi7UwO+17DNX+Q2xOq01Y47M
	vyyA==
X-Gm-Message-State: AGRZ1gLpCvYPqEln987gr/6+RZaqDDzM/Dj2KtnsPq3lKY6CAjgkYHro
	nQDdU81ce5TGRJqnZhwmv99fHlPeSymix3u53KNdRw==
X-Google-Smtp-Source: AJdET5d0tNzYRcKaA70WCDU0TFIbzSNkiiSce2R/ybMqOHBWwzwHe7EUC1OwZKkGUa1Q2vxnWJmOQHIq+6SkQyDE4Wo=
X-Received: by 2002:a6b:b844:: with SMTP id i65mr1328438iof.20.1542042515565; 
	Mon, 12 Nov 2018 09:08:35 -0800 (PST)
MIME-Version: 1.0
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
	<CAJTo0LarEQDPjpkg5wQv0yTnY2zaQexb5cWRf1XQqBy0Dj-Pqg@mail.gmail.com>
	<b9df6e69-f352-d391-673e-b83d653b8e21@gmail.com>
In-Reply-To: <b9df6e69-f352-d391-673e-b83d653b8e21@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Nov 2018 17:08:24 +0000
Message-ID: <CAJTo0La-yquYC_YdWpR92NgSAORU_gk=x97_f_szav=LJYdakQ@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Mon, 12 Nov 2018 17:08:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 12 Nov 2018 at 16:20, akuster808 <akuster808@gmail.com> wrote:
> Maybe shoot for before the Dec Holidays instead of a fixed period after
> 2.6 releases, a nice way to end the year : )

*Before* the holidays, I don't plan on taking a laptop with me and RP
works enough outside of Mon/Fri 9-5 as it is! :)

Ross

