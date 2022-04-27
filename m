Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4648DC433EF
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 17:34:33 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.483.1651080863841948585
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 10:34:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de
 header.s=phobos-20191101 header.b=gajyc0st;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:616e:1401:a2bf:ec2:cc23:b9d] (unknown
 [IPv6:2001:a61:616e:1401:a2bf:ec2:cc23:b9d])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id AB15583565;
	Wed, 27 Apr 2022 19:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1651080861;
	bh=FiWZ82+nWauHhVVuTMDPRBgwEiNHklYisOBqbqYA3Rs=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=gajyc0st6ckR2TEYQqkBA5BIlih91qBzTFeKi1gZ+PHuu21ZDJX3GOxHt4lTqs+FX
	 3+M9KyYP9LF5aXQskaAZQI2kiBQ/u7GVzEuuCxsUZT+veqgn6R9n+5CQ47rE94YgqP
	 ZK/aBl+zMGKHAKLMEKVugskEybc67+50rN851t5bFOdkrzdqoEcnftnDWK19wSBtmr
	 JTpCjOiFYKvuYxomd8HQisQ22OZj+Qbs6Zi5fDHXka2nhXB5ykGiEBcetDgX2LmySp
	 dgAs7zT6WhCpMCi69FU1w+PmTqWC13iLSjnHEpyxAZ+aRAUo56M60/f4pSe8jE5qC7
	 ToHUdUku89q9w==
Message-ID: <f406f8b1-d449-07b3-8c40-0b98beb4ce84@denx.de>
Date: Wed, 27 Apr 2022 19:34:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] press request
Content-Language: en-US
To: Adrian Freihofer <adrian.freihofer@gmail.com>,
 Jens-Christoph Brendel <jens-christoph.brendel@computec.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <82d17f75-915d-485f-9353-f091fb3576e8.8d5b84c6-3d2e-4c12-b2dd-1cea205060bd.ca077ef4-6901-4389-9aeb-ca4ee71b74c6@emailsignatures365.codetwo.com>
 <PR3PR08MB5593609231EA36C027A8168AC4FB9@PR3PR08MB5593.eurprd08.prod.outlook.com>
 <8d30877da1510829c42c5a9e6c6dbf102fbd1f5b.camel@gmail.com>
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <8d30877da1510829c42c5a9e6c6dbf102fbd1f5b.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 17:34:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56922

Hi Adrian,

On 27.04.22 10:28, Adrian Freihofer wrote:
> Hi Jens-Christoph
>=20
> By when do you need it?
> The article should probably be written in German, correct?
>=20

It is Linux Magazine, auf deutsch ;-)

Stefano

> Regards,
> Adrian
>=20
> On Tue, 2022-04-26 at 10:25 +0000, Jens-Christoph Brendel wrote:
>> Hello,
>>  =20
>> We, the German Linux magazine, are planning a focus on Linux
>> distributions for the IoT in the 07/22 issue. One of them we have in
>> mind is Yocto. We are therefore looking for an author who can
>> introduce Yocto to our readers in an article. Such an article should
>> be four to six pages (about 4000 characters each) and cover questions
>> such as:
>>  =20
>> - What is Yocto? (main purpose, target audience, compatibility)
>> - Scope of services
>> - Differences and similarities compared to similar operating systems
>> - Advantages and disadvantages
>> - Examples of use
>>  =20
>> After reading this, one should be able to estimate whether Yocto
>> meets the user's expectations and whether it is worth trying out.
>>  =20
>> Is there anyone out there who would like and have the time to write
>> such an article for us? We would pay 80 Euro per printed page. We
>> prefer plain ASCII as text format and need some illustrations
>> (screenshots or diagrams or photos). Please contact me at
>> jens-christoph.brendel@computec.de.
>>  =20
>> Thanks in advance
>> Jens-Christoph
>> . . . .
>> Disclaimer: The recipient acknowledges that Computec Media GmbH is
>> unable to exercise control over the content of information contained
>> in transmissions made via the Internet. Computec Media GmbH hereby
>> excludes any warranty, written or implied, as to the quality or
>> accuracy of any information contained in this message and any
>> liability of any kind for the information contained, therein, or for
>> its transmission, reception, storage or usage in any way, whatsoever.
>> Sitz der Gesellschaft und Registergericht: F=C3=BCrth (HRB 14364)
>> Gesch=C3=A4ftsf=C3=BChrer: Christian M=C3=BCller, Rainer Rosenbusch Um=
satzsteuer-
>> Identifikationsnummer: DE812575276
>> Informationen zur Datenverarbeitung und Datenschutz:
>> https://www.computec.de/datenschutz
>> . . . .
>>
>>
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56907): https://lists.yoctoproject.org/g/yocto/mess=
age/56907
> Mute This Topic: https://lists.yoctoproject.org/mt/90704769/3618551
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sbabic@denx.=
de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

