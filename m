Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D6FE00D18; Mon, 25 Sep 2017 18:17:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04111E00C8F;
	Mon, 25 Sep 2017 18:17:48 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id b70so4726871pfl.8;
	Mon, 25 Sep 2017 18:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=CY3FUteJE9/P7VRVzOIZQVdLkPZEjdW0EKQ6arxAtvQ=;
	b=EfYR6aXBGcGtP+VFnzMMkA7D1Mt/gZHik4fG+Gdfg4Ip5DayXC9YgDE9oWgtny87fe
	p7B+4oO/PM/WUZwUeGpDMhxIWqwtuKl6EO05dLiU7qJlXjQv0mcC6qi5fK5EfXqqrLIW
	4csxdh24hV0dwdcebIoudvuGzSZXP8TP5vOmpESkVmfkOQZ/+F1tTHjp8IoImJdOC2DJ
	hygeIx3rFqYQmBgjj5/DsBS/olxhR8BSU8zFpL/1sZ2+LodTBO7QKj4s7T5n5y89lglD
	K7OKOLCPab0chAvoRi1g+hgSq3jbcUsjCaOGS7KFxdPvOnEBNUPdSnCdf53NZkhxR2Zg
	U82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=CY3FUteJE9/P7VRVzOIZQVdLkPZEjdW0EKQ6arxAtvQ=;
	b=p8fgzU+EBzZQQgiTpCHi7cgDM6YW58njYxpe1O32P0FuRD9keA2zkpg2iMJ9JsOKCw
	WeJCxiKFuORuv8njTh4NUKs6NetNSriWeR6FAXxL3yZVex1/UQU7DWGnv4/8e3s2jbtL
	Nwshh+kZFqJH2Cuy7R8rug0J+NGJvc8ZbXCGJDg+nu6H01m5+P12j+AxDdiZ8Jg7RTRJ
	wPeXb26MGniLTBo+HOWACei1C6Ewnors8Yk1j9GcELHb5ru5ifgG74UchfhqO/8mIFm1
	HxwEXocfNjzlAPLStt/DlAiuUtcKq0za3RvkwBd4QXmSDRWHvSgTMk7Rm/0W+y8rb0RD
	wdBQ==
X-Gm-Message-State: AHPjjUilz9cz6XBQHXh98mhysok0B5pnGKSmZzk1s0+5ElVKDCXKLyyV
	g9X5KSCI+Er8JLvA+KZv/Vc4EA==
X-Google-Smtp-Source: AOwi7QACNx8QqM7EbfNLi5yQHCx7qRRNoKaSR85DI1geEUC2ThP3iv6haqVYgUpJpNm6wGZBPiLikQ==
X-Received: by 10.99.103.2 with SMTP id b2mr9224189pgc.177.1506388667530;
	Mon, 25 Sep 2017 18:17:47 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:41ca:f424:3692:4c93?
	([2601:202:4001:9ea0:41ca:f424:3692:4c93])
	by smtp.gmail.com with ESMTPSA id
	70sm14291144pfh.63.2017.09.25.18.17.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Sep 2017 18:17:46 -0700 (PDT)
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <9b2376cd-8fea-1184-497a-036df4d395ea@gmail.com>
Date: Mon, 25 Sep 2017 18:17:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
Subject: Re: [infra] git domain name updates
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
X-List-Received-Date: Tue, 26 Sep 2017 01:17:49 -0000
X-Groupsio-MsgNum: 38035
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="6bocctDpnou5Nvgo49NKtEQollc1OeWbr"

--6bocctDpnou5Nvgo49NKtEQollc1OeWbr
Content-Type: multipart/mixed; boundary="mnUpFg5dHvWsEpIHOMC4m9M84fuPtXGie";
 protected-headers="v1"
From: akuster808 <akuster808@gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>,
 yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <9b2376cd-8fea-1184-497a-036df4d395ea@gmail.com>
Subject: Re: [yocto] [infra] git domain name updates
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
In-Reply-To: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>

--mnUpFg5dHvWsEpIHOMC4m9M84fuPtXGie
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 09/25/2017 05:17 PM, Michael Halstead wrote:
> Hello,
>
> As Yocto Project continues to grow load on our git server does as
> well. We are going to make a few changes to our git infrastructure to
> allow for more growth.
>
> All read-only git operations should point at git.yoctoproject.org. For
> example poky can be cloned from the following URLs:
>
> git://git.yoctoproject.org/poky
> https://git.yoctoproject.org/git/poky
>
> If you have repositories pointed at www.yoctoproject.org,
> git.pokylinux.org, or any other domain name please update their remotes=

> to git.yoctoproject.org.
>
> Read-write operations via ssh will use a new domain specifically for
> that purpose. I've added push.yoctoproject.org and ra.yoctoproject.org
> (like ra.kernel.org).
>
=C2=A0=C2=A0=C2=A0 Read-write URLs should be updated to the new domain na=
mes. I've
> changed mine like so:
>
>
> git remote set-url origin ssh://git@push.yoctoproject.org/poky-contrib
>
>
will this apply=C2=A0 to the other contrib repos hosted by Yocto?

Is there a policy on pruning old branches in the contrib repos?


> This is all ready to go right now. Please update your remotes.
>
> We will have to make these changes required before we can start to get
> performance benefits from them. I suggest November 1st 2017 but I need
> more feedback before we can set a cut off date.
sounds good to me. Thanks for working on this.

- armin
>
> Thank you,
>



--mnUpFg5dHvWsEpIHOMC4m9M84fuPtXGie--

--6bocctDpnou5Nvgo49NKtEQollc1OeWbr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZyaq5AAoJEEBMUx+8gYD6vwkP/RyW+U/x7rmfsFpz35O6IcO6
4ZXePwUF+59yF95MTfomSJ1BEc13c0Pu91F5s/EdJk8X/KJz6drtLk9hWTTOobPI
zB+hiH/yT6zBYcRlWJHxbeYU/jeWLVaWhJXos5H8qs4vyUBmQ3oXF65nzJK4kcff
hDjop+w+33yHQf2aQQLWuRMI5gpyehzS4QT+pw738ht+kRKCYQYRmWzPz+rMBAld
1H9RChX37YPtb6C/xlEStCoaxRIROClSrMpKULBcQqvbxQAy7CF7zsWV7GQEZHV7
GwIVr7fa/PbGnBFcm9f7ZTd2t1AZYbnz8lqAebki3jeSDOLHbB8017IU4Ak8/tBa
dkLdPJ2A13NbCR/mPR0/R3V5H8LMJ3wNeC673irkg1CLGH3XCMTk9HocF7RGH3D6
kGnS+XMzQ1H3UGX0O42t8AP4vfS1bh0Udeoe8b2EiFKR5ddBR5mlJuyOmUJLZb0C
B6it0ZvrrC6mxSJ63tRvgvPgUFeVO0pnCZwJEzmcruuOe6uBuHCtTdUIl0tjV2PX
9pnXpa7+CReHQNl1u8/iADCxZcozxMYHp1Iyi5RUQb4+EIb83yvyIx2MvELS8lqn
tjL+wWPsc1FfwsfukTxuy+jyWWmgVtvDLXlmCIfk6JMLS8jzfiQZ1qRCRGAHBIqN
qCmMpBbQkHq6fStp6NUE
=VVxC
-----END PGP SIGNATURE-----

--6bocctDpnou5Nvgo49NKtEQollc1OeWbr--
