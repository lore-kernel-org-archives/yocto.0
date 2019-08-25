Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EFD4E00C27; Sat, 24 Aug 2019 18:19:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20B8CE00AE6
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 18:19:53 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id t14so7916622plr.11
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 18:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=eCDYl22mqwbY1h/9lk7BnvIqgEHGM5j3pGx57iCS1kU=;
	b=n/J4Aa+rx58tSpYNOzSLq+vtNLrdoUOzsHle8GgjSLjfcsZQ97sCsgtTRD0lIXmEc/
	IRrLeajEkU7K+M+7jIUISPkwmLr4uUJs6ZcvcFTHgL73X9kOHWmMXOEc8OgYzVlO+inI
	U73WFnNmDlV2rxzzt/dmkDoODOiNUKDBtqHthBat+Bwj+TPgCb90JS8O6elgc4agTTvS
	BxH6TAA4xs4o5AuliMs5CDIRxeY8Ix8+edy/y418ZsrwoK42WDCLlBJrestN97jVJlY8
	MTM/2anU0kFku1IjVazLu2710HoLx/26k6XXva97aW5Hh3ErQLW5wXLx8qJ25rLXkB7H
	WU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=eCDYl22mqwbY1h/9lk7BnvIqgEHGM5j3pGx57iCS1kU=;
	b=Fmdq28e/zxOSHJib8LE3dwkkK5Vpzq+ffI2HckHhx7DJ59jA4uG53PylWoeXaM/cdB
	OErzv/u1uZ3ZQ2npLdmLri2XzP1PZS6pXvvPWvTpBidrwWCdug417VWHP8ocRbAz7mZF
	nffZX29xVvlqvRo03Et6GSRM0SURQzkCyRBHFUPV8hwL53WAnVugBbc2T6pMKhVUmJBv
	mtL5URFK9ydMMtolt/W5Q+ShD/6J3FBLLeBLKmDm0MyDuMyr60S+OCqYydiZQwH/OhLd
	U/g64zLBnK2BTXSJ+bdrfAGO3nfvoSBq7wEzN9ECRN8Y6zclobWE6XvnFuHSeEgwD80t
	Fg6Q==
X-Gm-Message-State: APjAAAWQFiySYt1P0+FUj/fzD+NgZf5hakpo+c3ztKZm0r8sRliGg2ZO
	ob+LjJ1oisEerFzdNzHgLpdWQ/9fIDDgPQ==
X-Google-Smtp-Source: APXvYqxGDFQUB6q0At/ZEJ5fG5JxeiBLS25Qx8rexKYxcoF7WLAdwMhlErierl3geNnsR22T5AMs4g==
X-Received: by 2002:a17:902:9889:: with SMTP id
	s9mr12499685plp.100.1566695992651; 
	Sat, 24 Aug 2019 18:19:52 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:d435:11b7:8108:4569?
	([2601:202:4180:c33:d435:11b7:8108:4569])
	by smtp.gmail.com with ESMTPSA id
	i14sm7517882pfq.77.2019.08.24.18.19.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 18:19:50 -0700 (PDT)
To: Philip Balister <philip@balister.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
References: <1a542261-a335-db48-e7ce-7c1dda207ff1@balister.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <76cea930-ffc3-426c-ceb6-46641440503d@mvista.com>
Date: Sat, 24 Aug 2019 18:19:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1a542261-a335-db48-e7ce-7c1dda207ff1@balister.org>
Subject: Re: Yocto Project Summit at ELCE Call for Particpation
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
X-List-Received-Date: Sun, 25 Aug 2019 01:19:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 8/19/19 3:17 AM, Philip Balister wrote:
> At the past few OopenEmbedded developer meetings, people have been
> asking for more developer and user focused events like a miniconf.
> Partly based on this feedback, there is a two day event sponsored by th=
e
> Yocto Project that provides a chance for people to talk about the Yocto=

> Project and OpenEmbedded. The CFP is a bit buried on the page and I lik=
e
> to get it more exposure, so here the direct link:
>
> https://events.linuxfoundation.org/wp-content/uploads/2019/08/Yocto-Pro=
ject-Summit-2019-CFP-1.pdf

So what is the process for deciding which CFP's are selected.

I see OE was cc'd with this email but there is no mention on the link
regarding OE. What roll is OE playing in this?=C2=A0

Is there a cost associated with this Summit?

- armin
>
> We'd like to see new faces talking. We know there are a lot of good
> stories out there, that will help lots of people become better users an=
d
> developers.
>
> The link to the event is here:
>
> https://events.linuxfoundation.org/events/embedded-linux-conference-eur=
ope-2019/program/co-located-events/
>
> Follow the path to the Yocto Project Summit. If you are alrady signed u=
p
> for ELCE, you should be able to update your registration to include the=

> Summit.
>
> Philip



