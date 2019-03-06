Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435A1E00C43; Wed,  6 Mar 2019 09:24:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE1AE00C43
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 09:24:13 -0800 (PST)
Received: by mail-qt1-f179.google.com with SMTP id p48so13726617qtk.2
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 09:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=k64EjARCp+vo7+/VApO07o3t8X3l6fSe92B/CRyJe2Q=;
	b=qIb9ZvhbHtCVO4tfekuDbsYb2mW7g56Od8wEnQHnEMI1k3jKxeuAIz3N2J/ApTsjhE
	j58CdfdnsFYVRU6I03tX3yza4CusU8SxUUTfGnORUv5jZH9ADEwRZlL8WENeZkgvIlX1
	jBbOrmT2KQbXu2pyZy9rJFH9fRsnHyQHt5Pz2Rkcq5lSb4YCbEnnJlfhCfzdJQuEusSy
	D4vu5X41OYeZHf3JaJps9ZTJi3GS1H/qH3gm2hHx8t40pjLBgbtvOeusm5Tdr7Ynbz3P
	VLX53xCXoFc77HTQjNluGZkWBVdqlk8AcBKITU92BO8Dnzor64AJ6SOsp8LkMKb1Luon
	Y8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=k64EjARCp+vo7+/VApO07o3t8X3l6fSe92B/CRyJe2Q=;
	b=uEMOBBOF1CdhG6Y9KJUe6CxwrFKRXbGeB1Ng1LPzOtN6JteNz/HlGGRKgj3jB3+Ofe
	7+rah+U3zP7a5MtzFNt8Pisiap8kx2ThkMl26rYx5aAnlocs6RtSlfmous2L0xRq+P8D
	f7g1IV9ODEvC+7GxnHmwqhOybiawNzTmrp7ENNwe4ZapTKyiRcGdilyiZLMRwHIqmt8u
	HLl44WOqxBdyhh137/C7+yIFllMph0TA1Jx1UJ4CKqe+XAh3ZTcSMfDwpg7g0LKXP3Vs
	BjeJuucYrZvwDcBcYHnd34UuiHYPwtQUezD54mwgR+f7gDJhT9J7Ywn9d+poLCeNidup
	KT7g==
X-Gm-Message-State: APjAAAX9tjELqmgCZM3yotxrr66J5UCu8DYZUoi7fHow64hdNiYq6+Wr
	5CsIolTVoWdOtULl3z3TrCTjmUrTVG2I62PrqK8=
X-Google-Smtp-Source: APXvYqyAJDHoevF3aGQGHwyc6I7Cc8wBtAcsOU6Wcze4/7MopwnIqF/uZZJswhwtcC5tYNL/79IoHTuzSC0KHj4cWpQ=
X-Received: by 2002:ac8:300a:: with SMTP id f10mr6504948qte.236.1551893053210; 
	Wed, 06 Mar 2019 09:24:13 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
	<CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
In-Reply-To: <CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Mar 2019 09:23:47 -0800
Message-ID: <CAMKF1sr3e1e725ZpSWBYw2awbF-6VuJ8wYd0YEBn24b4zMeSTw@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 17:24:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 8:15 AM Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> Dimitris,
>
> Good find... I will see about documenting this.
>

Although its not encouranged to use it, its to be used as a last resort
we use it sparingly.

> Scott
>
> On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>>
>> Hi all,
>>
>> this is not a request for help.
>>
>> Today, I've found a very nice option which is not documented
>> which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
>> inside the poky/meta/classes/staging.bbclass.
>>
>> I had an issue with a recipe that had a few binaries that I wanted to add to the
>> recipe-sysroot-native in order to build another package and I was getting errors
>> because the do_populate_sysroot couldn't strip those binaries. I've searched in
>> the source and found that the author of that code was handling this case, but it's
>> not documented (at least in the latest mega-manual).
>>
>> Therefore, I'm dropping this message as a reference to other that might need it.
>>
>> Regards,
>> Dimitris
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

