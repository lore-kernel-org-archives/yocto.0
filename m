Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78EC0E00A1E; Fri, 10 Mar 2017 08:30:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33678E00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:30:16 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id v190so11306833pfb.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version; bh=4vLGVZVm6k45OS26sxrPDuRr2xGIVC08XYQqW+VAwXE=;
	b=ZAmTn0sRzIZNW7s25phhJWHN6jk1u7O1sE/tPiBn7BV4ZIYc+t/+m0sgDL1VLELgIK
	my1NUXLDKnGECOXf/S4yRtYAg5rPJpoIQSer/ZDrbrnlUVwi+Z92nH/x3Rx1QhsCHKGO
	4ESccGo9iWmKRrGW8XA7itapYNsosJjTeKC0GuOl6CG/cOOLdlC73mTjY3iRQJ8z8cPd
	ubvynesR/YHf87hi8+L+C+yhqvDmoEbtrPZCFyahWVdNQ8GEBGf48jmQmeYLAgMkq+yF
	K54bRoFFMEAVUr5ctz5MFsYPMd80xmEb443g5A6QKwMH1l22Sr0chxAOTRdFBeKnh9ip
	8Leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version;
	bh=4vLGVZVm6k45OS26sxrPDuRr2xGIVC08XYQqW+VAwXE=;
	b=YYTMyQAj5RbY3+a1LdSN56nIphVmMQthQr7q4rlZp4EONjiEkkSWalDXmvfeOLOvq8
	rqSfbBeHdExzG3sJK0p50i8QoBIZtO14pL3/lgdj0dbY+LKTh0TE5NYCNyqpdsKPxSH7
	JFrzDHc0SCCrMUwoOlZ3bhtmEUKwmPQ0NGZXS4nJa4qAbE8SN/bV6e4kj/HRC6cWnLS3
	G9yuJcgHc+yooqW2gLnLF8eG9bKdDKCl1u2yDcz2CTPCIaxueQrkcbPI2wfJS9UKHb9k
	DWk1oVnjzru/JIjhNirpMDcpyXZRglqHuP/8aYLIeh/SngsXFPC2POnk4SWgzq2sVBXY
	eaIg==
X-Gm-Message-State: AMke39lkXrvsl+a1RXpkLqtm+7Uvciajr/zNG64YJn/+KB/rIXt5oh/s1norSMHZNgOF1A==
X-Received: by 10.99.151.18 with SMTP id n18mr20776039pge.183.1489163416392;
	Fri, 10 Mar 2017 08:30:16 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	67sm19556247pfd.120.2017.03.10.08.30.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 08:30:15 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Mar 2017 08:30:13 -0800
Message-ID: <3585477.Pl9C8lrLdl@rjs-zotac.streifs.net>
In-Reply-To: <CAJTo0LYQ=h1TdU4NBdF_vAVA+ihhNL7nBmYq9244H=4uKB-hrA@mail.gmail.com>
References: <d9a0d51f-222e-0320-2e9d-57451b5a5c42@mlbassoc.com>
	<CAJTo0LYQ=h1TdU4NBdF_vAVA+ihhNL7nBmYq9244H=4uKB-hrA@mail.gmail.com>
MIME-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: What happened to 'depexp'?
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
X-List-Received-Date: Fri, 10 Mar 2017 16:30:18 -0000
X-Groupsio-MsgNum: 34970
Content-Type: multipart/signed; boundary="nextPart5002950.1niHMRiddN";
	micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5002950.1niHMRiddN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, March 10, 2017 2:46:55 AM PST Burton, Ross wrote:
> On 10 March 2017 at 10:45, Gary Thomas <gary@mlbassoc.com> wrote:
> > What happened to 'depexp'?  Is 'taskexp' supposed to be the replacement?
> 
> Yes.
> 
> depexp was great at leaving things out, whereas taskexp shows everything.
> 
> It's more, but it's not missing bits.

While I can concur that it is good to have more functionality, why was it 
deemed necessary to entirely deprecate 'depexp'? I think now that the Yocto 
Project is maturing, it would be good to pay more attention to retaining 
backwards compatibility.

I may have missed it, but was there a discussion on the mailing lists about 
deprecating and replacing 'depexp'?

Cheers,



-- 
Rudolf J Streif

--nextPart5002950.1niHMRiddN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJYwtSVAAoJEIZ1K5Tj0cm6/jcIAJwkZBPk4zXHiDZaoWfJfx5F
1hqyh2eUVhREgojA8eZcbGp5NoVTC5Jl1UAp16ETcR0xx6mEs8G0uoCVrWHZwcgU
ihVsIXISuvBRsya3tkzSRz6ihpcS1FhT/p9XCjnw7wlaCrlbT3QLwfoWVhJRJQ5T
MqkVxB9G4IIArBJB/ZkURQgfgfaEYRfdDpN4/OpPWZw4IZuFL0JjEn6IkmwQEj9P
j+EGTQgODZnC9vG1yXKpUq6IKewZTVUyVxJ2/MnhTNs+wHNTLvvDIOYzaf1oXs5p
9Pqj5NhIL96J2PUOmLkZjrZM4j16f4kJPluCZNl72B9C3QeU1rmm/JyjlId6uYA=
=QwhD
-----END PGP SIGNATURE-----

--nextPart5002950.1niHMRiddN--
