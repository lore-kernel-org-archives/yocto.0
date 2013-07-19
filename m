Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3CF6E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 01:08:09 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id f4so8797937iea.39
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 01:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7i/TwIhbOSj5KCOKea4/uVRUdVvUlFnQq7Vrdl5LP6E=;
	b=dBV+ef2gZDZOxD7zlYbf64jseXS6DBsnsADZIFX5k/XzHWq6pSbz8ltLP1TkHnWQhF
	bgcmKaMioKooxFotKZhtaz8OVyhzoj+z6CBg9VchXRhGWLjJjCTPd542S+XDD1snVggN
	gNMTWN7yuGpkQL76mutBCrv/jiuaTH0AbAmrLKtxpOhhRAanlnuzyijCJ9ykmF9Wy7vM
	Ao2Or8ql4Ks+NkV3MVy+sNV7wlx03jQoVWcvvB+er4FdqIFtNyQ2IFUXteOvYWFEJEP+
	70eceUTxavWN4uYK4paHTOKFI5io65OMKaXji2gpcTnDJ+Mu2DyklRfHBCQ907N8fxDq
	norw==
MIME-Version: 1.0
X-Received: by 10.43.14.74 with SMTP id pp10mr8998271icb.87.1374221288893;
	Fri, 19 Jul 2013 01:08:08 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Fri, 19 Jul 2013 01:08:08 -0700 (PDT)
In-Reply-To: <20130719002713.6e68781c@e6520eb>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
	<CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
	<CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
	<CAHLvMfaV1fbPYip2Cf9cF4_f0S4UDuNUo=rTK-6zzaQPt1MT7w@mail.gmail.com>
	<20130719002713.6e68781c@e6520eb>
Date: Fri, 19 Jul 2013 09:08:08 +0100
Message-ID: <CAHLvMfarB66ebAdbKNWHvQ18Dx-h28N3KHoM-WgenFxxQjR-4g@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
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
X-List-Received-Date: Fri, 19 Jul 2013 08:08:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 18 July 2013 23:27, Eric B=E9nard <eric@eukrea.com> wrote:

> this problem occured here when /var/run/network/ifstate is on a RW
> persistent storage and not in a tmpfs : the interface state can exist
> when booting after a dirty reboot.
>
> A workaround is to hack
> meta/recipes-core/init-ifupdown/init-ifupdown-1.0/init and add
> ifdown -a
> just before ifup -a in the start) section
>
> Eric

I will try this hack Eric, but I suppose this opens another question -
why /var/run is held on a non-TMPFS? I would think (and this is not
based on any authority) that since /var/run is mainly for tracking
state, that after a reboot of any kind it should remain blank.

I have tested deleting /var/run/ifstate and pulling the plug, and it
returns on next reboot. I think this might be the EXT4 recovery
kicking in and putting the file back?

--
Rich Bayliss

