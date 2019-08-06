Return-Path: <danimanzaneque@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51660E00D59; Tue,  6 Aug 2019 00:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danimanzaneque[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D119E00CD5
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 00:53:50 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id x4so33687977wrt.6
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 00:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=mJmsWifZtx/WdBV+ZvYswRSd5+BHrnQp7t07PTotthk=;
	b=V3vmMQa8CIZBY0hvXMj3wDbOq88eoAQPHrqdBgA9oqfep9wu7ASCNyoazJFk9NT71U
	ka53dLkn2fpNInItQKBerC/v9zafUZhEUlUnEHj0B7WnRVrMIAYAiwTjd+flzfsrBMDE
	HdE42hTfdumh6lVkgytNsYM7eY3Qs3FSo63GweYMaXAyhg4EY0gYEWUAd6mEcBNXodEn
	yIoFXB1HgnUvZKvrG2UAB7cZUTTJVmfi8Z0BdyGKU6DPR5GdUx1c1mbGS524nPtHJRj5
	Y3mASosrPbtFQ3j1c5X56Qnptfz9C1pga3Vs71QpwJxLplryNjeRKoLrpxc55ocDkEMM
	zL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=mJmsWifZtx/WdBV+ZvYswRSd5+BHrnQp7t07PTotthk=;
	b=fMMkENxNlZFHOlzFUdzZcR3o2iZYZA6NtslUgmKwBBAITb8q1wFjcUyJEclfTMlfo6
	TTp60fFc1EVyQldAF64vhtXZREEKPtW+jdqmSLIhRB7XZ0ChLEI360Ue89+OnAFakIvI
	lYdqLN1OAStmSNh799f18yITiBjTkB1MwkPiDsAvMutb7G1J0CQH4/nAmNwxCoF44Zxj
	nHZizrQnIapP2VWb4r24EjA9T8wkJ8bwiVxF2cd+acVJT9F1lG9LwJs6n/MifBXyEDX7
	q3E6ok7Rkc98FqrPPVDL9tLVkF5qCQMirwJVvsuM1WapggB/8RYad6fGce3VbmPU/02Y
	YeIw==
X-Gm-Message-State: APjAAAUdp451jrMinjHFzdMErdnVsVrzHuKuW3ip+h0DQWXmJ+09Uz2H
	eVsHlo8ZOmv9keXL5zsVAZK0lyLrnvIBZYRhkf4=
X-Google-Smtp-Source: APXvYqxPQ9LeH29Z/PjOcviRlWLKFbO6LZn49tYR6Z2TL1RvA1HeAAQJEMKVgS1jSbjmvIEW9umJcTQ6e0LxRRjM9Hs=
X-Received: by 2002:a5d:518f:: with SMTP id k15mr2914157wrv.321.1565078030036; 
	Tue, 06 Aug 2019 00:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkrxtRnNOes22KGRonzi_JTeJd0oNVyFeuJQDFtJuc5MGfodQ@mail.gmail.com>
	<CANNYZj83rHQHXHg2dDeXGK6pajXF=1mdJ4L-emi3AsQuMwJ2_g@mail.gmail.com>
In-Reply-To: <CANNYZj83rHQHXHg2dDeXGK6pajXF=1mdJ4L-emi3AsQuMwJ2_g@mail.gmail.com>
From: Dani Manzaneque <danimanzaneque@gmail.com>
Date: Tue, 6 Aug 2019 09:53:39 +0200
Message-ID: <CAJkrxtQ_Btvjv_dUhiDj8PJ1_DKfWBVLqAq8vWPaFMb2pxJ2MQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Integration of Conan Package Manager into the Yocto Project
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
X-List-Received-Date: Tue, 06 Aug 2019 07:53:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We know that this approach is a bit different from the Yocto way of
building all from sources and we acknowledge the benefits of doing so
when building for specific hardware requirements. However, this
integration has been requested by Conan users already managing their
packages with Conan for other platforms that wanted to be able to
deploy their libraries or applications into a Linux image generated
with Yocto.

This is the first step towards that integration and we have proved it
works, but there is still room for improvement and we are fully open
to any suggestions. We will take a look at the fetcher approach that
looks quite smooth and a bit easier for users too.
Thanks a lot!

El vie., 26 jul. 2019 a las 14:47, Alexander Kanavin
(<alex.kanavin@gmail.com>) escribi=C3=B3:
>
> Pulling down things from the network in do_install() is not the best opti=
on. Is reproducibility and integrity of such downloads guaranteed? What abo=
ut the component licensing, where is that checked (against upstream changes=
)? Also, yocto's download caching and mirroring facility is side-stepped en=
tirely.
>
> The typical 'Yocto way' would be to write a specific conan fetcher for bi=
tbake, so that you can specify SRC_URI =3D "conan://..." in recipes:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch=
2?h=3Dmaster-next
>
> Generally, if someone is doing system integration with Yocto and has acce=
ss to the source code, they might just write actual component recipes for b=
uilding from source, as the presented workflow with building via SDK and ar=
tifactory binary uploads is awkward, and all benefits that happen when yoct=
o is able to build directly from source code are lost.
>
> Regards,
> Alex
>
>
> On Fri, 26 Jul 2019 at 14:39, Dani Manzaneque <danimanzaneque@gmail.com> =
wrote:
>>
>> Hi!
>>
>> We have developed an integration with Yocto for the open-source Conan
>> C/C++ package manager.
>> This integration includes the ability to cross-build packages with a
>> Yocto SDK Toolchain and later deploy them in the Yocto build.
>>
>> We have created a blog post with a brief introduction to the Yocto
>> Project and the announcement of the integration:
>> https://blog.conan.io/2019/07/26/Conan-Yocto-integration.html
>>
>> And a detailed section in our documentation with the configuration for
>> the meta-conan layer and the Bitbake recipes for the packages:
>> https://docs.conan.io/en/latest/integrations/cross_platform/yocto.html
>>
>> Feedback is welcomed. Thanks a lot!
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

