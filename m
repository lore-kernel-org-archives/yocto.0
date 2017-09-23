Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7444E00BBF; Sat, 23 Sep 2017 15:38:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9662E00798
	for <yocto@yoctoproject.org>; Sat, 23 Sep 2017 15:38:15 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id c27so2507972uah.2
	for <yocto@yoctoproject.org>; Sat, 23 Sep 2017 15:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I+5h6fXujp2V5Xz1eiCrgi7NNWx1xtHeTXXSodo4lWk=;
	b=h/OW7edCV9nIOUIxdvZksANMHLjl7MTeq+tKnNx50o62TaoN3prFFWv5I/nKnecsR/
	/t4LHzGTZ1g1W41ngWbYedryD5GBhoqw0i71OYA1XwmfO5ku8C3njQqoLvENe/4PM4S7
	V55RShQrMcyoL5KIUOJwex5D1yE6ZY/efLB36+RnvVrA6N1sMUL91Fz4AbUE1/tO403G
	hTKKhwUIi6ZavTMdr57B4311acMgC4CWnf0V/iIyIzF0Clk8PjE4LllNU07ktj1ju94w
	qTvlCRpb+pTv76/LTmWCPjQm+MKqK7DCVDuVZ5WkrhfRkowKzz6BA0MCkL97vEJ0Rqqs
	t+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I+5h6fXujp2V5Xz1eiCrgi7NNWx1xtHeTXXSodo4lWk=;
	b=V+qpGr4R3/yACc5I9rXFZVG52x9Qm5X0u/NAhyaKIXM2KEy9tzOjEA6qLOgTyaDGdt
	9jnUhH9NV1bnxytvQ4ykCvVO91vXZYKtAZwCL5piaulYgpT2oQGw+kNk+XIynsF5+Rp5
	obHMUXVmjEL1fsVBO3Lshu/7zbxAdOLUMb4/mm8p5exFDvvt82P69lZ1WhSd978nZDie
	6KbcqFLDbL20uxmKVObfsbF+UHFgFunN+2FSqyo8fAv1Xp9w7+KwwM+QA+9fR6iaZ6/z
	FoSPOKJwghVcXIea9cwT4JkJfA00aWv4dtNFg6DmK8l6MPmocA/J41SG2FkuBypZvyyV
	V9Xg==
X-Gm-Message-State: AHPjjUiQlDF+G2yclvERp++jmy6ohgk+9EVGUR22/5M0AIyql48Dkg6X
	KEz4uHsGA1mQqZg4rR5dyi39JkY1LXMiVzyP6fA=
X-Google-Smtp-Source: AOwi7QD+ryfozWqpDUOLbDoH6w8SLfC6hoK8Eb5acZIWss3Aic2VJj2o63IehvZGF+/gRFDKLejVxWZtG3SgRWwjRZs=
X-Received: by 10.176.20.169 with SMTP id d38mr3383866uae.184.1506206294521;
	Sat, 23 Sep 2017 15:38:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Sat, 23 Sep 2017 15:38:13 -0700 (PDT)
In-Reply-To: <5d069560-b9cd-df9c-513e-c0ae58a171b1@mvista.com>
References: <CACMwXoWOfgvRzEebbKE4tHCcPmJeChYC1angZiJLPmLFRLTcLQ@mail.gmail.com>
	<5d069560-b9cd-df9c-513e-c0ae58a171b1@mvista.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Sun, 24 Sep 2017 07:38:13 +0900
Message-ID: <CACMwXoW=cn0jKmCzVguULwOi5wosRL-F8hSEsGUe10CjWj1sjw@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: libgcrypt building fails for armv6 binaries.
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
X-List-Received-Date: Sat, 23 Sep 2017 22:38:16 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Armin.

Thanks for your reply.
It was very helpful.

2017-09-23 14:21 GMT+09:00 akuster <akuster@mvista.com>:
>
>
> On 09/22/2017 09:15 PM, Yusuke Mitsuki wrote:
>> Hello yocto
>>
>> libgcrypt has problem that build for armv6.
>> bitbake said error messages at do_compile as follows:
>> ...(snip)...
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S: Assembler messages:
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
>> Error: selected processor does not support `rbit r8,lr' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
>> Error: selected processor does not support `rbit r9,r9' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
>> Error: selected processor does not support `rbit r10,r10' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
>> Error: selected processor does not support `rbit r11,r11' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1165:
>> Error: selected processor does not support `rbit r8,lr' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
>> Error: selected processor does not support `rbit r8,lr' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
>> Error: selected processor does not support `rbit r9,r9' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
>> Error: selected processor does not support `rbit r10,r10' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
>> Error: selected processor does not support `rbit r11,r11' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1166:
>> Error: selected processor does not support `rbit r8,lr' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
>> Error: selected processor does not support `rbit r8,lr' in ARM mode
>> | ../../libgcrypt-1.8.0/cipher/rijndael-armv8-aarch32-ce.S:1167:
>> Error: selected processor does not support `rbit r9,r9' in ARM mode
>> ...(snip)...
>>
>> I googled about this problem then I found the clue at here.
>> https://mail-index.netbsd.org/pkgsrc-bugs/2017/08/01/msg062410.html
>>
>> I thought it fixed at libcrypt_1.8.1.
>>
>> I tried update to 1.8.1. It seems fine.
>> So I suggest the libgcrypt updating for 1.8.1.
> It may be too late to update  as we are in the stabilization phase of
> the next release.
>>
>> By the way, I created the patch for this problem.
> The is great and much appreciated.
>
>> But I am not sure, where to send to this patch?
> Yes it is a bit confusing and we should revisit the documentation.
>> I could not found the guidelines of contributing [meta].
>> I should send to OE-Core's ML? or  here directly?
>
> The oe-core ML is the appropriate place.
>
>
>>
>> And, Would you let me know what strings of options to git send-email I
>> should to set?
> if you want to us git send mail, I use the following.
>
> git send-email -1 -M --to  openembedded-core@lists.openembedded.org
> --subject-prefix=PATCH
>
> regards,
> Armin
>
>> Thanks.
>
>

