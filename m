Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A83E006C2
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 17:05:34 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id dr13so4410104wgb.2
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 17:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=sGogdKbaWXH16vkvkLWPbFm8fM3Yf5LkLpqFRh2coW4=;
	b=TtQ/wxzC9hWjLFqP0A8T/OgGtNdVBEWNNOaGeDKlJwgJR2YA1Yqi2MeOZ1/WB0+5xK
	WIQ1Nca8zWfqumX/mEUY5youxBR06YorKtMEc3h5YnUCIigm6MuIQLqdw/ttAzR8b+jf
	pCcmOAHO46ggaJw+Yk6ag5UZv+IsAqEsJ1MAarqiHJxgRM7Ez62WkPF/8J969Foqq54e
	sKyXRCkFETwiX36+B+e5N6UbtNSN6NrIkhP4NZ/n3/1RmrVP78a6gsWMxbnop5BF7/oE
	m+6thEocG75gk4xOyc8QWnUJ9U/gHn59eqVSG2AT66lQmG4mF9gWopzeRh7rwRblM5bl
	D5eQ==
X-Received: by 10.180.75.110 with SMTP id b14mr820097wiw.21.1363565133345;
	Sun, 17 Mar 2013 17:05:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sun, 17 Mar 2013 17:05:13 -0700 (PDT)
In-Reply-To: <20130317231756.GA3190@jama>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<20130317231756.GA3190@jama>
From: Insop Song <insop.song@gmail.com>
Date: Sun, 17 Mar 2013 17:05:13 -0700
Message-ID: <CACzyEJ8eihmo1C624Cj8vUM+kAJOgy+POtN9h+m_3yWphVeAxQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Mon, 18 Mar 2013 00:05:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Mar 17, 2013 at 4:17 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Fri, Mar 15, 2013 at 10:37:56PM -0700, Insop Song wrote:
>> Hi,
>>
>> I am using HEAD of master, and I have this error after I use commit
>
> Please use better Subject next time, I was wondering what could be
> broken by my patch to icecc and your question is quite unrelated to that
> commit.
>
> Something like "neard failing to build with latest poky" would be
> better.

Yes, agree and will do better next time.

Thank you.

Insop

