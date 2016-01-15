Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EA21E00AB7; Fri, 15 Jan 2016 12:38:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60D71E0096C
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 12:38:10 -0800 (PST)
Received: from elrond.localnet ([95.90.4.156]) by mail.gmx.com (mrgmx102) with
	ESMTPSA (Nemesis) id 0M5r89-1ZvkUn1UML-00xsz0;
	Fri, 15 Jan 2016 21:38:04 +0100
From: Jan-SImon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Jan 2016 21:38:03 +0100
Message-ID: <1817465.LUlud2IZio@elrond>
User-Agent: KMail/4.14.10 (Linux/4.1.13-5-default; KDE/4.14.10; x86_64; ; )
In-Reply-To: <CAJTo0LaYcd+X2mJqiMGyP=dt6iL7hMv3vEDaQ3u62-e+xwdyTw@mail.gmail.com>
References: <1452024690-31461-1-git-send-email-dl9pf@gmx.de>
	<1452024690-31461-2-git-send-email-dl9pf@gmx.de>
	<CAJTo0LaYcd+X2mJqiMGyP=dt6iL7hMv3vEDaQ3u62-e+xwdyTw@mail.gmail.com>
MIME-Version: 1.0
X-Provags-ID: V03:K0:/3FX3espmF4wIM2zQCgE3JnOk76cs/guEke6RQ6QPBWoYdaiLTz
	iyS3Uu3xU8Mqt4lkhs9woPyE85xyWtGuawupXg3ZDx8Ck0XxvK6mvJC/Ew5aeGk1UuhdHs4
	JAqriH4czvclAagiwIxVKaM10W6956SJLZT190+SqmK2KIz5yJ+dIf+UKMHvI0rV1UbQ1CP
	Nk9KPQXuLv/kwalXeT+XQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:RROJqKx58xY=:kbDv8zzT0yu7zWR1+dZVdP
	+hzcJLSJ0ZLXtyjPTGZAYwWz+vixEHCY/HGM+FdxkKsGqaa/1MqLpIGJu7ijZs3PPOyIen7W/
	CCFNIy5hMWh4szlfRvn/xIe27lFukcf4QEpvcHMHZg6z06228CtqjtgNJXuNGvl+4lUjgLhq8
	NxhayZO5LMSoeeCjzMGcDswEk8ii1lfNC+PVT6eIhJcLNR8zWqgobPa5k7/Z3FiaAz9kVYsy2
	8BTYjDDI1MGumNpsjusbbMX4iErV/Aehk//vG9loFXVbc5zEpQWHpxM3UGAtG9T9XcxWUnntm
	0Nd5aci366NQRyxDgU0m7u+DyIHGLjDIM93Lrr2BYA/43oXB6h2ZZeL+S67fCuMfj8BsdTMO6
	16eAEZ/eOK8fqFFzPmavmP3G7j6qpOC74eIgh+Of7vkgLBAShs4ARAIV8locS0Dkql0G57RlR
	P50bTxU22wX1ctYZDBxOD1xZYMMQauUcecLayd0DVXhVvSwXk7Qc/yZkzE+x8w+yn9xe0PCKu
	Up4jx1hAWFmKUVJQ625JcwWA1Ij27gjD+goD/SffbAmjAmmtlSKcdTQ6irSqFyGlpr2YOWP5a
	TNc+FkKYgzzfBcZFHGZJWKi+aE6tJcKE/Jb69GwIuLkqXMQfht+Ni8NHkgYMU+4pIgWHYYbvi
	2KMBBJY7O5yku9bjKyfYwVwMrIHwOU+PT8uQNlhI/scS65EM+Zr8f6DVpTV5ftW6HvLy4AHv6
	pPJAJ+wNh/YdqRGUk2MPbWIl2QSVLpyFFM/rbol4nVGJT8ItM7Jb5cknPfFjYwaiXzARYqYkb
	11MJhxo
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Fix connectivity check for BB_FETCH_PREMIRRORONLY case
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
X-List-Received-Date: Fri, 15 Jan 2016 20:38:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Burton,

Thanks for the review. Clear case of brain bug from CnP.=20
Yes, will resend.=20

Best,
Jan-Simon

Am Donnerstag, 7. Januar 2016, 23:42:22 schrieb Burton, Ross:
>=20
> Just use d, you don't need to use bb.data.getVar("foo", d, True) when=

> d.getVar("foo", True) is clearer.
>=20
> Ross

--=20
--
Jan-Simon M=F6ller
dl9pf@gmx.de

