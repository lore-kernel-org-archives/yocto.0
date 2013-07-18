Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4774E01492
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 15:27:22 -0700 (PDT)
Received: from e6520eb (unknown [82.233.81.124]) (Authenticated sender: eukrea)
	by smtp3-g21.free.fr (Postfix) with ESMTPSA id 91629A6215;
	Fri, 19 Jul 2013 00:27:14 +0200 (CEST)
Date: Fri, 19 Jul 2013 00:27:13 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Rich Bayliss <richbayliss@gmail.com>
Message-ID: <20130719002713.6e68781c@e6520eb>
In-Reply-To: <CAHLvMfaV1fbPYip2Cf9cF4_f0S4UDuNUo=rTK-6zzaQPt1MT7w@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
	<CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
	<CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
	<CAHLvMfaV1fbPYip2Cf9cF4_f0S4UDuNUo=rTK-6zzaQPt1MT7w@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.2 (GTK+ 2.24.19; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 22:27:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rich,

Le Thu, 18 Jul 2013 15:07:01 +0100,
Rich Bayliss <richbayliss@gmail.com> a =C3=A9crit :

> On 18 July 2013 14:50, Rich Bayliss <richbayliss@gmail.com> wrote:
> > Configuring network interfaces... ifup: interface lo already configured
> > ifup: interface eth0 already configured
> > done.
> >
> I wonder if the dirty reboot by power pull as making the boot process
> longer, and thus UDEV is failing to bring eth0 up in time? What do you
> guys think?
>=20
this problem occured here when /var/run/network/ifstate is on a RW
persistent storage and not in a tmpfs : the interface state can exist
when booting after a dirty reboot.

A workaround is to hack
meta/recipes-core/init-ifupdown/init-ifupdown-1.0/init and add
ifdown -a
just before ifup -a in the start) section

Eric

