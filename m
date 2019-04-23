Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EAAAE00950; Tue, 23 Apr 2019 04:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83BA1E00927
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:44:02 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id s3so22922324itk.1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/82N5jShL5V07bwXpmxmYNYghqeAelGFdsNR/B4xHWU=;
	b=u2PaW2C7NOFelLProlre6H4CvCxJOj3cE5RzMbfDtwQt5Dd1ZqnN3X8HpA1XfkFGj6
	XdajvSClycOSvgu/ZZXypa+4GZdVNpGXyMgqpQlfjTwQeHOt2nlt7L4ulI+Z1ASI+2GJ
	OnfLYpvYKq9eromuKWWv1RGPJN2480YsNZBw94uSPfwns1GIShsw9btFZ5/fjhkwTTSz
	7hby7ItH2Owh+U5x1e6ryCrydTMq6BP/XFS54DZqgwkXF7ZW6o9hiCRfOqaxA0ve14UF
	zS8yDS0onWwfTI+DCWeya7/VaBXP8yM3cJdC+FEnJsaALi67f0pxhJqXsKilRgLHy0sr
	EtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/82N5jShL5V07bwXpmxmYNYghqeAelGFdsNR/B4xHWU=;
	b=Tw3CHGuG4IvhYLYImi92WupctwkeSGp1otREarIDLUnp5F4QWTUxAv8tgyMlG0XHyG
	CUgi01fIOCDMaVUiowt3q479+ewZDVNcJ9iQ5UHixcJ00bt6nPzixvhRdfKYxYuuN8Tq
	MzjH15Ce1/X3yq9x9O3tZDc3T5LSvzcZVEIT8YbaQHb1ktKHa2w0+p6rqsblR3FA5IA9
	6EbMPmTQKRicna1QyYy1m3yAHgiXd9UFfDQoRdKk0BXjrbnnB0iOwMLEJuFgGlSUVrHX
	euxkf0HjPR4TVRtHxNEd6pqmdyjxb/+UMz2+qwX7eDDSh/E3E4nz0h1LWbNSymRW4d61
	iXnw==
X-Gm-Message-State: APjAAAWt2eyo7DufLNEE6mTmyV/JFhhEFL1BSM8sRrwLYWqOxsoDkH5o
	P/X5IL55rHoD37WXQ040rYOAspvVRdwpzGNyo5c9t/7m
X-Google-Smtp-Source: APXvYqwzSJwumSbphqJiHwi+vBEqPj63gc5ind1MpTu2zAKwTwk04tf9ZidY62pN6xLxFtCDra+YvvO4xng7j/2vBnY=
X-Received: by 2002:a24:4109:: with SMTP id x9mr1568854ita.111.1556019842009; 
	Tue, 23 Apr 2019 04:44:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP; Tue, 23 Apr 2019 04:44:01
	-0700 (PDT)
In-Reply-To: <VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
	<CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
	<VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 23 Apr 2019 21:44:01 +1000
Message-ID: <CAA=hcWQJ+cJQpy6zZ3wQQaH2eutk=cdnikspBiyyL0K+-Q9gjQ@mail.gmail.com>
To: Erik Hoogeveen <erik.hoogeveen@outlook.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Tue, 23 Apr 2019 11:44:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Eric, how did you set up SRCREV? I've got an error need to set
a valid SRCREV.

Thank you.

Kind regards,

- jupiter


On 4/23/19, Erik Hoogeveen <erik.hoogeveen@outlook.com> wrote:
> Hi,
>
> This works for me. I've have setup ssh my identity for Bitbucket.
>
> I use this in my recipes:
>
> SRC_URI =3D "gitsm://git@bitbucket.org/<account_name>/<repository
> name>.git;protocol=3Dssh;branch=3D${BRANCH}"
>
> Cheers,
> Erik
> On 21 Apr 2019, 02:58 +0200, JH <jupiter.hce@gmail.com>, wrote:
> Hi,
>
> Could someone kindly clarify what is the syntax to access git source
> from bitbucket.org? I tried following different patterns, nothing
> works:
>
> SRC_URI =3D "git://bitbucket.org/<account name>/<repository
> name>;protocol=3Dhttp;branch=3D${BRANCH}"
>
> SRC_URI =3D "git://<username>@bitbucket.org/<account name>/<repository
> name>.git;protocol=3Dssh";branch=3D${BRANCH}"
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> On 4/20/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> Sorry for a new starter questions, I searched Internet, there are a
> few examples to set up:
>
> SRC_URI =3D "git://<username>@bitbucket.org/<account name>/<repository
> name>.git;protocol=3Dssh";branch=3D${BRANCH}"
>
> Not only that does not work, I have set up the public key to access
> the git bitbucket repository:
>
> $ ssh -v git@bitbucket.org
>
> The Yocto also complained SRCREV, following some blog to add the
> SRCREV =3D "${AUTOREV}" that not work either.
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists=
.yoctoproject.org%2Flistinfo%2Fyocto&amp;data=3D02%7C01%7C%7C5e970c621c2e4a=
0f349108d6c5f47377%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C63691405102=
4571809&amp;sdata=3DCk9czRr02QsCIpJKbRtJTmcOAgQMPg64v7km9%2FAv3Ik%3D&amp;re=
served=3D0
>

