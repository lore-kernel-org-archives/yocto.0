Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 329BAE007B5; Thu, 21 Jan 2016 12:39:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03BA8E0045F
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 12:39:00 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id uo6so29382794pac.1
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 12:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version;
	bh=dU3HMJPHKQWqZEpFv2Ee7yEFIaKrU+nbwnOCDwdFoBI=;
	b=XmhP6Zkn9mIjRUlcymyieuMU61TZIzTokrJaqbolgtHNy3sWvm6gid0bOtHLveS0ny
	QKf7KVftWTstiPqYLP6ESNl0lcYqx0v+G/NEQS+u+vJdst8S5OIV2hW0hr58ZdbfMVGm
	A7j5gEolWSjoKLzhpa4pQI6Om6CH4rbjhvuYpISmoy5aGqKHASZ2p4u1s9D3a5Nr4QMX
	/jtkHmUJ+EsKnW/WqzuAVGFTHH16+p0pIKrYS730u889Dfkmal40RmkQp8It5e1ZuCX3
	nQ1IEgcreh9MnOC3Gh6QCPGCdiI0rR822GsHTAbHTooMD12+/OAId5Xb2+G532jfvQk1
	ZG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:subject:date:message-id:to
	:mime-version;
	bh=dU3HMJPHKQWqZEpFv2Ee7yEFIaKrU+nbwnOCDwdFoBI=;
	b=RDWYT+6wFRjJWTToRyg7nT+mVGKIfgIZw6rRRnyJrhU35FloWFvEyCRW7at/gvo3K4
	fY/V1N3YTUsPhe4+0EMbxnb+ViSr/piRB/xaYANCm/iwlUIft5Nas59SB5rJhzC/Eim+
	/GaCJJa7dsyMDJIaJmtV5q182HAtprKUnjuXZ8u5m6Up6EExIity//56sniojOsykoE2
	Mj0ptGYfgfBerCDKUQFCm2Hgo45bw/l0k39V9pqjoNZfBp/uzl0p+qWuystKlvC4Aqzr
	QWN+i8x1eYPtrCHvxDmPDnArjfLcElyjpDYC0D3DUrWAK9g+4pQYRFplQENkMlPx65dH
	glrQ==
X-Gm-Message-State: ALoCoQmJ0j3IUTAMOcJCIgyrvZcvyJrr0TI59K/0mtNMkI6K8ujmXoPaMFzyI99inM+AhsdJH1irprEhDQtuxJYR0+9wva7qQA==
X-Received: by 10.66.65.203 with SMTP id z11mr63713905pas.152.1453408740134;
	Thu, 21 Jan 2016 12:39:00 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:153d:39b8:c78:68fa?
	([2601:646:8802:5d5c:153d:39b8:c78:68fa])
	by smtp.gmail.com with ESMTPSA id
	r15sm4546296pfr.59.2016.01.21.12.38.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jan 2016 12:38:59 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Thu, 21 Jan 2016 12:38:53 -0800
Message-Id: <27913D31-C426-4F79-B305-92401B7860E0@gmail.com>
To: OE Core mailing list <openembedded-core@lists.openembedded.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: meta-openwrt layer is available
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
X-List-Received-Date: Thu, 21 Jan 2016 20:39:04 -0000
X-Groupsio-MsgNum: 28065
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5BD983AD-0EF1-478D-87E4-49C631F35CB3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5BD983AD-0EF1-478D-87E4-49C631F35CB3
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

Hi all

A new layer for openwrt packages is available

https://github.com/kraj/meta-openwrt

This is aimed at providing OE metadata for packages which are unique to
openwrt. Currently it does not contain recipes for all possible packages
but if you have one or are housing them in different layers please feel free
to move them to this layer

The layer index URI is

http://layers.openembedded.org/layerindex/branch/master/layer/meta-openwrt/

Thanks
-Khem


--Apple-Mail=_5BD983AD-0EF1-478D-87E4-49C631F35CB3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlahQeEACgkQuwUzVZGdMxRleQCcDhfw+GyEROtC+hK6UZi5Gx3Z
KaQAnjiQv2heI9oOoiBLiRn4H1rYfSBk
=0Gq+
-----END PGP SIGNATURE-----

--Apple-Mail=_5BD983AD-0EF1-478D-87E4-49C631F35CB3--
