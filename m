Return-Path: <patrick@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7539E00C8F; Tue, 19 Sep 2017 00:30:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FE86E00A38
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 00:30:11 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id g206so2529501wme.0
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 00:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version;
	bh=/TZJVOw/CJtDnIqRO8D63pzPJZTGCttH9G34Iv3wWmE=;
	b=BEI/udL37EHOVbdxz9dNFGssgjapzubnmwMO59/ci5ZxNzX7CwMIJ8uTMC73hakup3
	vrEL9xtF6z+caw0v+VslMtHEYGLyhhaWFry7tEeuTHhmoSiJYMGnc421st3V5JqrPVhX
	p8I1zjVoVTHvSCjxvvgs0LFPSKG3FASIq5lKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version;
	bh=/TZJVOw/CJtDnIqRO8D63pzPJZTGCttH9G34Iv3wWmE=;
	b=DV9lLnorDbdPt8LigRs1M1i74M9aQIL3MuPTqFa6SxtFaPvdx6+zMoZq60UXJHW3Vu
	7xUYqornv8fAGkkZMtXPTE3OyoSNsL6a04tioWBOi1ZoyilIYQRHbFMyKZ2ps9gplyCE
	xc+Co3b6ksndqRvs01JTyhQOED1BkcWhVaNZK1STePrJv33byhzuwLmDAxaOjxK36V9S
	uEoh5npg3T6HUimihGB5lSX10b9rXIQZ3iyv+O/mrABvA9DLGuZzJyXkccJ8H88ZE2Q0
	Tvyuc4CO6dAI0il7gMKoiwCN6kED/3oThMap4m+ec1f8xaDCbVDg2LcWBdC2hXymbv9D
	6Izw==
X-Gm-Message-State: AHPjjUgIgds0/tqHP7G6AQIk+yDuQ36MyyDLvssFzhPZGwT/rmYNYMFY
	7ijFUBxEXMjjOy7aGoeF3h+iksJvwos=
X-Google-Smtp-Source: AOwi7QAstYSqRgC00XqiZixOyxlIUKZhrnJ9ZaTbKn+coaMDovZxKzMy9a68Ml+tNGEiDNVwj2n6eg==
X-Received: by 10.28.210.204 with SMTP id j195mr208844wmg.124.1505806210644;
	Tue, 19 Sep 2017 00:30:10 -0700 (PDT)
Received: from [192.168.1.62] (p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id j2sm7507699wrj.82.2017.09.19.00.30.09
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Sep 2017 00:30:09 -0700 (PDT)
To: yocto@yoctoproject.org
From: Patrick Vacek <patrick@advancedtelematic.com>
Message-ID: <94a0df9e-5a97-aeb2-cdc0-8ea83bc47fd8@advancedtelematic.com>
Date: Tue, 19 Sep 2017 09:30:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 Sep 2017 08:30:38 -0700
Subject: meta-security / meta-tpm functionality
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
X-List-Received-Date: Tue, 19 Sep 2017 07:30:12 -0000
X-Groupsio-MsgNum: 37966
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="J9HwDVn2uEoWwxGS28mfT7juI2HW1i1t3"

--J9HwDVn2uEoWwxGS28mfT7juI2HW1i1t3
Content-Type: multipart/mixed; boundary="cKXIMg1Blvoup9Pwbn7B8Mo0rDpVHLJTB";
 protected-headers="v1"
From: Patrick Vacek <patrick@advancedtelematic.com>
To: yocto@yoctoproject.org
Message-ID: <94a0df9e-5a97-aeb2-cdc0-8ea83bc47fd8@advancedtelematic.com>
Subject: meta-security / meta-tpm functionality

--cKXIMg1Blvoup9Pwbn7B8Mo0rDpVHLJTB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

The meta-tpm layer inside the meta-security layer looks like exactly
what I want in order to get TPM 2.0 support on my devices. I'm currently
using qemu and trying to create a swtpm device on my host and pass it
through to the device. Despite my best attempts, I have not yet been
able to get a TPM device to be recognized in qemu.

To use the meta-tpm layer, is there anything I should be doing beyond
adding meta-tpm to my bblayers.conf and adding
packagegroup-security-tpm2 to IMAGE_INSTALL_append? If not, is there a
way to debug what might be going wrong in this process?

Thank you,
Patrick


--=20
Patrick Vacek
ATS Advanced Telematic Systems GmbH
Kantstra=C3=9Fe 162, 10623 Berlin
HRB 151501 B, Amtsgericht Charlottenburg
Vertreten durch die Gesch=C3=A4ftsf=C3=BChrer
Dirk P=C3=B6schl, Armin G. Schmidt



--cKXIMg1Blvoup9Pwbn7B8Mo0rDpVHLJTB--

--J9HwDVn2uEoWwxGS28mfT7juI2HW1i1t3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJZwMeAAAoJEJPafbf+QhyoB9MQAMaIUH62v/3o1tYRyW69kFEn
0H4rV2vWqrF9mAYRQxyIQcIy40FsLyJ7cFqRN0UAF3SocOvRpgD9PWm6dYc+WAfO
9EJL0ORA4JvBCo7wzAWaWiXFpQH7W5PPmQu8pXUjOk10mksnQSbLo59sK9KPku1h
MNn6MDgDixLK/f62aWe32QM4hIeFArepsdWEIOIkU5kdAwSDgCUN58TTHnfHJ4Yt
c2uQi2ieiUquFbEfZsjAvSxwi8I/OZ7wvjJ3iGGGwLyHtSLCyztezZHjP2is46df
qyIgks4t7rP7oQY4pWPlG5wkhWfB0dYN2lDHRcpVMVy2lNX9vKUSbJvP4PyNINOK
LVja8KN+x2TO3/LnFvK4VUaxST1+ChVzrD3ePyE1zRT+BFM/u5gwq0YNTHZKjprk
+x0FDemK0DmcxsVoQ6mPESqR6dKIVK783Ul7uGETxDyAJbMIyjdtgMww96eQLYgJ
qSlbobLFaF44Htc8SDXRWKIbwoi00EubaS8qj0dOey/8WhawC10E+qUpk4fa6sMm
sESEwPYk4IYqFNxVA2su8dfIx2d1kfxbInV4VPcpJCUWXc8eHyVkiLWUQ4OVQQCe
BoMUt0jQxrmRwLQ6xdxRPqOIF++UuGczxfLiXh6aMgtlWiAQd0kdxZnNQV6HWFmY
LtdiMbK43mZgU84iyjv8
=J0K/
-----END PGP SIGNATURE-----

--J9HwDVn2uEoWwxGS28mfT7juI2HW1i1t3--
