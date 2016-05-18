Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F35FEE00C65; Wed, 18 May 2016 10:11:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f68.google.com (mail-qg0-f68.google.com
	[209.85.192.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BB6E00CBC
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 10:11:40 -0700 (PDT)
Received: by mail-qg0-f68.google.com with SMTP id f74so4708932qge.3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 10:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=AjQEMN+56HBkR6t5sbqr06asWymDuR6qdyJkVgLgdCk=;
	b=flTWPf/8/arT77hUWmOqsjg0vq6KDxCyuUpW5nhJn43JaBdAZAJa6fi5JzPP1sUXez
	fcsiodJA4js+B1MhMmXCiEqIzDhWmL4c8Gd8609NQvfY5fz2R98mHdByQw4pyWTJjtcb
	g3g1Mr7V/f4RRlZgk0TsajH5ffgbhdF/v/jFJwcGJy6lj5lztuOtrNpw1bbmNnj53YJ4
	Ba1LO4O348mksVi82fHev89yrx35UoU9x0rHMefv2WNp++mT5ToKSYWLPjYRV0rKlrRL
	UlSWsn5xB39YUX0UWGPqItMdj7FnSPkIBs/7Y+lD/TQp18mqXnuvLdeT1MFc2R0Geeno
	8TEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=AjQEMN+56HBkR6t5sbqr06asWymDuR6qdyJkVgLgdCk=;
	b=RCOPZNylBruEBQFCrITVyJvpvM1RX1fBdw5AF0VavS+iNxw7t0ldbzFhTdJ1vSgORQ
	1xfeWfhtFVclw79pC/l1N3oEDpMXmVSAqFff4RbT62zQw3yqlWszjHJ9wDJwKFomEjWT
	qYHY7lEK+Ffi8XCYWzGGqIv3BOei1vgJEiOK2kQrcaqXU+gFRcRR/LzJCX7usv1+xDjN
	kVHcKtkslZ6zmEkLMwXSbW46wp1fDw0fI4HFnkHvYcF8nqKh735gUSd2AFrYwM+dxU6F
	byH6N2o6dVscRXEDzD0j1NqTwjq8Yj1MuoboFwoXSijh/RdxxvDpCVACLhky3EjDcMzh
	eL+A==
X-Gm-Message-State: AOPr4FXYuoltQlYLCWLSSR48ThCwMIy+JU2YpBWj3xTgqyB8qdB4zL8ZmN69uBLwOZgP6MC4E7LinUxm6EYkRg==
X-Received: by 10.140.43.101 with SMTP id d92mr8442865qga.25.1463591500323;
	Wed, 18 May 2016 10:11:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 18 May 2016 10:11:10 -0700 (PDT)
In-Reply-To: <F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 May 2016 10:11:10 -0700
Message-ID: <CAMKF1spWiKkS4NhPgamnWvewBbYgfktPcprOv1JysaG5Lb0Yog@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 17:11:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 18, 2016 at 9:43 AM, Herve Jourdain <herve.jourdain@neuf.fr> wr=
ote:
> Hi Khem,
>
> Yes, I've seen that you had sent a patch to upgrade to some revision of 4=
.4.9.
> Here, I upgrade to 4.4.10, but VC4 should work with the 4.4.9 revision yo=
u sent before.
> I mostly bumped to 4.4.10 because the firmware bumped to 4.4.10 - and the=
 firmware bump is mandatory for VC4 to work effectively on RPI.

should be ok.

>
> Herve
>
>> Le 19 mai 2016 =C3=A0 00:27, Khem Raj <raj.khem@gmail.com> a =C3=A9crit =
:
>>
>>
>>> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> wr=
ote:
>>>
>>> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
>>> Kernel upgrade to 4.4.10 (some 4.4.9 version would be enough, but the r=
equired firmware supports 4.4.10, so bump it anyway)
>>
>> I have sent a patch for similar update. Have you looked at that
>>
>>>
>>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>>> ---
>>> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-ke=
rnel/linux/linux-raspberrypi_4.4.bb
>>> index 831ac5a..0bc6531 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> @@ -1,8 +1,8 @@
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>
>>> -LINUX_VERSION ?=3D "4.4.8"
>>> +LINUX_VERSION ?=3D "4.4.10"
>>>
>>> -SRCREV =3D "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
>>> +SRCREV =3D "4c2795dd50f98fa162cb53190eb557be44f92f58"
>>> SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-4.4.y \
>>>           file://0001-fix-dtbo-rules.patch \
>>> "
>>> --
>>> 2.7.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>

