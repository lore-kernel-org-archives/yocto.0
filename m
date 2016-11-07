Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A475E004E5; Mon,  7 Nov 2016 12:12:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.180 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88E2E00498
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 12:12:27 -0800 (PST)
Received: by mail-ua0-f180.google.com with SMTP id 12so129545648uas.2
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 12:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=SPXQvysNTAp+xgDB/iHZbT1dWODoP8NQ0O5olPxEMYI=;
	b=LnhlgzloW88c6xa/cax9TFPps6s6m7CZznlJjl071Gr0v04mMLqnP2grBWwkX3MuJU
	+ZpXRRveQqppLNkSHwpiSBk3JnH/DxIriuyi9P9fn/b4DdvwMmKCxupEngO1iAohwTY/
	4e5jXep5HUv4D14pLo/FE5cA5imG6r77NPv7Oli5VLRXZT4jhyz66Frvn3U8vQev+eTu
	Ko+lzfpS4/fzy4a1hBVGpHpoTDYBpDl+ULznqnlu6sLfPik+vb7uby9qxWdpPcp/V56b
	vLZTZDvCHEKdpQQI5BDuA1HRIZDuCAyo2MLQGMuEmnOYakZObquDOtaVpwtLDGQS2faF
	+fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=SPXQvysNTAp+xgDB/iHZbT1dWODoP8NQ0O5olPxEMYI=;
	b=PRHFO8u8NgsLOGIYBxpQFhJEhW7/yBlktGvArAxCsngP71oIc2XYUISfvJhcAtHMzK
	o6HEhC1xXPMe6T0zmegHseEjHH/JQ0KT6VlwQDNklLtXXkObObpWP2Gcqr9/3LCPzQvh
	pZSA7hg2wijmB1gUpeLmlFyVhZSV4GrPhcGSQ9g1zYaf9bOyolY5caNIkr0bDt5BQTo9
	2hOzTWdgt+6l6g4RqiCSjmpDfx357p1fJMgHfEOQIgCZGlRZc5ZIki2OeIODyi+CdqVU
	S/xF9B3+a+LkGhbBW/B9cKFDdA54sKngGhsuzUkDsqH4j3x5tRHoVw7FEHSvHnTJIYrO
	zp4Q==
X-Gm-Message-State: ABUngvdItMLaJh9xg7vIZ6fsaiIr51JGTHZxECclh4mZ8mRPPSJzyBK6sf+NenELZhr3YL969T8sblnRHSZPbg==
X-Received: by 10.176.82.181 with SMTP id v50mr5075013uav.31.1478549546580;
	Mon, 07 Nov 2016 12:12:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Mon, 7 Nov 2016 12:11:56 -0800 (PST)
In-Reply-To: <1589087.fjKFOckh16@peggleto-mobl.ger.corp.intel.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
	<b7805230-409c-96cf-1562-28bf6a8f81dd@gmail.com>
	<1589087.fjKFOckh16@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 7 Nov 2016 12:11:56 -0800
Message-ID: <CAMKF1sq42NJztUn5D9pvHUw2FrOv=K54VYvS7Limgq2dO0TOzQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UTF-89 support
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
X-List-Received-Date: Mon, 07 Nov 2016 20:12:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 7, 2016 at 11:48 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Mon, 07 Nov 2016 09:24:18 Khem Raj wrote:
>> On 11/7/16 3:48 AM, Keskinarkaus, Teemu wrote:
>> > Hi,
>> >
>> >
>> >
>> > I tried googling this and reading the manual, but I guess this is too
>> > trivial or I=E2=80=99m doing something wrong.
>> >
>> >
>> >
>> > I=E2=80=99m trying to get UTF-8 support to my image. UTF-8 locale more=
 specific.
>> > If I run locale =E2=80=93a command I get these locales listed:
>> >
>> > C
>> >
>> > POSIX
>> >
>> > en_GB
>> >
>> > en_US
>> >
>> >
>> >
>> > I added this line to my local.conf:
>> >
>> > GLIBC_GENERATE_LOCALES =3D "en_GB.UTF-8 en_US.UTF-8 en_GB en_US"
>>
>> you also need to set IMAGE_LINGUAS to include it into image
>> e.g.
>>
>> GLIBC_GENERATE_LOCALES =3D "en-gb"
>
> I guess you meant IMAGE_LINGUAS =3D "en-gb"

yes thanks for noting

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

