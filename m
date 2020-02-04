Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4966.1580815335251409074
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 03:22:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=axyB5Myn;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B9EE0152B; Tue,  4 Feb 2020 03:22:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27DD3E007EE
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 03:22:14 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id s24so20475136iog.5
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 03:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8i4m026VnTxb5kmiafJxlKQPLNRAjUnH2RRUO8Gbohs=;
        b=axyB5MynHoLK69IrTERBqD4NYBACz0PAd5EeW2lkmZlFVyfXr3rabAcQT2LbrZwV2P
         +0h5QXXISZniLDRYXzDoyxVXQj4GGjYnuPMxYIjDf4vfLpPcki4hPSdcU8IlFJ1WFq+M
         uc3vnNJ1q9HV6eWfF/VPygYoaQorQ7B6wAtnH3vLH3dFZsQH3YFk0S0PYNDyH9X4G+nN
         w9hjnc4XhQNytnuIrow1FQOi26laSpvvYNeJwG2TZh5z5jwqnPxgxV9gQh+l/PY7AF7v
         EUM5A6pLuYffQiNMkCJ2RUSgqd5e0NTOsb/GDWIUyEUA3RHSHHgpMaZGS8f6yuU0gTyw
         DAng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8i4m026VnTxb5kmiafJxlKQPLNRAjUnH2RRUO8Gbohs=;
        b=JSgmC4jacIq1OIl1n3OmxUs7VTJxh+o62gGL1XVKTK7y2HztcVcUYkgoAnV+H7Zy5q
         tBeemgNKo3epb227hUFZk99EGPkyFX9mwhkJwpOoW+CFtATfm1T57MgDoqo3apTThYhn
         6RDEkAxBiy94M1vBfaDY/Nv1pPVHddFkik7giW7oNsDUXpgY47kP5zfxkXXPbyDOtSAo
         cHTpOot8wettodaTpj/5NyEr2/dSg4H9TlCXR7eXSxu8icfpJaV4kfmv3nDJA0L8q51Z
         aJ/o25QovlobpcyBKqh4Jz+ILfLsnSstjQDPamSZYea31oPKnPc1Q4muqfoRAyhWWJzY
         zclA==
X-Gm-Message-State: APjAAAWuvUGb96yP4tjk7YjeA4rU/VvqWrJhTgugoZPdk3v3TuIIPexM
	JUHcR++K6uYxFbeRZPQqPfJ07dxyo3ZR4cgkVaY=
X-Google-Smtp-Source: APXvYqxzKCobF9W+aQS/MY+Lim19KhPgluhOji2qJUC7HWcTkShSbrG2UlY+OFc1+H2BGuIdsP3tQHku4p8Nb/HZ0Pw=
X-Received: by 2002:a6b:6e18:: with SMTP id d24mr23709541ioh.301.1580815333441;
 Tue, 04 Feb 2020 03:22:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 4 Feb 2020 03:22:13 -0800 (PST)
In-Reply-To: <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
 <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 4 Feb 2020 22:22:13 +1100
Message-ID: <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

On 2/4/20, Belisko Marek <marek.belisko@gmail.com> wrote:
> On Tue, Feb 4, 2020 at 12:09 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> I built the image in thud to include following MTD receipts:
>>
>> mtd-utils
>> mtd-utils-ubifs
>> mtd-utils-tests
>>
>> But the nandbiterrs is still missing, which package for nandbiterrs?
> Are you referring to this one:
> https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c
> Then it's in kernel (not sure if tests are build though).

I think so, I have enabled CONFIG_MTD_TESTS=y, it still does not have
nandbiterrs. I built it with kernel 4.19.75, did you mean the that
build could not include that test file?

Thanks marek,

- jh
