Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC45CE007B5; Mon,  1 Feb 2016 10:37:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40456E0073D
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 10:37:07 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id cy9so86365299pac.0
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 10:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=3xPsHdwF5mgzz1Gc/TrzFg+/VHg6BcpIxVDv9rZcRS4=;
	b=IH/2/MNu+1PLNIpWRenRxkleSy0tAL6hSqrC2zVR+Gi/3fhjetdfFZ6tndoFjVKSTi
	mAW9IdL2DbQa6+c/ztFrimAY9q4ddpmyNG75gg0542829CjkU5awelKjQ7dmF5wv1vLA
	yybI2Tj7U4b6I811neR61ewWLNUQimE8Iu+mC/9Z+TkcZ+v6cZVvgLpwmqpHGsxkd/zi
	zymtaYZMxRdH7RZ2oCP0Phuau4pvjiC0BfcN1Zq0sa5t2VTqacmXCOJ3Ka79UE9lIO/A
	NHs2zR9qPxwOTTm1mTgmwi3SMZFx1KAw6cyt8v6XYQ2DQXb8hPiQsLQIAab+IZ8V/SdC
	nxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=3xPsHdwF5mgzz1Gc/TrzFg+/VHg6BcpIxVDv9rZcRS4=;
	b=F4GUhjaZK9aiKe8iQvlUE5CSNlIOa463Q7+ykI5dAnn/AFK70rzmeoS4YQmgJvDcEq
	rLyN8y7ZWVo2oJWsikfpe3gPrCgGVFRaOIoB6lcb0QqubhjuotjFvQo7x1TmsYrHZGn4
	EheuQ5cbo/uUqpU4gjWSQseH3iGuVPO0ET5zrbm3gigOdWX+hRppdt7XjRkcmhBaoFiz
	/t9WF3bDtLnsyxiC3MDZtPjkBq8T+qacCXf68YRmmXMuLr7vDQWYf69MY/iiTQFlENDy
	1ZeHEmM7PwHvv2qliz7ahPJXTMKBJCpPEZLG8jPt+kqiLQK9PYP/rpNS1Mt26t1V+VEa
	SHbg==
X-Gm-Message-State: AG10YORIYnYrA34mSOScyOmGzaIwASk3pXi3NL06IwEL7ZHiyWhirJGscOHHKv+D5szmxQ==
X-Received: by 10.66.162.164 with SMTP id yb4mr40561000pab.94.1454351827729;
	Mon, 01 Feb 2016 10:37:07 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:74e3:8760:72f:db60?
	([2601:646:8802:5d5c:74e3:8760:72f:db60])
	by smtp.gmail.com with ESMTPSA id
	d21sm44871377pfj.32.2016.02.01.10.37.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 01 Feb 2016 10:37:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56AF45CB.8070305@tekmicro.co.uk>
Date: Mon, 1 Feb 2016 10:37:06 -0800
Message-Id: <34C8E2D4-1BC8-43BE-AD66-0CE2EEDDDA61@gmail.com>
References: <56AF45CB.8070305@tekmicro.co.uk>
To: David Bilsby <dbilsby@tekmicro.co.uk>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Password updates to compressed root image in flash
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
X-List-Received-Date: Mon, 01 Feb 2016 18:37:10 -0000
X-Groupsio-MsgNum: 28188
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8BA54861-6B2C-48F1-B904-1EA362FDE72D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8BA54861-6B2C-48F1-B904-1EA362FDE72D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 1, 2016, at 3:47 AM, David Bilsby <dbilsby@tekmicro.co.uk> =
wrote:
>=20
> We have a project which will use a Xilinx Zynq running embedded Linux =
built by Yocto (probably kernel 4.0). The system will boot from QSPI, =
this will contain the FSBL, u-boot, compressed kernel and compressed =
rootfs. The rootfs will be expanded into an initramfs which will then be =
used as the running systems rootfs (rw).
>=20
> How given this arrangement do you make passwd updates persistent =
across reboots as currently the update will only affect the RAM copy of =
/etc/passwd and not get written back to the password file stored in the =
compressed rootfs image in flash?
> Similarly how can things like the public key which DropBear generates =
at boot time be stored permanently so it does not get regenerated every =
time?

you can use symlink farm to point to pregenerated keys
second approach is to use overlays from persistent storage
start looking at readonly-rootfs work that has gone into OE in recent =
years.

>=20
> This seems like such an obvious question, however I have not found an =
answer when searching. I thought it may be possible to split the rootfs =
into effectively a read-only part (read-write but non-persistent) and a =
read-write part (persistent) and the splice the two together, but I'm =
not sure how best to do this. Flash space is very tight on this system =
so keeping the rootfs in flash uncompressed is not an option.
>=20
> Any suggestions as to how this is best handled very much appreciated.
>=20
> Thanks
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8BA54861-6B2C-48F1-B904-1EA362FDE72D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlavpdIACgkQuwUzVZGdMxQdQACdHewoBOQCMeP4vhya8Vvfi969
WlgAnjc1MCTtN5tz46kMbiVyhlTKbKTe
=uYNs
-----END PGP SIGNATURE-----

--Apple-Mail=_8BA54861-6B2C-48F1-B904-1EA362FDE72D--
