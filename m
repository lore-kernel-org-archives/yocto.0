Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 634F8E0097C; Wed,  5 Apr 2017 08:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63C14E00655
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 08:34:14 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id v2so1493083lfi.2
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 08:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bKHEdmcTuHHO574mFHcOANypZr85JKFBqIsHo0Wpcqs=;
	b=P7WJWNXCI/DqReA6ZvlHT8XGCbdf8poctOs8/ikSGGlk9QFBG1RI6LlSztbUu20Pmk
	WWylwoqaNf8G4qfnwA4mfU9k9MGCPGUGp+H796JBdsqAaGacLKVpDDgwkMmVpxetwHD5
	gJKAe5BqLkhyu7lq7NhsFb/5wb9ye9E/4f/4D0Vy6qhPkLMtBgbx7iOFnP8hfryvDD4X
	dtYL5PHlTdGNwwlSCGTlslC+SW30VF039MbnSN1KNq0cgUu3cSMv5zODPIaguX35e3Q8
	3u82RF2BZDlBDrMeg6GAhWjSieeD8+qMD6O+gqbjU3CcLRyz+J4DstHFiU8/61OiFFx0
	6ylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bKHEdmcTuHHO574mFHcOANypZr85JKFBqIsHo0Wpcqs=;
	b=ElE0zDtMBCjB4uwH6Eka4/06aoj5qCElR4kpT/0OZbxQC2XF/gEzjKGHMmmR6cZQoX
	C0UWnhQF3RQvnbkLzHKWDs+JwCPEdRbpuSj/6CWJgUqkO8UlUe23YZeX3u1d6aH16cgw
	rAWOnPFYrPIQsoQYNc2QbCuQFEYTeptVDzJwHkwoohosYLc0LjtdQHvRopijb/D1Mtle
	KlFK7NggKQvyRL7GSMzeqUvP8yUPkRwGsLpkt6twmeRFRidmzrynPFAeKDbTBlgpsbam
	cANghiknVgNss1J7HaRApwgqdy2NcC9jkP25ZfIa0urHXuwMVIk7GLkoO9m3pNuHPZmP
	t/7A==
X-Gm-Message-State: AFeK/H0351TSqmfi9n7CF9lBdOFDY9ZHy8KvL/AKeZtyL7UQH8aU5iEG
	t7tLtDZR14yPYA==
X-Received: by 10.28.167.203 with SMTP id q194mr19664947wme.111.1491406454001; 
	Wed, 05 Apr 2017 08:34:14 -0700 (PDT)
Received: from carbonA (host109-159-26-35.range109-159.btcentralplus.com.
	[109.159.26.35]) by smtp.gmail.com with ESMTPSA id
	189sm22856566wmm.31.2017.04.05.08.34.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Apr 2017 08:34:12 -0700 (PDT)
Date: Wed, 5 Apr 2017 16:34:10 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170405153410.GL4938@carbonA>
References: <20170324174916.17866-1-twoerner@gmail.com>
	<CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
	<9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
	<CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
	<DD1D5255-B0E1-49B7-B4D6-06ABDC177B11@gherzan.com>
	<CAHUNapQGd5y4n-tmkcug8tAWbiNmE18kFP2=GGaN7mLATvyfzA@mail.gmail.com>
	<CAHUNapQW_oh0mxcXmD5He6VTcHmG9_88=+CaEx7gOz7VBdws7Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapQW_oh0mxcXmD5He6VTcHmG9_88=+CaEx7gOz7VBdws7Q@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: Andrei Gherzan <andrei@gherzan.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: waveshare screen support
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
X-List-Received-Date: Wed, 05 Apr 2017 15:34:18 -0000
X-Groupsio-MsgNum: 35427
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CqfQkoYPE/jGoa5Q"
Content-Disposition: inline

--CqfQkoYPE/jGoa5Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 04, 2017 at 06:10:57PM -0400, Trevor Woerner wrote:
> I see what happened... knowing that I needed those lines set, my
> bbappend didn't have the "if" line, it simply applied the lines
> without the check. The check was added when pushing upstream just in
> case somebody didn't want those lines in their config :-) I should
> have tested more extensively after adding the line.
>
> Sorry!

It happens. Don't worry about it.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--CqfQkoYPE/jGoa5Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljlDnIACgkQJrqo2vax
FPYYdQ//UxF3GRW0UqX8c+zR/6Wgmr8IDkorbkKJ1lS780pWs0qeNIanXApOSohy
0r8bUoaHPbEDGSDhJaKOE6355WSZL0hdTG8BqGsvMbgi3e3r1NxqvYFm0XybKfBa
/MPcGCHICkO+zWZ3DcNfxg2buQi4/fszDHFOj86DPaqAX8Kfu83wl9neebpnkcNm
AKH4BOwmKYmS56TpSw1Vj9NC71Za9ywMwBgr5SAv1Bj1WByWJmCfIBPodnblydDo
PHsmfpNfC21gWL06AAkKDwaozYlHSl17M2gFoUSeIGXxM29VXEU19BurNuH/kjf8
9Dko1bM0I9Th48YkNti1cRh33B4voxlTh42+f9iY/vZTcUL9f737LpdnYBrxWVMN
P4wke3uUuI0fIMHDIBB1tjL+DSS6zHbtKnKa4sPUQo5MVdH5q5gBYHsk+VnsGWp6
6ZW5gA6pLKCGzUq4XT+Nq323rccpJrN5P7AI3nspcrMPUXxW5McD+ZqVMc4JmW4H
14uzAgxQ/Ezkd7jOwFwlZTaqI1woCZ5Hl1sbAB0K0KTk7a5h2jykioLfgIANfBIp
TJaCnqaq9xYYfx0AoD/H1HyzXGrxrRegEP664y3eFoHcBflcNrzdsS5l28pSp3EV
A3HYEe9sH/7tAi0PG1Aq3FOZq62zxLDwKMBit8T5E2UI8M6yjkc=
=vPro
-----END PGP SIGNATURE-----

--CqfQkoYPE/jGoa5Q--
