Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70749E00997; Tue,  5 May 2015 03:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF079E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:39:44 -0700 (PDT)
Received: by oiko83 with SMTP id o83so140621711oik.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:39:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=zvwMZAkK22Ry1dhVmqOodxMKCW2uusGwgAbiDs/drgY=;
	b=Tv1tz1I9dVm+sVPh7lsX9MUobFQhXPOzYfyRxNPNgyJ67RrhMsJhWikatUF5yzMGzX
	3qXLgYXJ98tDoQ3y8MnLjU4GsrD9F8ujXSNlp4vl3NkP1yYnXPRnnvvdZTYt+44NkMMx
	aCfM7j8PIFXaNcdDoH0cvUSXHq+DPheneziFAj147J66W8r4glThTevhgbh4EtYMTi7B
	m1O2YgxCYej8giyOMptOKo6R+dQyKVsLUFFXfF+Bt+uvbXN4fUEYAjKtICz7FDLbKKT+
	uSzQip9k6/tx9fM/bRw762aKyBIE4Q2fjcyS5cTbijEMpOYB3JxrQPeJG3VIzEqUIRw1
	DeZg==
X-Gm-Message-State: ALoCoQlDUuOquzrHLK0U15kvJ7OU8dSyhTpWlmG/V69IYzR94tVABodWZAezRATQj9HR0PE6P7qT
MIME-Version: 1.0
X-Received: by 10.50.132.33 with SMTP id or1mr1074895igb.31.1430822378609;
	Tue, 05 May 2015 03:39:38 -0700 (PDT)
Received: by 10.36.57.134 with HTTP; Tue, 5 May 2015 03:39:38 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FAF43@IR-CENTRAL.corp.innerrange.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
	<CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FAF3B@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FAF43@IR-CENTRAL.corp.innerrange.com>
Date: Tue, 5 May 2015 12:39:38 +0200
Message-ID: <CAFicg87=as8i_=kqOgwWkkd4cAwWKaQNBua1Rg_hGDYEd-VaYg@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Tue, 05 May 2015 10:39:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 5, 2015 at 6:55 AM, Craig McQueen
<craig.mcqueen@innerrange.com> wrote:
> I=E2=80=99m working on this for a BeagleBone Black type system, which use=
s eMMC
<snip>

Just sharing some information that I found interesting:

One such approach for firmware upgrade is implemented in this meta layer:
https://github.com/sbabic/meta-swupdate
https://github.com/sbabic/swupdate

Also this:
http://events.linuxfoundation.org/sites/events/files/slides/SoftwareUpdateF=
orEmbedded.pdf

Hope this helps,
Maxin

