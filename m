Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1340FE00DCF; Thu, 27 Oct 2016 19:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82FC0E00DC6
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:32:05 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id s8so4173193pfj.2
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=j8HT03sDc2+VsgqbZ1SNJJ3Qr3PbRXICht24Idk+nDo=;
	b=sIYL4vdUf559Imvps43yl+UjhXbltRTbeg+PLJzl919B6stjW+t7aSgODi/xgp2AUw
	DCO+aPIBPoMRlMAMB0Pm0XVB/Z7wO9sfym+9UT+1wKX0/56nHMwktj/I0frhg/fm9QmF
	paxOgmD52frfJotdxtq8HgMOd66nMp6tAZ1CKZA5xxYajGFv5Buhg4/VtdV6XITpCSuV
	H8P3NezZWhGvi7hwVv/FcVjPCEXTQ3LhxFYqYtlEyHT697guCl2WXoTsvw2HPRZtDdu1
	jf7r9kuaAGSvzSYoemttuY6kOppsBCqaSLfMMhmBI1HXpwCaFHekm6ycMvrSR8yUtmBh
	RMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=j8HT03sDc2+VsgqbZ1SNJJ3Qr3PbRXICht24Idk+nDo=;
	b=HwkKErTr2aYJkyxHgKGq1CSCYTj8QQjr+x1DO4r279OV/xvzST3voD47W7EVkpJTsF
	zkSNClJ1BA76D2r0FPdXKeCNDW6OxVbT6yHSxBd8bWTBi85t2TM2qYU5F1tUgv9m2ugf
	QkDNXmdE3Zt7ag2TuEODreWeR7hlwoG1sVwgGK1SlWJk9fnQVaa0cpU961WL79fcyaA3
	58fIBvuK7JxsYvlZlu/eo65GqugyCju3YOiZqMyJtinyyF+SMm0g5EX/6CeeYXhB8A/I
	P7wS/dXjLmkWEhi5o2DGX6krhu2O2r82bzEyaEv3x4zP6lYwlVwKp8tGPFdtVWYAnKJw
	Fv8Q==
X-Gm-Message-State: ABUngveh1fKmlebgnAj08cbk7OsVpwCieRLiRIFX92WCXtXk3ygviW8/VHZP7Jw2L1YvwQ==
X-Received: by 10.98.76.7 with SMTP id z7mr20115353pfa.143.1477621924747;
	Thu, 27 Oct 2016 19:32:04 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id y2sm9283975pff.82.2016.10.27.19.32.03
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:32:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1477552947.2887.63.camel@intel.com>
Date: Thu, 27 Oct 2016 19:32:02 -0700
Message-Id: <92CF3B90-4DED-4513-BDD0-9BB116E476B8@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
	<1477494038-2895-2-git-send-email-akuster808@gmail.com>
	<1477552947.2887.63.camel@intel.com>
To: Patrick Ohly <patrick.ohly@intel.com>
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
X-List-Received-Date: Fri, 28 Oct 2016 02:32:06 -0000
X-Groupsio-MsgNum: 32658
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2A8AF6F4-D410-4F95-90CC-0B734294B015";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_2A8AF6F4-D410-4F95-90CC-0B734294B015
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 27, 2016, at 12:22 AM, Patrick Ohly <patrick.ohly@intel.com> =
wrote:
>=20
> On Wed, 2016-10-26 at 08:00 -0700, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg | 2 ++
>> recipes-kernel/linux/linux-yocto-4.8/smack.cfg             | 8 =
++++++++
>> recipes-kernel/linux/linux-yocto_4.8.bbappend              | 5 +++++
>> 3 files changed, 15 insertions(+)
>> create mode 100644 =
recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
>> create mode 100644 recipes-kernel/linux/linux-yocto-4.8/smack.cfg
>>=20
>> diff --git =
a/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg =
b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
>> new file mode 100644
>> index 0000000..b5c4845
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
>> @@ -0,0 +1,2 @@
>> +CONFIG_DEFAULT_SECURITY=3D"smack"
>> +CONFIG_DEFAULT_SECURITY_SMACK=3Dy
>> diff --git a/recipes-kernel/linux/linux-yocto-4.8/smack.cfg =
b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
>> new file mode 100644
>> index 0000000..62f465a
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
>> @@ -0,0 +1,8 @@
>> +CONFIG_IP_NF_SECURITY=3Dm
>> +CONFIG_IP6_NF_SECURITY=3Dm
>> +CONFIG_EXT2_FS_SECURITY=3Dy
>> +CONFIG_EXT3_FS_SECURITY=3Dy
>> +CONFIG_EXT4_FS_SECURITY=3Dy
>> +CONFIG_SECURITY=3Dy
>> +CONFIG_SECURITY_SMACK=3Dy
>> +CONFIG_TMPFS_XATTR=3Dy
>=20
> Were these two files perhaps copied from
> =
https://github.com/01org/meta-intel-iot-security/tree/master/meta-security=
-smack/recipes-kernel/linux/linux ?
>=20
> Just wondering, they look, hmm, very familiar ;-)
>=20
> Can you say a bit more about your plans regarding Smack support in
> meta-security? A recipe for the userspace tool and the kernel config =
is
> a start, but for a fully functional Smack-enabled image, the rootfs =
also
> needs to be set up a bit differently.

FWIW meta-security seems to be right place for smack related infra.

>=20
> I can imagine that it would be worthwhile to take more of the things
> done in meta-intel-iot-security and then deprecate that layer.
>=20
> --
> Best Regards, Patrick Ohly
>=20
> The content of this message is my personal opinion only and although
> I am an employee of Intel, the statements I make here in no way
> represent Intel's position on the issue, nor am I authorized to speak
> on behalf of Intel on this matter.
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_2A8AF6F4-D410-4F95-90CC-0B734294B015
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSuKIACgkQuwUzVZGdMxQaYQCfSZKfk3vBVUd1LvsQwUNZI6R6
y+sAmQE9Xw9+zwvSZmljBmw/l/1WPuJ6
=p/73
-----END PGP SIGNATURE-----

--Apple-Mail=_2A8AF6F4-D410-4F95-90CC-0B734294B015--
