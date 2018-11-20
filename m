Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FE55E00C87; Tue, 20 Nov 2018 15:21:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D5C7E009AA
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 15:21:37 -0800 (PST)
Received: by mail-pl1-f194.google.com with SMTP id f12-v6so2545917plo.1
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 15:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=VAlMBi1y8kFf+D2UGbFWiIx0AFd1J4VsNYNi9g9+Pi0=;
	b=LKJn5ZLJ0zZpu76eHfUEej3S5wFL49zcbGZm09fy4DqJcThGvflQZEzYrl7aV59zZ7
	d0/7vg8kCgIHq8/uY8GfS74sW3YemHhqjKrEPdc0kH8arEw+2LGD+nL7QwbbQOO263w5
	I37aUmeg7+iSvz0elVQ7Isd2lJHpX/bzT5iThERIyCqkREVOCr48PobXQn63fx07aNzI
	UHXY7u7muKYeOZOiXHotErH9OSZdZMBjfDDATO2g98TNKQ3SjbiuMM7g3Xuat+MJG2EB
	HKX8//6z7paxDQ4CHlGcaSkFH2z5hK025OZ06cwtnmXu25voZMGVslftuoLzZaecmkB4
	Zd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=VAlMBi1y8kFf+D2UGbFWiIx0AFd1J4VsNYNi9g9+Pi0=;
	b=hgQ9Dl9qyB5fOfHYYq0ypSrFx3+eZiV6mAbENZMJcuISEqaW24jOnY9oFxLjD/MjOE
	Z+HwOfLItNsrN8CHvWTmSd5F/VVBHuT6h0b3ePGouwSrLgqSt401cnLa8NueHgsU5kFb
	Gk56hZVmVNeKpxGjhKXt//F5Qx9eUUUbSmOWWtXf5v1ldiuZmaI3vkFYCNNrC73xvgej
	3kHJhnTUARruZGv4llV8YJba272GiVLeqw6XKKic8lDK0WupwzBNcUy1TyVlSq1e+EOk
	XlgnS43AkW6QyfOIjrGl+DrVsVKlBDeNF7WrjzGt7iU4oCG2vtq1507477ZEVeI2gc4c
	0vMw==
X-Gm-Message-State: AA+aEWZqPOWLFTQADgvY2Ljrd4cVqweJpLCJ/9glR9IZaoSi0jphriLb
	+un6eC0l9MB6a3DPDj94Oy8Ap8Td
X-Google-Smtp-Source: AFSGD/Uj+sbNtWdC/sBSrgNLQEcC+rI/KxsWYC+cxoOhDlcfdq85Slq0B8K9Zq8zBOhx040iLC7zjg==
X-Received: by 2002:a17:902:4401:: with SMTP id
	k1mr4307504pld.307.1542756096309; 
	Tue, 20 Nov 2018 15:21:36 -0800 (PST)
Received: from [192.168.0.33] (97-121-174-158.clsp.qwest.net. [97.121.174.158])
	by smtp.gmail.com with ESMTPSA id
	y26-v6sm2958697pfi.123.2018.11.20.15.21.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Nov 2018 15:21:35 -0800 (PST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
	<1542539495.3707.2.camel@gmail.com>
	<41694628.BEkiBNE3Gc@localhost.localdomain>
	<9139d99908dae9aa03be1ae5cf07720206c9755c.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <6e014304-0816-d141-2e9e-4e5ca168eba6@gmail.com>
Date: Tue, 20 Nov 2018 16:21:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <9139d99908dae9aa03be1ae5cf07720206c9755c.camel@linuxfoundation.org>
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Tue, 20 Nov 2018 23:21:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 11/20/18 4:05 PM, Richard Purdie wrote:
> On Mon, 2018-11-19 at 09:47 +1300, Paul Eggleton wrote:
>> On Monday, 19 November 2018 12:11:35 AM NZDT Max Krummenacher wrote:
>>> Am Samstag, den 17.11.2018, 15:50 -0800 schrieb akuster808:
>>>> Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and
>>>> meta-cgl
>>>> please add a "Thud" branch
>>>>
>>> While at it, the following patches declaring thud compatibility are
>>> not
>>> yet applied:
>>>
> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042780.html=

> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042922.html=

> https://lists.yoctoproject.org/pipermail/yocto/2018-October/042923.html=

>> I have just taken care of meta-qt3 and meta-qt4, FWIW.
> Given we don't test those any more, should we be pushing these new
> branches?
Are the branching schemes in sync with what we test , build or both?=C2=A0=
 I
think we should be clear what is built or built and tested if there are
exception.


The 2.6 release notes called out so it may lead to the conclusion its
tested.

Release Name: meta-qt3-thud-20.0.0
Branch: thud
Tag: thud-20.0.0
Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
md5: 7b73bf1132428ea898938b03815cad21

- armin
>
> Cheers,
>
> Richard
>



