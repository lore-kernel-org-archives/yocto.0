Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA14BE00E8A; Thu, 21 Apr 2016 10:12:22 -0700 (PDT)
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
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A59DE00E89
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:12:19 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id n3so143918978wmn.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=CgHisQkODTCzUUnaSXc3LnNVTJxVSDThfH271YNZKMY=;
	b=BTz+PSxUY+iz9XMPwCkFuY9EvBZY+0sFHV7AZ7/ZoLTJ04KDKCSo+xKYN1Oz0dusdK
	FZA+3H7ldPqZcpxjTkrmsC+jVQImcel8TSgAUA17Bd8iPcmoZPAGkMOj1YHDHcxckU9Y
	SOv9mVM7FVqIExQbiS5KhJSaESCwavTXdnNtLaVNQN5mjBC4jjLLRZv7ZdGa3XmwmOI7
	E6SMZY3FTwRxc/q9JNuz74Y3qYbG11YkzpPuteowyXge6Br5R6xy/B61xHkm3PyJmili
	hW/QYNuff/YYYuopR3EvpqhdK62tTc0LOaUTdckzTOTicLAnw3Dc5dAPNMWWcO3gP4P1
	4nZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=CgHisQkODTCzUUnaSXc3LnNVTJxVSDThfH271YNZKMY=;
	b=kKNBh29NvjOoOWYavPlpY1a3naR/wCOuDnao0gm9BIHCDg3ZaysQl70OkuBs7Qud/Z
	TN3cl0PFS4tGDhM1qqEgSl5G5SoK+yoDzm9+q+1hbkdTintrNb2Jz+eYvqJqnEtrkE3l
	kB6rJ+X7Fp3dy3Y5iMzNfk92qU0JUsJ1FRlx50xl0pofQA8StSOeHxpPK2HRDxpsx6vv
	KKtGBflNeUY6k1XSo241/R/pS15xrsb1M4AeYKO6akOLusIYi5704JmVAvF0XAf6bygS
	sDL+4x2GOk/OJ9UE6u+REt7NIfqvL0YE9uJnX0uotAakJsuh2cvIqPFpNArPfCrLcOtT
	DR1Q==
X-Gm-Message-State: AOPr4FVnacd8O4hd7PbJF4xVyW4/3Bh9ssfgEc1/UF0cI+siWgadL0bBS1beM8DM2suxXg==
X-Received: by 10.195.13.135 with SMTP id ey7mr15601278wjd.161.1461258738098; 
	Thu, 21 Apr 2016 10:12:18 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id r2sm3804924wjm.8.2016.04.21.10.12.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 10:12:17 -0700 (PDT)
Date: Thu, 21 Apr 2016 19:12:15 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160421171215.GP1588@resin>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
	<CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
	<CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
	<CANwerB0+ScCiSOz2A6ioTXy0B+8SZkQ-qYz6=TiP5iR5DxnGJA@mail.gmail.com>
	<FBBBC78B-8DAC-423E-A79B-5E64072D6EFE@gmail.com>
	<CANwerB05ROkLrQOVDf8--NhPkRUWBCfjq-K=V0Cqi0=u5EqLiQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB05ROkLrQOVDf8--NhPkRUWBCfjq-K=V0Cqi0=u5EqLiQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Make vchostif as shared library
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
X-List-Received-Date: Thu, 21 Apr 2016 17:12:22 -0000
X-Groupsio-MsgNum: 29550
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="movZSYdJ761vCHaE"
Content-Disposition: inline

--movZSYdJ761vCHaE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 16, 2016 at 11:24:01AM +1000, Jonathan Liu wrote:
> Hi Khem,
>
> On 14 April 2016 at 02:36, Khem Raj <raj.khem@gmail.com> wrote:
> > Thats interesting, I will try to reproduce it
>
> I have submitted a patch to the mailing list to bump the omxplayer
> revision which fixes the issue.
>

Cool. I'll take a look on it, test it and merge today.
--
Andrei Gherzan

--movZSYdJ761vCHaE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGQnvAAoJEHO76Gt+erfPfawQALeoFjZ05ivwdsUdbAcVRik6
A1JuyLHWjKBIcVNZ7OSAMVg/K4kdRoTcWbXoaZPdoPomwLOdn3YiJoI/t797mGYz
XpBSAhaBkBQpjvwmxUL1EHcY6k1Ved62AogupNDbPn6+asvtVLmlJfTxJrtUaVlU
Xvro4lszRVTdxSSCdo5PItAfbbn6vJg1UUFCTCvxsWYrvTkSM734nrN6vAP9In76
gmGunOfxFYB8kQUJzxvRg7XU7nCBc6mm/RC52Q7v2S0YwfDk1E5LwyVTEqV4TKlS
YhT4C1DHxCSF6sc83pplRwJS8T6bCl26Sob9R2Clxwnb/pQMwv8t1VWFMrqFsZdh
09i+EwAuRUQzY4cwnmK7XtH7NRh5Z8cq+uQHd+Wpwshm5TBcYBOc+tqoFmcXKt7x
44/t2BITv7Ds8xZIEiACB8on8H+c2rTWRoGjrrDa6S8O6CwCUpmhSFM74zXr1/Z9
mfTDMNMPn/cNyTO79WpMJfJ3YPBMYUgPHsJakMlRt0E43erZaNjUEdnpGlmi+9l3
IOCSYFYetuM23i1RPGx9EXXp7FlV0/5Wse809hjImG34RgXlhfqtoYUXU0fi3b20
yH7mjNNDuQa1+PB1hJYpDgsqBPc4dIdImLVlZeqwDoxSFk6I4SoBAkPtsos3Rfdy
0VP+/U1oeQeYE9DLP580
=SYHR
-----END PGP SIGNATURE-----

--movZSYdJ761vCHaE--
