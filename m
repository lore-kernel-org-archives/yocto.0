Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05767E013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 14:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=5zBKSmPKlHq9ESpSUGMeHRx3uyyIY9aqesYRsjOf4jY=; 
	b=FfpB/gRFcKBXE0yK2wyHO22lhNnBhA6VSabvMHwgbEu9UDYVGKIE/dwTp/BucC6ekQIh2w3d1ykjT+bhp9oML+c8kKOmC43Uzz4EajKTcMeJOSqPgPexhgfVMAWHTopPb/qGcONvPTDQJvQAZt0l12i2JUbX8k9cTLIyANISckw=;
Received: from [109.224.129.17] (port=3144
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UoKfh-0021VS-JH; Sun, 16 Jun 2013 22:39:37 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1squXJOS3Zmhm27nwKgjpKQJfxTPaMtYz_5mzW+9k6_vnQ@mail.gmail.com>
Date: Sun, 16 Jun 2013 22:39:35 +0100
Message-Id: <7DE02533-D72C-4E6D-B0D0-E1C844E5489D@keylevel.com>
References: <981EAD74-B99C-43D8-8DD1-FF06BB484CAA@keylevel.com>
	<CAMKF1squXJOS3Zmhm27nwKgjpKQJfxTPaMtYz_5mzW+9k6_vnQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Disabling udev NIC renaming
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
X-List-Received-Date: Sun, 16 Jun 2013 21:39:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On 16 Jun 2013, at 21:05, Khem Raj wrote:

> On Sun, Jun 16, 2013 at 4:09 AM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I use a USB drive to boot systems for testing and to install the =
image. This works ok for the first, but 'eth0' gets renamed to 'eth1' on =
the second system (etc).
>>=20
>> Is there an option I can set to stop udev creating rules which result =
in the NIC name changing, or should I just add an empty
>>=20
>> /etc/udev/rules.d/75-peristent-net-generator.rules
>>=20
>> file to my image?
>=20
> thats one way. If you are using systemd then systemd already have the
> feature to use persistent IF names. see
> =
http://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfa=
ceNames/

Thanks, that's useful into. I've not got systemd yet, but that certainly =
looks like the way to go.

>>=20
>> Chris Tapp
>>=20
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




