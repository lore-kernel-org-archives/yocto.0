Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0174BE006BC; Sun, 29 Jun 2014 09:25:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16447E00543
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 09:25:04 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id y13so6924798pdi.13
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 09:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:openpgp:content-type:content-transfer-encoding;
	bh=kNkomNIRVlsWeR768wqXMGg/SluPdz+q/j/X/lIPcqI=;
	b=NgBfDbpi/ZMeKE1UX1EbFWSbr6TPJraacXB5k8ho2t/C63OyYTA2Rb8ERg8WbKV9Rh
	XMfzVndPO1U6HVM9lOpHloTfLIVDnGNvx49N0ACneDf8tED75NH2TI+yxjDlBFUVMqtE
	RPai3yX8D7sFfIvZ/DgqhhSJU9cwbvQReklQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:openpgp:content-type
	:content-transfer-encoding;
	bh=kNkomNIRVlsWeR768wqXMGg/SluPdz+q/j/X/lIPcqI=;
	b=cq4JE3mCw96batWz14Ibh18YshD4bwyi1edkco3XL6rmzQxGcJBSs9G/zWy3DGF19G
	4hBhhXJas1glysrGDWOWnastaKomqnpkJyp8ats0Z/CyJ3fomQDVDWU1/8ajWFiVva23
	oLhC3nAkr263bPYyDHhT8Ckfpyzlwgg5zCPb1srLbT+DMDehtS/DcbpcvmpV7pqh3Mqc
	Vq99FjAo1gBiZSxRN9biScOwHHuKia5Amk8nvS0fbd18l6M6SYWYI/xsqPw/MK+thoga
	8Ouwc3H4IqXLyb8yNJX2uVj8i59X+NxdbAoK+/DxqrSG8gky8lp/SfcuWm5mlNHsWODh
	sjtw==
X-Gm-Message-State: ALoCoQlbDG01UdbflFDWAnxa5Z9On1FAXYzuxDq+hAPeRMnv7EvM8Mmfv12fNQcpI/vfS4R9bQO4
X-Received: by 10.66.120.201 with SMTP id le9mr44639054pab.98.1404059104187;
	Sun, 29 Jun 2014 09:25:04 -0700 (PDT)
Received: from pride.local ([207.55.8.2]) by mx.google.com with ESMTPSA id
	xk3sm23769854pbb.65.2014.06.29.09.25.03 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 29 Jun 2014 09:25:03 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <53B03DDE.6090901@yoctoproject.org>
Date: Sun, 29 Jun 2014 09:25:02 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	yocto-infrastructure@yoctoproject.org
X-Enigmail-Version: 1.6
OpenPGP: id=01861969
Subject: Error while reverting changes to Bugzilla database [June 27th 17:15 UTC - June 29th 15:00 UTC]
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
X-List-Received-Date: Sun, 29 Jun 2014 16:25:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Summary: If you entered data into bugzilla.yoctoproject.org during the
last 3 days, please double check your entries are correct.

    Data entered into bugzilla.yoctoproject.org after June 27th 17:15
UTC and before June 29th 15:00 UTC was lost from the production
database. One lost bug was re-entered by hand.

Details: While restoring Testopia data from a test plan that was
deleted last Thursday I made a mistake regarding the format of the
database backup files I was using. The bugzilla database was reverted
to its state as of June 26th 08:30 UTC. It continued in this state
until June 29th 15:00 UTC when I restored the database as it was on
June 27th 17:15 UTC. The only changes made during this odd state were
to temporary bug id 6483 which I have recreated as
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6488. I believe no
bug data was lost. Daily stats data for June 27th were lost. Weekly
stats are not affected. Testopia data remains in the June 26th 08:30
UTC state.

- -- 
Michael Halstead
Yocto Project / SysAdmin
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQEcBAEBAgAGBQJTsD3IAAoJEH9hAclg9EfIf6oH/2cXZzKdyX2C/RzHjBo+u5be
PAiSJ84M97yeqx17bgz52ZrNUcZanoipTfgAs0Gh8u3J5e1XDMEORTYxU9uuS7EH
lsjg9XXKgSGxAe2xXuxoQZ6nk7bH2p9b2aMCj9r0HST3fpLiaBurSO2AmSRRFc3v
c9MMyIEK0gQ/Odct7/5zf5Iigx5BTZoWlotmKkK5ONOzYe4qwa+izmxHtNbCppos
AmlrMgKAI6Sw4m0xxqmcSZqruqFX5JnfeNUuCr+jXZrzdmVCeZmv7+wS3uRFwJ8y
/e9VDwaY88ge/GQJHdpylLEZ1AQMlEpkalaEZZeWr5ISO/zv0h6m5GUDar+UCI0=
=2DIT
-----END PGP SIGNATURE-----

