Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C53E01351
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:21:39 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id i4so7297254oah.4
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 08:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Y9bwE7RAhywxxzqzaihfLOErg7SkRtC7Cz1QfbVEPDc=;
	b=kaKwSm7FMKhQ5ZJTBtxS3bqJsodP8a5ldH1s8u5vOG+qR3+++z53WJtsR4awkfCAx5
	w6iS+qqbLY2MQa+W859gzTH/kCwQucBTJyhgC4wR7CqcNXCCfrYTYGA6BxPBS2ioM2Rh
	FyyVfQge3WmfbFrH30+eZR6lEkQNAuAOi2rhtpThYKw5wrF202HqqDgF2FKwkJiKaYCG
	UwW8vdIdbcrA7uX5I4H9U/ViwPyk7NFEOWT7m5X1pev0BFBhDFqlPdJ7F69Aws7mTF4q
	N+PoZQ45sqOxdht2V0RipvbHivN5uP7VH9elMPRgHQCiKYaFKDdE5XGJ5FAJzjUJOTCH
	+VYA==
MIME-Version: 1.0
X-Received: by 10.182.250.200 with SMTP id ze8mr637349obc.72.1383582098797;
	Mon, 04 Nov 2013 08:21:38 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Mon, 4 Nov 2013 08:21:38 -0800 (PST)
In-Reply-To: <20131104161112.GE3684@jama>
References: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
	<20131104161112.GE3684@jama>
Date: Mon, 4 Nov 2013 17:21:38 +0100
Message-ID: <CAFyqS9q=jCAnL=ds-+ij3bCk3d58PKw4OQGBdxZi4JePb+GvAg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-openembedded/meta-oe and busbox issues in 'dora'
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
X-List-Received-Date: Mon, 04 Nov 2013 16:21:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2013 at 5:11 PM, Martin Jansa <martin.jansa@gmail.com> wrote=
:
> On Mon, Nov 04, 2013 at 05:05:43PM +0100, Hans Beck=E9rus wrote:
>> Hello. We get the below error when trying to build our image in Yocto
>> 1.5 'dora'.
>>
>> ERROR: No recipes available for:
>>   /home/poky/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.20=
.2.bbappend
>> ERROR: Command execution failed: Exited with 1
>>
>> We use the 'dora' branch also in meta-openembedded.
>
> Why are you using meta-openembedded from 'dora' branch when your oe-core
> branch is 'master'?
Aha. We use the 'dora' branch in Yocto but need some packages provided
only in meta-openembedded.
Are you saying that we should not use the 'dora' branch in
meta-openembedded but instead go for 'master'?
I am probably confused here, but I distinctively though 'dora' in
Yocto would require the same in OE :(

>
> Use the same branches for all layers.
>
>> But busybox has been upgraded to 1.21.1 in Yocto. Is there some simple
>> way to workaround this issue (besides removing the busybox recipe from
>> meta-oe)?
>> I.e is there some clean way to tell bitbake that it is expected that
>> this specific recipe is missing?
>>
>> Thanks.
>> Hans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

