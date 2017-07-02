Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C14FE00AE4; Sun,  2 Jul 2017 06:48:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8641E00349
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 06:47:58 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id p204so15946695wmg.1
	for <yocto@yoctoproject.org>; Sun, 02 Jul 2017 06:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NROTkZaL6y9szEFbRHMNe8K9aFMeZZnkukBdc3LRTD4=;
	b=Gm3tKA/qqU+aFLp3rf2QqP3xM/YmkyG5N57Vsv5ao8rpHDA8YM4cgX3she7bd248Hs
	/SB6c8JWd7jqR6lUQA4z7NHVsyvDIja4YTOannPw9AwJRyn/ti2OJ7wfRq4bzX+gu9DQ
	XsUqMkRDhMGr9JGOr1x2jk/rrdQ4HyyqcKvINJYcS12k9u6czymJWNfLzurjd4haSxMo
	N/PKzUK44MrGBNusyQ/9Kxh4SZj0/6g6uKijLYHa96ZlM4yFSC5ORi7KGZnBEch+97/h
	EMD5yKE8vGaauEVMiC0nsJOtG49e1Jk98yOT0L4LF8nQznMnFXdiaMfokhZQXfxld+b7
	nEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NROTkZaL6y9szEFbRHMNe8K9aFMeZZnkukBdc3LRTD4=;
	b=r75UCQHhPdc5ITYDfAvVz8jC4yj7Z6aY9QBGg9IeorhMRopxm2Wtj2tn7DB9HI2m2b
	dGbIj7AlpQV+pQZ9x7nzc++eNFlevSFrmuHhcYeo0Nvv6BpOKoF3hbXneH0G6xEazRuJ
	/lBmt7hPO22bRCVCguy9SwXwY+A7uO4dB4H/FFijRVlp6ii1XN6MyIBBnv2awAdeme8B
	nO+AVdOP81O298brscA9MCwDSt3PtOVB931yodKCaA9RNH3CaAM4MljnrmAASZQydM5s
	Sz02WoaFPM0CZUds1EGphqpzEK5KIenBM/+KxNeif0Vqteff3pkTiK3hNNOchMPf6NC3
	HeRg==
X-Gm-Message-State: AKS2vOwh43pFraJ1D4KOq7lr0huOR4e1DE5bUJL6Qa+ef2n7uItiHkY9
	tmcEjm0Vuc4n68CMuah7AJE80DlSXA==
X-Received: by 10.80.216.5 with SMTP id o5mr8838750edj.178.1499003277716; Sun,
	02 Jul 2017 06:47:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Sun, 2 Jul 2017 06:47:27 -0700 (PDT)
In-Reply-To: <c8fd25910666decb8e5dcf5ad23414ec@smile.fr>
References: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
	<031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
	<c8fd25910666decb8e5dcf5ad23414ec@smile.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 2 Jul 2017 06:47:27 -0700
Message-ID: <CAMKF1sp2iW1hdMuW84DYgAW0GWGMfusETAAQah9N-WufpFD=2g@mail.gmail.com>
To: Pierre FICHEUX <pierre.ficheux@smile.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Sun, 02 Jul 2017 13:48:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 2, 2017 at 1:01 AM, Pierre FICHEUX <pierre.ficheux@smile.fr> wr=
ote:
> Hi,
>
> Yes but it was fixed that way in the Pyro branch.
>
I thought this patch was being proposed for master. If yes then different
solution in pyro should not be a big problem. you can always backport
the new patch to pyro

> do_compile() {
>              ${CC} ${LDFLAGS} helloworld.c -o helloworld
> }
>
> regards
>
> --
> Pierre FICHEUX -/- CTO Smile-ECS, France -\- pierre.ficheux@smile.fr
>                                     http://www.smile.fr
>                                     http://ingenierie.openwide.fr
> I would love to change the world, but they won't give me the source code
>
>
> Le 2017-07-01 16:53, Khem Raj a =C3=A9crit :
>>
>> On 7/1/17 12:52 AM, Pierre FICHEUX wrote:
>>>
>>> This problem causes the following error :
>>>
>>> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf
>>> binary
>>>
>>> Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
>>> ---
>>>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb   =
 |
>>> 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/e=
xample-recipe-0.1.bb
>>> b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/e=
xample-recipe-0.1.bb
>>> index 5fbf594..e534d36 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/e=
xample-recipe-0.1.bb
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/e=
xample-recipe-0.1.bb
>>> @@ -14,7 +14,7 @@ SRC_URI =3D "file://helloworld.c"
>>>  S =3D "${WORKDIR}"
>>>
>>>  do_compile() {
>>> -            ${CC} helloworld.c -o helloworld
>>> +            ${CC} ${LDFLAGS} helloworld.c -o helloworld
>>
>>
>> perhaps doing compile and link in two steps where CFLAGS and LDFLAGS are
>> used would be clearer
>>
>> something like
>>
>> ${CC} ${CFLAGS} -c helloworld.c -o helloworld.o
>> ${LD} ${LDFLAGS} helloworld.o -o helloworld
>>
>>
>>>  }
>>>
>>>  do_install() {
>>>
>

