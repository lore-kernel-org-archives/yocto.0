Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1740FE00972; Wed,  3 May 2017 10:54:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE300E0094C
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 10:54:15 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id m91so11150132qte.3
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 10:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=HYrQb/Rs2vixCRnSbcckOUOjpzoFtGdJabE4zo6pYDk=;
	b=LAxd2hmik48Jb13OJF9nycb6URCXMXGJrM22zkO6M9sGriv+WBmiNfxAheboH1K2EH
	RBzlilOELpQyvrwU2qH/wXZG7Yjz6mue8VUZrpYO+zd+lM3rPVDyklUUVgwH9jgQCvHA
	twjBuoLuYFOPP8RV50XW4R48mxwgKUPFiaa0xdL3ByHc/+3T+PAX+CApvm/11vZWopnA
	cUxdQ+Am1o4DFyz1MAZEtqMVpjHD513yzQlVGlROsh758KgazYgbpnCCsGo//5VFol6n
	1V5i6wLUg/7rauIl/vnExaAV0KloCdxHQVuP+hMLDZZdI0nm8+yDKN1X7xKggRLWHj3O
	BnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=HYrQb/Rs2vixCRnSbcckOUOjpzoFtGdJabE4zo6pYDk=;
	b=CojXL4JZ25T9Ng48cFHteMW9ubMy+q3zk3FJwkrXyy8D/KrEOFD5EwOI0bhH53FInj
	5cIACEzAyLlDri3zi0DmoTizxtcB8NAuiYd1q+WtdRs/aoaOsSRrYmgCuT/bfOSY8FOC
	SUfdWYyqJfofF4bUX95Kdc1o7ZZttBgZ6Rx2wvrNkqbP0W92ldwld/G683L1CSOfNCIS
	EhLRbEhTkLPZnnVaQVdt4RYpQFEb1O3/B17CtL2SN2fPlP9H3gd7Ooh0ex200Jblk+RD
	vPtg0T3YvlNJjgThsqvjmNQviwqL8JUePge1GnqvJqjkRMomYSPXu/kb9FWT+7A5GKqG
	hQEQ==
X-Gm-Message-State: AN3rC/47L2R8LKlnU3hyIYgScGh8vUYezGf8UQkxvOpnO2eD8qG+Jl3E
	1lj9vFmG4lzoIu3UDGAVwmDPu9JFXA==
X-Received: by 10.237.60.77 with SMTP id u13mr31808264qte.267.1493834054679;
	Wed, 03 May 2017 10:54:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Wed, 3 May 2017 10:54:14 -0700 (PDT)
In-Reply-To: <CALBpLHZ4h--81Q6J7c_OfX8tSaO9coSa4H4KRohjFDL42Pq=6A@mail.gmail.com>
References: <CALBpLHZ4h--81Q6J7c_OfX8tSaO9coSa4H4KRohjFDL42Pq=6A@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 3 May 2017 18:54:14 +0100
Message-ID: <CAPyrkgyXcQ+sW84Upjsm9PBhiBfvfbSMkMz2FLieRPET=ODBbg@mail.gmail.com>
To: windswept321 <windswept321@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Beginner Issues When Adding Layers / Recipes
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
X-List-Received-Date: Wed, 03 May 2017 17:54:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 3, 2017 at 10:58 AM, windswept321 <windswept321@gmail.com> wrot=
e:
> Hi List,
>
>
> I have been trying to get a build up and running for the past couple of d=
ays
> following the latest official quick-start guide with no success (Debian 8=
 =E2=80=94>
> Debian 7 =E2=80=94> Ubuntu LTS=E2=80=A6)


>
> bb.data_smart.ExpansionError: Failure expanding variable PYPI_SRC_URI,
> expression was ${@pypi_src_uri(d)} which triggered exception TypeError:
> getVar() missing 1 required positional argument: 'expand'
>
>

This looks like the error I'd expect when mixing an older branch of
poky with the master branch of meta-openembedded or meta-amd. Could
you ensure that all git repositories are checked out at the same
branch (eg. morty) and then re-try. If you still have issues after
that could you post the commit hashes for each repository.

Thanks,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

