Return-Path: <ruslan.bilovol@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4277EE00CB4; Wed, 13 Sep 2017 08:40:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ruslan.bilovol[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B7EE00CAE
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 08:40:55 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id j26so566924iod.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 08:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=568fV5s2eiVKoQa6KDWEtIy8+es2kf79JWXxc2T312s=;
	b=ALPXhrX69lf6LALRtnwkAax6eRhzIxm1TXjzVyqDR7Yp/PBl/hSsr0U5264nVg+3PB
	4CPI3LYkvd+h0UTteYb5u6bhjnsA6V+TQltHjVLfgHkp89uMZsfvRK+nMVTa3sRjA8Lu
	EJMG30aQgxYNBdITmXlINA5xFEivFu1hJv/hTG10EMULgY9JIGaPuR9wTcTfBQubYsGG
	CFbVguGo40d7eqy5gOQ6QB/k6lUbKYnQt1zOPFj+CQEMJGKB+plkVLwi9HMsd3qLIn48
	NcDVuzoP5oFxB1HZ+X7C6efN+KljxUurRL0gPI+9AA9WhK/PkLkD4kCR4vHmmJ9qRXpk
	C6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=568fV5s2eiVKoQa6KDWEtIy8+es2kf79JWXxc2T312s=;
	b=CYSo2el4qC/FGbU+yasbdP/mPQA5dFffE6PY/kXjtEOktpkGEHwHKLw9Av+2PxY0El
	26yFKicY9+EFfCR4KXitDoF81SHkxS9KxaXYAS8j+SPwTNmA7cJtFqKrH63kkP1VgfV3
	ilzeDuQU8KxSo26Fvs10vprafZ8WBWYfzwvne2M7IQ1Dv26z1zA34gQDExuQU4pmJouH
	L5NVM+/lD4P8kFXsUXjeLF7bP46OZV1DaP7DIiPAhnkcqZINAiFK8aISzTk31IqS6ygd
	3YxsqK5CpTeiEMs/VXCBicp8wM1gUVwQyuZcKSSmIxRCmk1c4y9VhoXUqaIq0PKKKfsJ
	K1TQ==
X-Gm-Message-State: AHPjjUh1m57IobHWQRnn6GGt/TuYJeB01KRLTn7/H6Gxm1t/EJc1Rgo6
	sQNSEIzGDP5zEPBEzNaP8bfL/HyuYq7gWDrirUo=
X-Google-Smtp-Source: ADKCNb4pAWw1N1UtNgRpRR8Fupc+LjtS2LNPm0a44Yynn1nf0Syl58o5cHBGxtJcp1Ac70e1Uy3C7NQS9Ygial7YaA4=
X-Received: by 10.107.6.78 with SMTP id 75mr25636500iog.204.1505317254697;
	Wed, 13 Sep 2017 08:40:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.27.133 with HTTP; Wed, 13 Sep 2017 08:40:53 -0700 (PDT)
In-Reply-To: <37a76fa5-4f25-56dd-9616-4b4b23fbb093@balister.org>
References: <37a76fa5-4f25-56dd-9616-4b4b23fbb093@balister.org>
From: Ruslan Bilovol <ruslan.bilovol@gmail.com>
Date: Wed, 13 Sep 2017 18:40:53 +0300
Message-ID: <CAB=otbS8_F_Yhisc+ybm8X1m3GXBzCK1q16YjrWATDArwVf+Hw@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Mailman-Approved-At: Thu, 14 Sep 2017 13:41:14 -0700
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded Developer Meeting Oct 22, 2017 in Prague (before ELCE)
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
X-List-Received-Date: Wed, 13 Sep 2017 15:40:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 24, 2017 at 9:37 PM, Philip Balister <philip@balister.org> wrote:
> Once again we will have a developer meeting in Prague the Sunday before
> ELCE.
>
> Please go to https://www.openembedded.org/wiki/OEDEM_2017 and add
> yourself if you are attending and ideas for topics.
>
> Although it is called a developer meeting, we invite members of the
> larger community to attend. The core developers are always interested in
> hearing how OpenEmbedded is used, and what we can do to make it better
> for building the embedded devices of the future.

Is it free to attend, anything else required except of
self-registration on wiki?

Thanks,
Ruslan

