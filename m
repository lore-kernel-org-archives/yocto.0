Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72F4CE00CC8; Sat, 21 Jul 2018 13:42:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-07v.sys.comcast.net
	(resqmta-ch2-07v.sys.comcast.net [69.252.207.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A4B6E0055C
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 13:42:26 -0700 (PDT)
Received: from resomta-ch2-09v.sys.comcast.net ([69.252.207.105])
	by resqmta-ch2-07v.sys.comcast.net with ESMTP
	id gyPsfiHPCa4FQgyhtf5MoT; Sat, 21 Jul 2018 20:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1532205745;
	bh=+8Nq92V8yWRfWSsKNJ/s7g5vDzusPvxGMF9pqJyLsgE=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=bn7cqz6HfnnxB5Q++O7rNdnGhFFECfHNy3X/co+ij6OKc7ePBseO2oxsmRiItVyNj
	u9jdxieC7WoB7/3wqWMH4kd9MeXZxxW36jgujmFSlGbW6zpANRZYl7bQA/h8lPhTIX
	NsHgwoW/a6NcR83pZExVizhdsadgM/Ulqx2GARDnl/hl5YXbqARY4mFOzW8ll63J8O
	j6M07Gyr/RfuJd6ijczejwip0FI7FSlYVLucm9F79fuF6/47IpWZqPs9DSCKuR7o6N
	5/n/Ka+TRZ5MCsH4Rmkc4qnSWOjrsU997Pdu5feAGxPbbgBPo5TnSpTB0cvg4v/4xa
	5PO10zea8191A==
Received: from [IPv6:2601:18f:880:9aeb:20fa:2a0f:a970:9f40]
	([IPv6:2601:18f:880:9aeb:20fa:2a0f:a970:9f40])
	by resomta-ch2-09v.sys.comcast.net with ESMTPSA
	id gyhsfALdSBRmGgyhsfxV49; Sat, 21 Jul 2018 20:42:25 +0000
Mime-Version: 1.0 (Mac OS X Mail 11.4 \(3445.8.2\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
Date: Sat, 21 Jul 2018 16:42:45 -0400
Message-Id: <48A03EA7-A9B1-4249-8AF8-91EC5BA1CD38@comcast.net>
References: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
	<CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3445.8.2)
X-CMAE-Envelope: MS4wfOAyzI5NoZuF4bvFEu7euF8a0jGTO/hdBWy1tj7HMwjrmWtR4Rd+T+i0NhEo9cQ0W2oHRhz1qHZHaTN2oAgYWDSrBx3mBp/9tvuQP95WPb5ary8vhlHY
	Gm21/EtdFYbD5zoaqWaBBQOQas7GvkViCrXvcUh757W16WqiFVi7Pt+U6wgcz699FtsJyk82JMngVNOCJH+owHNbDDOI0aUKTMP5z7vKhsdJD6m9h98lrGVF
	P7vGuamvN/pvkBsZrZmmFamus/y8hqsemKQ9uRAzLynHFHZpxF0q8YqeGr27ZllQ19IxwAHXOiOgVjIx71PL+A==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: SDK and out of tree modules
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
X-List-Received-Date: Sat, 21 Jul 2018 20:42:28 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

No, just the standard SDK.  I was having issues building the eSDK back =
when we used pyro and never fully figured it out=E2=80=A6 but we have =
since upgraded to rocko.  I should revisit the eSDK and see if it works =
for me now or find the root cause since it sounds useful.

Thanks, Khem.

=E2=80=94Russ


> On Jul 21, 2018, at 1:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson =
<bluehills7@comcast.net> wrote:
>>=20
>> Hello,
>>=20
>> I have been building some modules using the SDK for a while now.  =
This is mostly for development flow purposes but we have had a few =
customers doing this as well.  To get this to work we always need to run =
=E2=80=9Cmake silentoldconfig scripts=E2=80=9D inside the RFS of the SDK =
on the build host.  Many folks forget to do this this and thus many, =
many questions come my way about the SDK being broken and they can=E2=80=99=
t build their modules (not all users are kernel experts or even =
intermediates=E2=80=A6 they just want to apply a patch and quickly move =
on to their app).  Is there a way to do this auto-magically during the =
installation of the SDK by adding some type of scripts etc=E2=80=A6 to =
the recipe?  I assume it needs to be done at install time since while =
the build host is x86=E2=80=A6 the exact linux distro is not known until =
then (or does that matter?).
>>=20
>=20
> are you using extensible SDK ? in that case I think do_make_scripts
> from module-base.bbclass should be helpful
>=20
>> =E2=80=94Russ
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


