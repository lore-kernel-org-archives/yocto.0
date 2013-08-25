Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C108DE00443
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 20:32:51 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id y10so2135539pdj.25
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 20:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=XbwDK8xI8Eyc7K7fEC6PawEVHqbXqhHPxLBAvhbdpnQ=;
	b=JWpJtmXHLzkl/xNVJO/Gz9tjR8yD+8GiE1ejZNHcBy6aZI8EsroaFN2gokvZK2qR1X
	NRnrs7K98FUHnO3ZFXz0kMQG732/EV+AswGdMJhj3j7NCudcjQm+I4iRrp3RSIE9Pjw6
	tim6CFPIsMaNDSTMuUtfEhPLhWOqp2WgZ/lsFiyWNl7GNNRWu8CwguCvWoGR/Q6QSMXd
	B2WUMNRhkb9DVt+2zphfU5+BD9pDolYrv8VCXNKMhyosWb2zFwxITht3ohiz6QQYr1Nb
	cPQE0QsJ0vFzmolLfQV9PPu3y8WGwDF2dp0VD99lv24GF4VoXNPn9Ux5duE72AluAbUr
	/3Nw==
X-Received: by 10.66.252.129 with SMTP id zs1mr7125274pac.113.1377401570840;
	Sat, 24 Aug 2013 20:32:50 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id iu7sm9284802pbc.45.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 20:32:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
Date: Sun, 25 Aug 2013 07:32:42 +0400
Message-Id: <6DD4027E-D34F-4211-92FD-1570F248D7F8@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
	<F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
	<CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailer: Apple Mail (2.1498)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
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
X-List-Received-Date: Sun, 25 Aug 2013 03:32:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

On Aug 25, 2013, at 4:57 AM, Bruce Ashfield <bruce.ashfield@gmail.com> =
wrote:

>>> I created a new qemuarmhf.conf, to build using armv7a vfp and neon.
>>>=20
>>> In the linux-yocto_3.8.bb recipe, I explicitly specified =
SRCREV_machine_qemuarmhf and added qemuarmhf to the list of =
COMPATIBLE_MACHINES.
>>>=20
>>> For some reason, it still refuses to build using kernel 3.8, and =
keeps defaulting to 3.4.52.
>>>=20
>>> I know I can over-ride it in my local.conf by setting a =
PREFERRED_VERSION_virtual/linux =3D"3.8" , but I'd like to know what =
I've missed, to get it to work by default, without setting the over-ride =
in my local.conf.
>>=20
>> Weird, even after setting PREFERRED_VERSION_virtual/linux =3D"3.8", =
it still picks up linux-yocto_3.4.bb recipe!
>>=20
>=20
> Try 3.8%, you need to match on the version completely, and it is =
3.8...., not
> just 3.8.

Ok, I forgot about that!=20

Another quick question, why is it that when I create a new =
qemuarmhf.conf machine configuration, it doesn't automatically pick up =
the latest linux-yocto_3.8.bb recipe? Why does it attempt to use the 3.4 =
recipe?

Best regards,

Elvis Dowson=

