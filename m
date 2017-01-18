Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C13FE009D4; Wed, 18 Jan 2017 08:30:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C3F2E009CD
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:30:14 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id d140so5259150wmd.2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=LgPcFMXfAyD8zi8Mx+bgQsN5l/OqwjcQP7+r32A8Yzw=;
	b=I7Dz9UPR8XvY/uWOELbSZuj0tBfvSNcU0ZxIOAeVa7vozorSxVaaZX2hawCI+DaliP
	tzc+uZaCx9qN/6IrEgFRxtfGYvhHVMFg2K16J9po/62f0Smamr8gsAPYZe3qev7NpG5u
	kBEE9tniqI1HwEoWW+UxIFCpuc0NQ6oz5mnbAfuPUtBnGtyyd0djHVmLmZK/hzVx6HXb
	RFd+lUkh5bkQr1BL2zJbfdAbOSdeV4GDVC6bPUM+RQBR7i3g+YhX1ew67XgEEAiVhB1E
	Z3r1WatkqQGthrLnq4kR9mqm0FT2Wg0RDFlvDIZ4rCurUE0iCP0tdNtZuy6yTHk3fzdP
	xppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LgPcFMXfAyD8zi8Mx+bgQsN5l/OqwjcQP7+r32A8Yzw=;
	b=jY5+7/iO3wieybK7v6qZ0Bg8VX+H1ZKOjQ5UtXlgj2tntWAphV05wFCJ0VmeSmAN/O
	e+kAfO2oldWGwlxbDoj9B5TXG2UvEUqW/SBrHss3DSopnP4OSW9X4651oE3Vb468Ysmp
	QPij9TTslumfIuwjKCpk9RgwZMyPQ1aa+ofs0UwSkTDKeWzF1tk/XWCF4dfJ8+YQg7Ai
	gW0Wh2ButxANUWMHrNFPoToU/cc/0mQzlDUwqm59nBGs/uol1a/0qvXXEGwLm7MoO+xB
	AVJopjO04t3ExCwwMUsGBW3zb42P1d9nDTxyKtvYRisr+HrVIRwvb41ElTiUGVd47W6I
	J8lA==
X-Gm-Message-State: AIkVDXL63T93NXRmRw4epjKTpM90107dNojW2uj3mJGYwOu4ttZiPnDsq/sptMxqWdVs5Q==
X-Received: by 10.28.143.5 with SMTP id r5mr22046991wmd.141.1484757013741;
	Wed, 18 Jan 2017 08:30:13 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id r6sm5949507wmd.4.2017.01.18.08.30.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 08:30:13 -0800 (PST)
Date: Wed, 18 Jan 2017 16:30:08 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Leon Woestenberg <leon@sidebranch.com>
Message-ID: <20170118163008.GG14533@carbonA>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
	<E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
	<20170118154024.GA31825@carbonA>
	<CAMjhiJiDszPCeLvBn1Hoopu99Ot5BGMm-7pFRUWv+TpQka9Cqg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMjhiJiDszPCeLvBn1Hoopu99Ot5BGMm-7pFRUWv+TpQka9Cqg@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: Yocto List <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Wed, 18 Jan 2017 16:30:18 -0000
X-Groupsio-MsgNum: 33913
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aFi3jz1oiPowsTUB"
Content-Disposition: inline

--aFi3jz1oiPowsTUB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 18, 2017 at 05:24:05PM +0100, Leon Woestenberg wrote:
> On Wed, Jan 18, 2017 at 4:40 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> >
> > Based we should only keep 4.4 and 4.10 (or 4.9).
> >
> > Ane comments before I proceed? :)
> >
> >
> I think keeping 4.9 (Long Term Support kernel) for sure.

Is it?
https://www.kernel.org/category/releases.html

>
>  Regards,
>
> Leon.

--
Andrei Gherzan

--aFi3jz1oiPowsTUB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/mBAACgkQc7voa356
t8+KqxAAt072kskTW8u8nkW+QJlBxff2MX1shnkFCMAhD55Kh+2jVcyyeRSEsMRv
/bkf0VFUjkfs/Eaf7ohpZEG+094m7S4p2SrqbtAo4pd8s1c3TZwtPR6JR66zOhEx
F0k+mb/6B80kWDub6TDBkWHmlYOXetelTTzrYt9nXHghcRj9UBcwc7S+Z7UtCZdo
H1n8/ug5BmmxXSWaDeBkT7cy8BDVQMEH+fe2x/5rUsGTtl+AzGhu9bjX7+ebEHV6
ALtf3PoLQVCBKyKIy1KDQ1zFNMq3IxhTqfyhxXQa5kcnVLo4FIAa8gDJqFVj8MLq
zeLKB8YbZmpQxWevjs4g+g72wftiurged0ExtE5US2mHuG+3vOTOOuzmqwLYjZTF
rXxukfJM7fsXeBzeHa8GtJFZlM2C4BmS+1zO2gCGXJEW86jf2tpxFXB3ekrz8Kff
Yf7ATbMVwtGnM4mzRtUYkmXBDgQ2OXvJTOt8VsjTYPIBiH0wpxrsTC6Ta/KpCp0+
A1Si/uuA0sVjePnoBFV2V+tSuu+4IqWQNc07zah0QfoNA38YuyA/ylT+4uA3mdMB
p4RsrAdzAmQsxDw9IVY6N7GOjZFlcyl2Ka9dwFiM58r3z+yO27mn8GRonBTTDPir
eQGgvrBIb/JU6AHDHhnqBc2NpYP2Jkrdy0f1+OkYoxAZwktZ9fA=
=pSFh
-----END PGP SIGNATURE-----

--aFi3jz1oiPowsTUB--
