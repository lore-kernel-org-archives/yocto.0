Return-Path: <koen@beagleboard.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281E0E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 14:59:00 -0700 (PDT)
Received: by eekb45 with SMTP id b45so683627eek.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 14:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to
	:x-gm-message-state;
	bh=N4eKY89piiwVwFtSn25LBAG/QdUb9txxdMzz6ni8/Zk=;
	b=kZIjfzNrJV0XWQxYNotEuLppIpmY91b6+bu99rk/aKakcVxyeOweE3DNACgNsvtN1K
	5ec7zUJJDg2PyVxZWNk7usGjRwIbWX4w4iOE6LFHreP5Zkk2EwIWhsdug6Rw/f/42hTv
	8guH0rmtGt0REjwCG06LYKyh31bTwV+H6+GwEADE2X0eV3RoLiVRhljb0GqK15wvQWUp
	o87/f+LVCglwk5VN8XTFL512g6p1NXVgBHHZjfKixonsFAadiDQ1gIC54G32pFVVKND6
	8r5kaWnvH8UbbUfmQ/PA5/zlu2lZNOfYpks662zgiwcZhSL2vh/shsC5h9J4GXLHrDp8
	tTqA==
Received: by 10.14.97.10 with SMTP id s10mr3471120eef.90.1340834339892;
	Wed, 27 Jun 2012 14:58:59 -0700 (PDT)
Received: from [172.20.1.20] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id z5sm163094346eem.3.2012.06.27.14.58.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 14:58:59 -0700 (PDT)
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
	<4FEB69BB.2080906@r-finger.com>
In-Reply-To: <4FEB69BB.2080906@r-finger.com>
Mime-Version: 1.0 (1.0)
Message-Id: <02DD1E77-2FBE-413A-B852-6DC3EEC6A7E2@beagleboard.org>
X-Mailer: iPhone Mail (9B206)
From: Koen Kooi <koen@beagleboard.org>
Date: Wed, 27 Jun 2012 23:58:56 +0200
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQmTinkqpHTtIS+b7CbOVKK0XmD3cL1yH8VQLeZm51mBPG/IJE86JfeEk7oISsgkt3Hbjgac
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 21:59:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



Op 27 jun. 2012 om 22:14 heeft Tomas Frydrych <tf+lists.yocto@r-finger.com> h=
et volgende geschreven:

> Hi Koen,
>=20
> On 27/06/12 15:59, Koen Kooi wrote:
>> Yocto is NOT a distro.=20
>=20
> Is that so? :-), meta-yocto distro.conf:
>=20
> DISTRO =3D "poky"
> DISTRO_NAME =3D "Yocto (Built by Poky 7.0)"
> DISTRO_VERSION =3D "1.2"
>=20
> I am well aware that textual meaning is pretty much constructed by the
> reader, and that authorial intent is an elusive concept, but I am ready
> to argue that the conventional understanding of the above is that Poky
> is a build tool, and Yocto is the public name of the distro that you
> build if you use meta-yocto. To read that as 'Yocto is NOT a distro' I
> think requires a definite pre-understanding that Yocto is not a distro,
> which would need to come from some other source (or perhaps it is an
> axiom of faith; myself, I tend hold firmly to the authority of the
> source code alone). I shall not deny you the right to hold to such a
> reading, but I do reserve the right to deconstruct it. :-)

It's actually the catchphrase on the official slides: It's not a distro, it b=
uilds you one



>  thread highlights the reason the oe folks have been pushing to get rid of=
 the 'poky' name completely
>=20
> Perhaps one of the reasons; but then the erasure of Poky would mean that
> you could no longer say 'Yocto is a NOT a distro', which I suspect would
> achieve the very opposite of what you seek (and, perhaps more
> importantly, might cost Dave and Saul a lunch or two). Personally, I
> think much better solution would be if the distro was simply called Poky
> v7.0, then we could all say 'Yocto is NOT a distro!' with conviction.
> Plus Poky is such a lovely name, don't you think? ;-)

I have no problem with poky-the-distro, I have a problem with poky-the-build=
system. I warned mallum about this confusion years ago, but you know how stu=
bborn he can be :)



>=20
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

