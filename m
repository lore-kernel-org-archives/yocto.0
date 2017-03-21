Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D9E7E00A0A; Tue, 21 Mar 2017 09:36:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EEC5E00992
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:36:26 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id u132so4000069wmg.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+YPHHPyBk5ZUco3/Tl/nTeYwhWX0ZRRuv+FoThY3wOM=;
	b=nqUIZnb6oHNxcH/Y3fhcZr/vfR9GYSR5RRz7NdtBs5dieNledmjLxkm00EXF5LTfJ6
	7y8j2UwjMccloZ+k2L1P3ubdMxIT4oLw+UicfbGYqZYafF0utTRsCDxePXYDufVttGbM
	1BNjnexfCgdq4Mt/MSnEaASbyu4qpx8nqdIicnwO9XGIriZb3YV8I+yhMPGjON26CG0n
	ufGUDA7PujBCCtIqGzHNknVaaOqPfMeq9woH9vLv799lDaG8VvQ8UunSb/Wjfz7Jz+xd
	0INB3Et7fNo2KPascBjZ7OIHe5GgzrxWZC0/KMycB6y40anUjWtwwM10mUklEhQrD/qw
	C1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+YPHHPyBk5ZUco3/Tl/nTeYwhWX0ZRRuv+FoThY3wOM=;
	b=jFxiXhASUPGCRqVrvh59G/ZoTpXJZqNl0B9XYepiWvQQLr1ZZMY172bTb47q+TU+0c
	r85e3Te0e2T7Mhod43Y+ci4d3kdT+lUK2LaHpYOalJiG50ClVFAoCZp5+mDMiZ/XjX1/
	YNmtQhZmwibbIATYVfeNrqBc7+Jyta9ZiGmm3+rlFsppsc9g70hAO8T+uOHXmgyLzWQI
	spfm2d5asrfvvfcrg4vy8koRPkcq8qJaZFpQpiQ1HCNBN93v5K4EzrM8K5ydm5txwFAV
	isMCYiAfxdaOGvRK1BGcWjaFmW2OiSYndoGrQ2vjfXFG9dBUOxXMUR8f0nVGazB/JfVF
	/HyA==
X-Gm-Message-State: AFeK/H1R2ntN4ZPSVEYdZQXPdDlpsFVpJ1VrLQBD91tWo9QErCG9+KAJVK6yZa32Xavn8w==
X-Received: by 10.28.195.214 with SMTP id t205mr3444711wmf.104.1490114185671; 
	Tue, 21 Mar 2017 09:36:25 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	53sm25602654wrt.52.2017.03.21.09.36.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:36:24 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:36:22 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170321163622.GC21801@carbonA>
References: <20170315134553.14210-1-twoerner@gmail.com>
	<20170315143024.5da985c5@host0.betafive.co.uk>
	<CAHUNapS8aOsG53sV1RmV4NgOk9WwLO3Ci5YyLRKqrnRsOLyb_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapS8aOsG53sV1RmV4NgOk9WwLO3Ci5YyLRKqrnRsOLyb_Q@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] userland_git.bb: remove libgl RPROVIDES
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
X-List-Received-Date: Tue, 21 Mar 2017 16:36:28 -0000
X-Groupsio-MsgNum: 35151
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NU0Ex4SbNnrxsi6C"
Content-Disposition: inline

--NU0Ex4SbNnrxsi6C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 15, 2017 at 01:02:37PM -0400, Trevor Woerner wrote:
> On Wed, Mar 15, 2017 at 10:30 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> > I think Khem already has a similar patch staged for this:
> > https://github.com/kraj/meta-raspberrypi/commit/e070005aa8251c81323b393d49fd87f92e74cae1
>
>
> Oops! thanks :-)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

As mentioned, a similar patches was included in Khem's PR which made it
in master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--NU0Ex4SbNnrxsi6C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRVoYACgkQJrqo2vax
FPYFFw//RidihuDFOP/WTiP8ePGMZbYxBQzQhcl/1RfxwsAELnYnu5FJmduG5Kxz
aFthtLiheGWkpOMw7QWA49cDA0v9bedlahj7ooxRV373oc97009d4zesRpx1qOrW
CXOhjcqukDXxzfFtHLFapEc8tO4w4fHy1MDnVpEt642zUY0HjaiBjUrgsopbNKs6
HcMyM4J3o8DsL0UzfUF2Bxwl7ufTVVbibwAi711o/N2qt9raxAYXxodbFLfe3wX8
VmCoKemyyr5FajfrDn14o7CJuVgFUheAv0dtmCTEIBwRvbL050bQkQkzN8PrbHL5
9zGT8ZxZ94WXSwmyN+iieDxLuEK+AGehDhsESw0nUPBcfYgXTHfHwEusVqX92DtE
xFZs4L6AkNGaULU8jG6y1rie63UECpETNW9tNiydMDVuDGi+eashc7hKC14pR/fu
p/OH5r2lVG9Q1xAA+KS5Bui6F/zX6yBflKJ+cGCszrngG0tHe15RG8NumEdXkaYt
HbLDf/4Fp4rRD+HsjD2C5lZHRhVDe/6mZEY7co3uLry404mPL3PKKMgYcsC97QNL
0bRamhv9LSJVgGKlX4YynNm1uyZfdwaL+aPsgMud/6hPr4pzHlI2NE2s/AbRpEt7
5JZtfBgl3i9959GfslmbfqgdiTLbHO5RiriBtLhtgQ3f5/+PGKI=
=XcY3
-----END PGP SIGNATURE-----

--NU0Ex4SbNnrxsi6C--
