Return-Path: <external.Rob.vanRiel@nl.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ADE3E00E46; Mon,  5 Mar 2018 03:04:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1847 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 03:04:44 PST
Received: from de-deferred2.bosch-org.com (de-deferred2.bosch-org.com
	[139.15.180.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD617E0081A
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 03:04:44 -0800 (PST)
Received: from de-out1.bosch-org.com
	(snat-lb41g3-dmz-psi-sl1-maildeferred.fe.ssn.bosch.com
	[139.15.180.215])
	by fe0vms0193.rbdmz01.com (Postfix) with ESMTPS id 3zvx8h4R1Gz8ZKbh
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 11:33:56 +0100 (CET)
Received: from si0vm1947.rbesz01.com
	(lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by si0vms0216.rbdmz01.com (Postfix) with ESMTPS id 3zvx8f5bbLz1XLFY2
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 11:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nl.bosch.com;
	s=2015-01-21; t=1520246034;
	bh=imLXrwCEMMaPQFUoakCJePw7Tw1zJMk4fnPWRrT4hzk=; l=10;
	h=From:From:Reply-To:Sender;
	b=NNKwxlR88o7aDwKgCQH4BNcO6HQhFLLI9IWOk+qSw0zzoMyz8u93VwLdJE7s+qlwY
	wOc8d8ONIhOQBK/CCf1QPVc7SXA6v/hMe4rKj24mTvzyLKRTPnXRgRIBkrZzv7e6L9
	fLpnIRdPs+y/Sw0syFxCq9Vt5BdfK8Q/QnyzMJzw=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
	by si0vm1947.rbesz01.com (Postfix) with ESMTPS id 3zvx8f5Hfbz6CjQ35
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 11:33:54 +0100 (CET)
X-AuditID: 0a3aad10-271ff7000001805c-f5-5a9d1d13df74
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id
	9C.5A.32860.31D1D9A5; Mon,  5 Mar 2018 11:33:55 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (fe-mbx2023.de.bosch.com [10.3.231.33])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 3zvx8f3pDVzCpNQ
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 11:33:54 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (10.3.231.33) by
	FE-MBX2023.de.bosch.com (10.3.231.33) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Mon, 5 Mar 2018 11:33:54 +0100
Received: from FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7]) by
	FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7%3]) with mapi id
	15.01.1415.002; Mon, 5 Mar 2018 11:33:54 +0100
From: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake: git and patch problem
Thread-Index: AdO0bDg9YcONI9sMQR2mVKfKBya5NQ==
Date: Mon, 5 Mar 2018 10:33:54 +0000
Message-ID: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.14.72]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22Sf0wbZRjHeXvXcqvc8nKl8lCowWaLGb8GbgsIC5l/GNApEucf0hjnsd5o
	I22xV3BsaqqWMrqpc79glSIy2ezEUaAqZCNoJwpTg4sa2WSAygyjbgqMHwmTeefB2j/85833
	/T7v53m+9+QoglmM1lAmi52zWdhynUJJKnM/1qartF595tWxtTmHr7cptqHC2oG3FMVIr9xq
	4MpNVZxtY/7zSuPbt2qIiiVyT6ejX+FAy4QbraEAb4Z3rjTL3EhJMbheBv2ftimkyzCCpb8+
	QdLlTwTT46fk0qUXwSVfe7QbUZQCl8ByzVaxVRzeApNf3VKItgo/AN5GrWSnwQ8t0zJJZ0Cb
	3ykXNYnXgTOwHC1qGufBDd8wEjXCWqhz3PzvPYHj4crEezIpKYYPzg+tpFbD9d+X5ZJOBn9t
	vVx6nwbN52YUkk6FU++HCKl/LAyemCAPoThPRFtPBOKJQDwRSDMizyD1bi6zypz9UFZOhq2U
	4/dmZmXsspo7kbR+3I08g6VBhCmki6Fz1V49I2er+GpzEG2hZDo1/VyMYK0ttRqqjSxv3Gmr
	LOd4nYZGUVFRjOquzVeWmk08b7JagggoQhdHaxIEjjaw1Xs5m1XCgiiRInXx9EHDy3oGl7F2
	7gWOq+Bsq9U8itIBbUgSwFgbV8bt2W0qt6+WdVpp5r2RlcixMmpNEG2iYoTZFxLF2XwFa+ZN
	ZSt4goQzq24YvYiepOZ7x10E5fJNCOfwZMhFMKTFauE08fQzYhwsUsZKy900miQa53v0jDqi
	EO44hS4jYZ8q+qwYJEb448M5gO5WNZYwsStmGHqwVWDwhySc9B1A0HApJIMOp/seuDPUGgtN
	xzuSYHDkRjL0HVu4H/a/7lgPsz7neug+/s0G6BubF44/AmngGfOkQ/vf/6TDXMPsZhgNnsmG
	0NxMLswNuLZB57nzhRDoPf0o9HX5t0OXs64IJl3TRTD3a2sxHPO9uwO+dHyxAwLXfiyBqfqa
	Z6Fp/jILk0teM4zUjL4Et7sWqqeEJcuEJQ9dbRSXbGft/7PkFTf8dRoHSh6oHd959LXvtAd7
	nkp98UL8w0fe6DHgnMD+DjihLGg4cPL0R7ju4lFq37clZIL/M+33LcWpxmuPZXv3tbzJ1z3x
	ecEspNwp2DCUkqh6JW+hafvTmnU/H/5616aNNzNa+0Os2V+0+JO7v/2RwOJ9hb/0cGctr+Zr
	Rx7/7fZo1/zIoZnmCh3JG9msFMLGs/8CNyBbZIsEAAA=
Subject: bitbake: git and patch problem
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
X-List-Received-Date: Mon, 05 Mar 2018 11:04:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm experiencing strange (at least to my eyes) behaviour from bitbake. My r=
ecipe specifies a git repository as the main SRC_URI, then, in a variant cr=
eated using an append file adds a patch like this:

SRC_URI_append_mystuff +=3D "file://mystuff.patch"

As expected, this grabs the sources from the git repository, and then appli=
es the patch. Rather unexpectedly to me, and also rather inconveniently, it=
 then adds and commits the changes to the local git clone.

Is this expected behaviour, and if so, is there any way to prevent it?

My environment is based on poky-fido-13.0.1.

Best regards,

Rob van Riel

