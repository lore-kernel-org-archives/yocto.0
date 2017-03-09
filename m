Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BE6AE009A0; Thu,  9 Mar 2017 08:28:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BAEE0030B
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 08:28:20 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id p64so127292683qke.1
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 08:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bYGu02+e989OO03qlYxKwuMOVJOx1+EfeLIYKOL7jsM=;
	b=gx+eRA41tzLGE420KOKIUpuRf/fmkKjw+uWNLiSTspGe1MVVxagBGyKPulBnNTUETZ
	eVf9Fh4OddlwTexQizhKifkC9CEDIfxJ76EsPL9k4h21BNnYvC+0F4+5MSbdk9l4izJQ
	kxXH4pF++uP4qhg1n64oqNyQj9AqEfSZ9bD1pecj+28EaCfYz4bDQvflamF4KmC9apLe
	LiXa1r4SOgM0Rd8PYHO01BTTI4+OlnMm2G/k/cy5/at/OGRh/eBgewkFFvuZcC+KLrxy
	lO4kfqAYSCRYntuBfqI3ZbtlhNxI8gCDGcfCYlh9j16C7gSm7w7jH/SUFwead49+1+MY
	aHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bYGu02+e989OO03qlYxKwuMOVJOx1+EfeLIYKOL7jsM=;
	b=VbghRDNSmiKniq6gByLYhxMLcPUk0REbmFMwyyqBnLQ1qpwCCocgRUjLDwV8pIx6KM
	YjDs2/bk9rP+0J1ttiYp/YeZQ8cLBeJFdNZoVGSRaYEzBzpL1+uuvE3My27jTYWGlPmw
	ofodY/Rp2uj38Js9vaT/IdCvs0O36sZ3rb750KdgHtYzc1GNQSsD2u11J0bAYkfSUKX1
	tW/r74LdOn7XwxYQezGluuK4CUIHkJtkCqoiwCc6i/xcutOS7WvyVyyr3M+VE3XVQm8q
	bf3HCfK1+X4M0/TdNc2EafT6waZSNqFL70wS8P6Tuyz2bjfXokcwsG4RcvXCHFLQVUMv
	ai9w==
X-Gm-Message-State: AFeK/H24sIZp9YYvOIav8ZccRr1oepKucyc4DpsbUmG5bA0fhJ1YwfYgNsxZEWa+uhku0PqDnmDz78sQBtjeBQ==
X-Received: by 10.55.183.3 with SMTP id h3mr26795qkf.165.1489076899914; Thu,
	09 Mar 2017 08:28:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.7 with HTTP; Thu, 9 Mar 2017 08:28:19 -0800 (PST)
In-Reply-To: <CAMKF1spvkP-K1OcXGO_o57T_LjqOyW8SyNBHpyHGnNR7k4g-Rg@mail.gmail.com>
References: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
	<CAMKF1spvkP-K1OcXGO_o57T_LjqOyW8SyNBHpyHGnNR7k4g-Rg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 9 Mar 2017 13:28:19 -0300
Message-ID: <CAF3SDA6_i-U6j33VbbEQjcbVuN3_xcQdxKb8Mm3uePOPSLZhRA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Code provision without full git repository history
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
X-List-Received-Date: Thu, 09 Mar 2017 16:28:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm not trying to be simplistic here, but, why not package the source
releases to a tarball (with git archive or somthing) and provide it
through a FTP server?

Regards,

2017-03-09 11:29 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>
> On Thu, Mar 9, 2017 at 5:02 AM Waldvogel, Sebastian
> <Sebastian.Waldvogel@vector.com> wrote:
>>
>> Hello,
>>
>>
>>
>> I am searching for a way in Yocto/BitBake to extract the source codes of
>> the software applications developed by my company for delivery to our
>> customers.
>>
>> The source codes shall be delivered as archive containing only the sourc=
e
>> files without the whole git repository history.
>>
>>
>>
>> Setup is that we have own Yocto layers/recipes referencing the company
>> internal git repository (SRC_URI=3D=E2=80=9Dgit://git.company.url=E2=80=
=9D) and the concrete
>> SRCREV to be used. Basic idea was to use the option
>> BB_GENERATE_MIRROR_TARBALLS =3D "1" which generates an archive file with=
 the
>> application source code. Unfortunately the generated tarball contains th=
e
>> full bare cloned git repository with full history and not only the sourc=
e
>> files of the concrete SRCREV.
>>
>>
>>
>> As alternative I tried to use the archiver class. The generated tarballs
>> contains the concrete source files but in addition the full git reposito=
ry
>> with history is contained too.
>
>
> I am not sure if it is intended to keep SCM history though you might want=
 to
> file a bug
>>
>>
>>
>> Does anyone has an idea how to extract the concrete source files without
>> git repository and history?
>>
>>
>>
>> Thank you very much for your help
>>
>> Sebastian Waldvogel
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

