Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFE96E00C4B; Fri, 28 Oct 2016 10:54:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9327E00C20
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 10:54:37 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id u84so1833997pfj.1
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 10:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=OKhjhc3r8TFGXOsJcDQWpNbqPIr3f42/VRICzxb1D1M=;
	b=es2NpllZXbOksax+GSsRu3D73fCdCK8cpAiP7d059BY46FoLVekEb4Kl4RQQ3zLenW
	O0nmg+CO+hI/yMnV6ywym2epTD1DOPewzdyN2T/FPUA/8h/F1jA9NfkZZB8IAW3frlV0
	rZHHiUCX6khdHOwPafM8zsq/j7omDd9Eid6AjSd1fweN6v9JYqayzvF7avPk1gJUZJCr
	zVuLWvs5FrmTKLkP5xuhgFYc0gSTi5A4hyx5h8fhrBC1SzSwfsl81oUgyXsmWk9M2+XJ
	srH9I3fHqa4jqAVEgou/I0r8AJy9u74LdNZgUmkPUtGZYVGgt9nbgZJiHmvdSFznlFli
	ho0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=OKhjhc3r8TFGXOsJcDQWpNbqPIr3f42/VRICzxb1D1M=;
	b=YMsSAs0IZProy31SZWJUOl1MSxyN8VMxZsJRoD4reV5UD1jrmIepTT6vkzrXv4vK1O
	wvBUgxxz9SElWb+Rbeu78RjrYYOsRqIISDCpCZBPA1h8hg7JPJDE8uuSGN/d9ErzZcJg
	D9wHnVDQ8QdokjKTdvEasGDrs0IIesRueQn2GR6VLCOmXnxscIB7Exry0aSW+fM2/VPo
	W4FYKzI5wX1g3p+mKUim2Frr9VB31eS+Sh1hHn1I7MM1nNdMPSN5htsm4bcDprVxefsW
	zj9o8XS3gKhEtSywuQhBd6mZvvAku4mQ+FZQAo2B0beukn7SLNsjlhp9wqBNSgj4REND
	0ssw==
X-Gm-Message-State: ABUngvfgLiN6Ox597XeKlZRI068WpjoXFSvOSXsMVoFbx8kFASn7VXzlHiOqpJl60Z3nBQ==
X-Received: by 10.99.129.200 with SMTP id t191mr22356401pgd.180.1477677277612; 
	Fri, 28 Oct 2016 10:54:37 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:3551:a82d:200e:cc39?
	([2601:646:8882:b8c:3551:a82d:200e:cc39])
	by smtp.gmail.com with ESMTPSA id
	z87sm20354763pfk.67.2016.10.28.10.54.36
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 28 Oct 2016 10:54:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <a591d19f-7aac-c3f0-856c-3186d618efeb@gmail.com>
Date: Fri, 28 Oct 2016 10:54:31 -0700
Message-Id: <9B58E66E-926B-49F6-AB9F-43C24F45C0CC@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
	<1477494038-2895-2-git-send-email-akuster808@gmail.com>
	<1477552947.2887.63.camel@intel.com>
	<92CF3B90-4DED-4513-BDD0-9BB116E476B8@gmail.com>
	<1477653625.13356.24.camel@intel.com>
	<a591d19f-7aac-c3f0-856c-3186d618efeb@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] smack kernel: add smack kernel config fragments
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
X-List-Received-Date: Fri, 28 Oct 2016 17:54:41 -0000
X-Groupsio-MsgNum: 32678
Content-Type: multipart/signed;
	boundary="Apple-Mail=_487D78E8-DC2C-44BE-B23E-6D3D05AC9DC4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_487D78E8-DC2C-44BE-B23E-6D3D05AC9DC4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 28, 2016, at 8:41 AM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
> On 10/28/2016 04:20 AM, Patrick Ohly wrote:
>> On Thu, 2016-10-27 at 19:32 -0700, Khem Raj wrote:
>>>> On Oct 27, 2016, at 12:22 AM, Patrick Ohly <patrick.ohly@intel.com> =
wrote:
>>>> Can you say a bit more about your plans regarding Smack support in
>>>> meta-security? A recipe for the userspace tool and the kernel =
config is
>>>> a start, but for a fully functional Smack-enabled image, the rootfs =
also
>>>> needs to be set up a bit differently.
>>> FWIW meta-security seems to be right place for smack related infra.
>> I don't disagree :-) But it would be good to know more about the rest =
of
>> the infrastructure before adding (or reviewing) bits and pieces that =
by
>> themselves don't do much.
> I start of with basic support and refine over time.  Your statement =
can apply for many components within meta-secuirty. I recently started =
adding test images. Providing configurations or solutions for a niche =
area is outside the scope for this general layer, IMHO. I could be =
convinced  otherwise. I tend not to wait for 100% solution before =
sending out bits for review.

its a good start. If you have some more patches on the way to complete
the solution, that would be good to share.

>=20
> thanks for your input.
>=20
> Regards,
> Armin
>>=20
>=20


--Apple-Mail=_487D78E8-DC2C-44BE-B23E-6D3D05AC9DC4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgTkNsACgkQuwUzVZGdMxSZKQCggGZHEPoIaqRpvt5f3MP8TxFR
F78An0X05ws0cI10EIyB94Nbh4RVlW3x
=0iyN
-----END PGP SIGNATURE-----

--Apple-Mail=_487D78E8-DC2C-44BE-B23E-6D3D05AC9DC4--
