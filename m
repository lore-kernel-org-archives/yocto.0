Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87FDAC63697
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.13741.1648917433808698641
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:37:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net
 header.s=default header.b=WsbARX4C;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 36F36BD0FD;
	Sat,  2 Apr 2022 16:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 36F36BD0FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648917431;
	bh=CdkPhdYrzwiiFyUR0DmeqTDJVbXqswneIJ+yB/Qs+n8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WsbARX4CaV9ORRq1WXB97OiiVubAIq/tVHlAE0dpTSQjie4p6yFNcz4Jv4MebmofS
	 oWUNvYzbXTEYAsFl5vXUBopxP/e7fDKuCvykAND/CLbdnargq+nnhgzyhCFreHh9n9
	 ZPrTCFB7wkG2VEpxInhcAKR3rOEBFM7yuiCBwr5/UjIwzNommZba+NBZ0WdNyCzwfg
	 22Rog5yGDEcupyI8cttNbNt2j2j9T4Ov6QTwdjOOnyQgOXzPsd5ETznfbWs1kqDh7h
	 T5vDj9or5XqQKFZt61UeU27omAb7cXbo2Bkvsj2Rqtgb6uFD2N3gWaAfr8rFo6oerF
	 hqqKMLRWynfWg==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACBwjl3Z7rRa; Sat,  2 Apr 2022 16:37:07 +0000 (UTC)
Date: Sat, 02 Apr 2022 12:37:07 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 62D17BD006
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648917427;
	bh=CdkPhdYrzwiiFyUR0DmeqTDJVbXqswneIJ+yB/Qs+n8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EMu8LHyQ5nR6+mcNi/tAOlGde37rfH/ddX2/n+tZOxUxPjJMya7uFXzM1G+ZIAWPi
	 tMti7tAON7THwJBBMK113kTfLQbrwBRm1bmpNJdZFYYeegTwyw5+Tvl/e9adR1Aesf
	 USjLQa1fvRON+MON7RpyD24+vZLSGL9FsEV8/fXJqNwBckw/LPcORS9+lhOFD2R+eQ
	 DTncxS3JTfKGS6tTLL6mPGt1WqBnClIgW1z1SxsRESPs6WmyNCWmUaA1TyDAL45n6V
	 YhMmMhQTgphpXCBHSGesHtbaIYsyzI4XEH2sN+fyHinxHLfcUPxuunX4/bWRB8L0D0
	 oy6NAaVyVongA==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
In-Reply-To: 
 <CAMKF1sqa9K8XJ512VByqDkpPLtG7c7OkvoDsVLysVhukN2bFxA@mail.gmail.com>
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
 <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
 <9bb492b8e60e2ba16b978016203341a7@vivaldi.net>
 <CAMKF1sqa9K8XJ512VByqDkpPLtG7c7OkvoDsVLysVhukN2bFxA@mail.gmail.com>
Message-ID: <72f5807e448949cd54a28fad6ecf64ff@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56644

I=E2=80=99m actually trying this on an RP4 running Raspbian.

On 2022-04-02 12:15, Khem Raj wrote:
> On Sat, Apr 2, 2022 at 1:47 AM jchludzinski <jchludzinski@vivaldi.net>=20
> wrote:
>>=20
>> $ git clone git://git.yoctoproject.org/poky.git
>> $ cd ./poky
>> $ git checkout yocto-3.4.2
>> $ cd ..
>> $ source ./poky/oe-init-build-env
>> $ cd ./build
>> $ time bitbake core-image-minimal
>> ...
>> ERROR:  OE-core's config sanity checker detected a potential=20
>> misconfiguration.
>>     Either fix the cause of this error or at your own risk disable the=
=20
>> checker (see sanity.conf).
>>     Following is the list of potential problems / advisories:
>>=20
>>     Specified SDKMACHINE value is not valid
>>=20
>>=20
>> Summary: There was 1 WARNING message shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit=20
>> code.
>>=20
>> ________________________________________________________
>> Executed in    3.92 secs    fish           external
>>    usr time    1.07 secs    9.77 millis    1.06 secs
>>    sys time    0.18 secs    2.96 millis    0.17 secs
>>=20
>>=20
>>=20
>> On 2022-04-01 18:09, Khem Raj wrote:
>>=20
>> On Fri, Apr 1, 2022 at 2:02 PM jchludzinski <jchludzinski@vivaldi.net>=
=20
>> wrote:
>>=20
>>=20
>> But obviously commented out.
>>=20
>> On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
>>=20
>> There's this:
>> #SDKMACHINE ?=3D "i686"
>>=20
>>=20
>> OK it should be ok then. Can you describe your steps to setup the=20
>> system?
>> maybe there is some caveat
>>=20
>>=20
>> ---John
>>=20
>> On 2022-04-01 16:22, Khem Raj wrote:
>>=20
>> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
>> lists.yoctoproject.org
>> [1 [1]] <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>>=20
>> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
>> host on the same RP4. Admittedly, a not practical platform for
>> this
>> purpose but it should work.
>>=20
>> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
>> I've tried simply using the default setting and end up with:
>>=20
>> _ERROR:  OE-core's config sanity checker detected a potential
>> misconfiguration._
>> _    Either fix the cause of this error or at your own risk
>> disable
>> the checker (see sanity.conf)._
>> _    Following is the list of potential problems / advisories:_
>> _ _
>> _    Specified SDKMACHINE value is not valid_
>>=20
>> I've tried editing ./conf/local.conf:
>>=20
>> MACHINE ?=3D "qemuarm64"
>>=20
>> #MACHINE ??=3D "qemux86-64"
>>=20
>>=20
>> It's complaining about SDKMACHINE setting which is a separate
>> variable, can you check your local.conf if it's set to something
>>=20
>> But this accomplishes nothing. Needless to say, I'm a yacto/OE
>> newbie, so any suggestions would be greatly appreciated.
>=20
> are you on a x86_64 host? Secondly try to uncomment SDKMACHINE setting
> in local.conf
> and see if it helps. Also check if your default shell is bash or dash.
>=20
>>=20
>> ---John
>>=20
>>=20
>> Links:
>> ------
>> [1] http://lists.yoctoproject.org
>>=20
>>=20
>>=20
>> Links:
>> ------
>> [1] http://lists.yoctoproject.org
>>=20
>>=20
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56618):=20
>> https://lists.yoctoproject.org/g/yocto/message/56618
>> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> [jchludzinski@vivaldi.net]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
NULL

