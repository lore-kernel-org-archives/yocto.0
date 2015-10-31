Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05AAAE00B88; Fri, 30 Oct 2015 17:53:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D93A2E00B5D
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 17:52:56 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so88611137pad.1
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 17:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8V2h9ZJzuGrZ4ocTfC2+S7IdSygju6cJ3LaL46h9O5g=;
	b=u2fcwKir1fBz+u0ZHziD1Lcgy/MPB6hf0i7WZBHqzVudpVnfxQI18MIVlob7RToMeN
	iu9jUedm+IAst6nSy62TbLI5oZwbzEORy8aloPhjwYlT6gMA5HU2/yveHnYhW7m/cRqw
	BP9bQui39JHEeqDMVkMWpR8LDvVp1lmkJt4df/+ia3Ow1y5ZOsGvuV9wfSQJEyGoGX0D
	hlCZJbEduQngcpi5px71qXXIxcIMQ8ABNljeAfDN8uekPwJ0CpK+AL8mQ2lzKH9Djw4A
	ZbcHWd61zfn9VnwbBjiVSIeeR4ZlL/KtO0W06QJ3MKH5JjlA+qP/6u0pPiDHoJZ+btVH
	MoSQ==
X-Received: by 10.68.65.67 with SMTP id v3mr12112106pbs.69.1446252776126;
	Fri, 30 Oct 2015 17:52:56 -0700 (PDT)
Received: from ?IPv6:2601:641:c000:1d0:9139:22be:56a:125d?
	([2601:641:c000:1d0:9139:22be:56a:125d])
	by smtp.gmail.com with ESMTPSA id
	lo9sm10451668pab.19.2015.10.30.17.52.54
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 30 Oct 2015 17:52:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.5\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20151024201300.GG4459@resin>
Date: Fri, 30 Oct 2015 17:52:52 -0700
Message-Id: <45191C4C-00D7-484A-AFEF-D7DBFD2908DB@gmail.com>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
	<20151024201300.GG4459@resin>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3096.5)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 31 Oct 2015 00:53:02 -0000
X-Groupsio-MsgNum: 27106
Content-Type: multipart/signed;
	boundary="Apple-Mail=_81B427FD-9B7A-4FD5-BB8A-B8364964B994";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_81B427FD-9B7A-4FD5-BB8A-B8364964B994
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Andrei

good work.

> On Oct 24, 2015, at 1:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Sat, Oct 24, 2015 at 09:58:42PM +0200, Nicolas Aguirre wrote:
>> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
>>> Hi all,
>>>=20
>>=20
>> Hi Andrei,
>>=20
>>> Have a C.H.I.P. 9$ computer? It works with Yocto now.
>>>=20
>>> =
http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
>>>=20
>> Good job.
>> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you =
think ?
>>=20
>> https://github.com/linux-sunxi/meta-sunxi
>>=20
>=20
> Well. Temporary it is a separate layer. And this is mainly because of =
the
> overhead you need for flashing the board. So I do see a benefit in =
keeping it
> separately. We will see in time.

what does board flashing has to do with layer infrastructure ?
when creating a new layer all we should think that it should make it =
easy for end user
to use the ecosystem and reduce confusion. That also might mean that you =
may have different layers
for chips coming from  same SOC vendor but it is contextual, e.g. if you =
are using same
u-boot and kernel trees as rest of sunxi then you better align it in =
sunxi layer e.g.

>=20
> Thanks for feedback.
>=20
> --
> Andrei Gherzan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_81B427FD-9B7A-4FD5-BB8A-B8364964B994
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlY0EOgACgkQuwUzVZGdMxQr9ACfRZMLfdz8kDUCOhzo3zycy1A+
Kr8AnRUN2/WrLwCPnD4OFtXZyqeiZI6/
=REcU
-----END PGP SIGNATURE-----

--Apple-Mail=_81B427FD-9B7A-4FD5-BB8A-B8364964B994--
