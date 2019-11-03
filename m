Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59125E00AB3; Sun,  3 Nov 2019 09:56:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BF7E009B8
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 09:56:49 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id a15so14519336wrf.9
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2019 09:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=nZIV6Kzu4K6aACiWu+EI1WqDOEk/4nUGzkq6SVNmNTQ=;
	b=NJJYhvZuOO3TpHlFCnHl77m68k9hnqeMcL14U68GEZgTR7MLRddF1lx5m1qT5SnCDk
	6YppSSTcDwhTe4JV0SK+XrXMgJ2RMKD6v1qfD9Pmz7O8GJ+HHM3qJiusq6Qqc3ckxWAF
	QNt7QvBLnTpTG3HCXafdarBjG1tGvMdRCEt9js26i0stT3s/0MhplFoA530Gdm8gn250
	UywKZex5p4JeJ1v6byWD98D+V9e/u8KQGUT086JbYrV/E7t/IaE74wILd0AqbjLda3O+
	Ko7QPCZFB8OZE/YBxmdPUE7dgmIZprzBN2fpJ7fyLcNNutRqaOTVstBkbGFtoNvsQkr1
	S5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:cc:from
	:message-id;
	bh=nZIV6Kzu4K6aACiWu+EI1WqDOEk/4nUGzkq6SVNmNTQ=;
	b=BLA/gsUmXhqNglsZ9Zr591EiL6Pr/fh2qOokSSluMMm+76jrcSiljIh27trrxOw7vN
	YzvCO0BGDEM5lP+G6XZRy4VSuymcPMRCm/u5dDXx4GhDHfoLq7WuauyT/mTESf90jH0w
	A0Oj+THv8OJcgLUodO1AW5vy0L4w31zM3PIfP/FP5LOkuKkTh8jB/2NF9guXFtVCg/Il
	v3laYrlOdUr8NSDQSg9BbS+tYuGfcNCJsyIMfyTqJpIjFwIZbIl5TjUK/S4zgxNEJqe5
	IbRJjg+K3jQBG3x2IIT1Ehm+5+3U3tdcUpMVQBnga1kIjs1F6HtB9Z21oSBkm8qbbtcr
	se5Q==
X-Gm-Message-State: APjAAAUDaOsg+TLhzQ5fFrlxCLl3VF15WGGtENUvuUGtOo1IPKSCKa3C
	q6oUOEXLtjK8I5khcqKgyyyRNQ==
X-Google-Smtp-Source: APXvYqzkYYyTHjsKuf63c+rlmofT9/FxY3xI3wQN0xZGRHX2XXv+LAiWW7aMiJwGcObah7Age9p/CQ==
X-Received: by 2002:adf:f203:: with SMTP id p3mr7652598wro.2.1572803808275;
	Sun, 03 Nov 2019 09:56:48 -0800 (PST)
Received: from localhost (host81-154-22-156.range81-154.btcentralplus.com.
	[81.154.22.156]) by smtp.gmail.com with ESMTPSA id
	d20sm21505050wra.4.2019.11.03.09.56.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Nov 2019 09:56:47 -0800 (PST)
Date: Sun, 03 Nov 2019 17:56:45 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Sun, 03 Nov 2019 17:56:50 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 3 November 2019 13:18:53 GMT, Khem Raj <raj=2Ekhem@gmail=2Ecom> wrote:
>On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan=2Ero>
>wrote:
>
>> On 01/11/2019 17:18, Khem Raj wrote:
>> > On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan <andrei@gherzan=2Ero>
>wrote:
>> >>
>> >> Hi Steve,
>> >>
>> >> On 01/11/2019 05:32, Steve Pavao wrote:
>> >>> poky linux build fails when ARM erratum mfix linker switch is
>specified
>> >>> in local=2Econf:
>> >>>
>> >>> TARGET_LD_ARCH_append +=3D " -mfix-cortex-a53-843419=E2=80=9D
>> >>>
>> >>> causes build failure=2E
>> >>>
>> >>> Please advise how to use this switch successfully=2E  I am synced
>current
>> >>> in master branch in all layers as of today=2E  The switch causes
>libtool
>> >>> link to fail due to missing libbz2=2Eso=2E  If I don=E2=80=99t spec=
ify the
>switch,
>> >>> the build completes without errors=2E
>> >>>
>> >>> It is important to be able to build poky linux with this switch
>to
>> avoid
>> >>> certain crash conditions as described in the ARM errata document=2E
>> >>
>> >> I haven't tried this erratum fix=2E It is indeed implemented at the
>> >> linker's lever=2E It's curious though to see the bz2 dependency=2E C=
an
>you
>> >> share the specific error? I assume you are doing this on RPi3=2E
>> >>
>> >
>> > this will impact rpi3 in 64bit mode, don't think 32bit needs this=2E
>I
>> > think its best to
>> > add this option in raspberrypi3-64=2Econf perhaps via TUNE_CCARGS
>>
>> I was thinking about this=2E The erratum seems to show that this
>applies
>> to all revisions of a53=2E So it sounds like we should add it in
>> `tune-cortexa53=2Einc`=2E
>>
>
>Up to r0b4 only so maybe not all a53 implementations are impacted
>

As far as I know that is the latest revision=2E Do you mean that newer rev=
ision might come up with this fixed?=20

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

