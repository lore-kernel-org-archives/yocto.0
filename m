Return-Path: <stefano.pagnottelli@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CC3FE00D50; Tue, 22 Aug 2017 00:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.pagnottelli[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81AC4E00B01
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 00:55:22 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id a47so3638739wra.0
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 00:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=b9uItxUvmSZcZl56NxNfUAb2M8A8+06lJeZvIBmWOd0=;
	b=tzzuMCPypLJIfHMkTXH/u0zSsDxJA1gWkPNj9pkCBLzdJGO/ZFluGGa6gf2TyeQhO8
	iLD3SVdUbN+4VQfEMvfNO/86AvQQBMVrWNH/TTpXYhzn3xrhop1Zq3MAnjwn6STV6Lvu
	I5NtZtiyBfIyUZLlDuJktYVA40Or4TltMlo2B4q0fhp6UmQw+jA2U9JkjIBwmfWItYon
	T4KNhcfp1l5Bj7Rm1MceUaWhaGgX+CUHYRCUMcW5qn7/DcuOvW0FcFwOKNVjV7RUCtz/
	kMZNVB3nMNKTLb355C7SEj1W/9R9MBzLDA4KwZydQWHZSF0iLmTj0fHkGADmN0Tr+Fsp
	r93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=b9uItxUvmSZcZl56NxNfUAb2M8A8+06lJeZvIBmWOd0=;
	b=mH1GfsQHMD4RBm57YHV0FEFtBP3n79/W/cmINYDg0xLcevfMvLpdY42UR9sYcVztAX
	vGVYdMUhZ824YScxjN2Trw7pMT2QHFyaoQCEr9AOerii4QpxxnZQ0amYfrgguWSOkBoU
	71sW86H5petL0ShW7+6Iu3YrBzubzwXIMB+49jXONKIMyh1/AHZZNB+tCYBHdNaRYh5v
	mgEGEA8KP4xsFkYgk+l4AHoU0LbCxxtryU1gselQcRoomoZJ7Qc1v8AFT0QbAyXE5Kva
	IATXifc4CBAT+xAfya7F2w5sediXxfN3qY9E73m/WJ5LKL1hR5xOM5It1adjI9zHxqWt
	eejg==
X-Gm-Message-State: AHYfb5hxeSissEYGY8oB5nKf/ceyuDrcV+OGdPrzegu1PKsitAeI7gz5
	bwz+zoi0VmuUHzU4jlsC60w1OahTvw==
X-Received: by 10.28.20.65 with SMTP id 62mr7142038wmu.51.1503388520835; Tue,
	22 Aug 2017 00:55:20 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Pagnottelli <stefano.pagnottelli@gmail.com>
Date: Tue, 22 Aug 2017 07:55:10 +0000
Message-ID: <CAJJpNC3C+-Wjz-kWj386-zbGpVwoh-+RTnC5e5wuCMkdBHQ3AQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 23 Aug 2017 15:14:16 -0700
Subject: RDEPENDS dependency problem
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
X-List-Received-Date: Tue, 22 Aug 2017 07:55:23 -0000
Content-Type: multipart/alternative; boundary="001a1146f01cbe6ef9055752eaae"

--001a1146f01cbe6ef9055752eaae
Content-Type: text/plain; charset="UTF-8"

Hi to all,

I'm trying to build this layer: (https://github.com/bachp/meta-homeassistant)
using the yocto pyro on a raspberry pi 3 target and the opkg package system.

Inside the recipe (
https://github.com/bachp/meta-homeassistant/blob/master/recipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb)
there  are some RDEPENDS with strict equal dependencies (ex:python3-aiohttp
(= 2.2.5)).

We I build the image with the opgk package system the system fail in the
do_rootfs task because is not finding the package python3-aiohttp = 2.2.5..
If I understood correctly this happens because the build system si
appending the recipe revision (PR variable) at end of package name and the
results is  python3-aiohttp_2.2.5-r0 and not python3-aiohttp_2.2.5 as opkg
is expecting.

As workaround I changed all strict = with a >= and the build complete
without errors.

My question is: It's possible to  instruct the build system to ignore the
recipe revision when it match the version of the package? Or in alternative
it's possible to automatically detect the recipe revision of the package?

Thanks in advance
Stefano
-- 

There are 10 types of people in this world, those who understand binary and
those who dont

--001a1146f01cbe6ef9055752eaae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi to all,<div><br></div><div>I&#39;m trying to build this=
 layer: (<a href=3D"https://github.com/bachp/meta-homeassistant">https://gi=
thub.com/bachp/meta-homeassistant</a>) using the yocto pyro on a raspberry =
pi 3 target and the opkg package system.</div><div><br></div><div>Inside th=
e recipe (<a href=3D"https://github.com/bachp/meta-homeassistant/blob/maste=
r/recipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb">http=
s://github.com/bachp/meta-homeassistant/blob/master/recipes-homeassistant/h=
omeassistant/python3-homeassistant_0.51.2.bb</a>) there =C2=A0are some RDEP=
ENDS with strict equal dependencies=C2=A0(ex:python3-aiohttp (=3D 2.2.5)).<=
/div><div><br></div><div>We I build the image with the opgk package system =
the system fail in the do_rootfs task because is not finding the package py=
thon3-aiohttp =3D 2.2.5.. If I understood correctly this happens because th=
e build system si appending the recipe revision (PR variable) at end of pac=
kage name and the results is =C2=A0python3-aiohttp_2.2.5-r0 and not python3=
-aiohttp_2.2.5 as opkg is expecting.=C2=A0</div><div><br></div><div>As work=
around I changed all strict =3D with a &gt;=3D and the build complete witho=
ut errors.=C2=A0</div><div><br></div><div>My question is: It&#39;s possible=
 to =C2=A0instruct=C2=A0the build system to ignore the recipe revision when=
 it match the version of the package? Or in alternative it&#39;s possible t=
o automatically detect the recipe revision of the package?</div><div><br></=
div><div>Thanks in advance</div><div>Stefano</div></div><div dir=3D"ltr">--=
 <br></div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
"><p dir=3D"ltr">There are 10 types of people in this world, those who unde=
rstand binary and those who dont</p>
</div>

--001a1146f01cbe6ef9055752eaae--
