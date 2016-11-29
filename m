Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D480E00C65; Mon, 28 Nov 2016 17:52:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61718E00C40
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:52:41 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 3so14700362pgd.0
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Hg29035eBfmypG1h1Rmf/0cORplU52eeXt5b65TpW1Y=;
	b=bGUsNkmtO4tgT8p9w6AfVYbbBPbJiHzlOybmXO4cnPC84qlWhSu3DXOednDiiFNSiF
	1q4ySx5pWHuoPwd/eaBWsG2qJTI1AbPZCmbYccLj8MvLmLGS5vr4yy2+tMOgxRQEHWCJ
	3EXr44xd5pD2lScP1CLJDCbf97mdM1G0Zq4/YNyT9CjtEqKKPP1GrrZVmDmfpp8h6i/c
	/f53L2ddRTGZIJjuGKRT6Fa8VjpTGOa5+hXHKcju0Ra92zajAwkf0AXvXrn3YGRk1NVn
	2j63rTD3ZwzPwKgCgX1+L/3h0f/fcZ6VpWia6xrONEmjfHSmpWSBMCJ3GGKWyLa8RzDl
	7t0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Hg29035eBfmypG1h1Rmf/0cORplU52eeXt5b65TpW1Y=;
	b=GrFF9q3fjfSHw/A7yDBj+myoLgW7yXNm4nIi6XY04caPoPfXHnOVMFOxxWucIYMLxn
	pqGyx4Q6Gi3lels0CiTq8XEQJ74j7szlihy0FtA6Yj/v/jtjIffY8aKObuxLOxO+iV5f
	GSiaUHK6rmIabWyuZ+H/Gciiiqqvuu8ggdgSFeslgAXR45649LDQHcg6yuSOOHpQjO0K
	Brse1DFy9BYzFwtv8f5aU8+wkZN6JoatWTYktQB+pNq7CfGH2Ai2yEyVtHK1BM1berfU
	FFK7iDOtxOOjV281thPD3zYkKoH2oUwRDmD2+Q1Pzseqt5e1HaLQjSPTbsxRJsKEiYT6
	hTNA==
X-Gm-Message-State: AKaTC02zH8jrBfBbw1GAU2om6/CK8+jwXHkITTTjsgO8rOTqkpPhvRpHRqf93JfhfC2KIA==
X-Received: by 10.99.240.83 with SMTP id s19mr44941430pgj.175.1480384361087;
	Mon, 28 Nov 2016 17:52:41 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:f08c:19b4:e718:7b0b?
	([2601:646:8882:b8c:f08c:19b4:e718:7b0b])
	by smtp.gmail.com with ESMTPSA id
	y134sm90055848pfg.81.2016.11.28.17.52.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 17:52:39 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161129014240.GB30326@openSUSE-i7.site>
Date: Mon, 28 Nov 2016 17:52:38 -0800
Message-Id: <5A8D2138-126E-468B-8637-D7A927386706@gmail.com>
References: <20161128151233.8861-1-twoerner@gmail.com>
	<9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
	<20161129014240.GB30326@openSUSE-i7.site>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Tue, 29 Nov 2016 01:52:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 28, 2016, at 5:42 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> On Mon 2016-11-28 @ 03:21:50 PM, Khem Raj wrote:
>> its at 4.4.35 now see
>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master =
<https://github.com/kraj/meta-raspberrypi/commits/kraj/master>
>=20
> True. But there's no -rt patch for 4.4.35:
> https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/
>=20
> The latest 4.4.y -rt patch is 4.4.32.
>=20
> Since I'm working on a separate recipe for 4.4.32-rt43 I guess I could =
just
> base it on 4.4.32 and let the non-rt-mainline advance to 4.4.35 :-)

does it not apply cleanly on 4.4.35

>=20
>>=20
>>> On Nov 28, 2016, at 7:12 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>>>=20
>>> This helps align the raspberry pi 4.4.y kernel with the latest 4.4.y
>>> PREEMPT_RT patch.
>>>=20
>>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> ---
>>> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>=20
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> index 19e8552..0724ac1 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> @@ -1,8 +1,8 @@
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>=20
>>> -LINUX_VERSION ?=3D "4.4.28"
>>> +LINUX_VERSION ?=3D "4.4.32"
>>>=20
>>> -SRCREV =3D "5afda48c3408e15742d4569459a4ff668e2857f7"
>>> +SRCREV =3D "f779cabf56bc88319d582db58969ba6f7184a775"
>>> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.4.y =
\
>>>           file://0001-fix-dtbo-rules.patch \
>>> "
>>> --=20
>>> 2.10.2
>>>=20
>>> --=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


