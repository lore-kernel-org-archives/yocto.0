Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2495.1596087948435455390
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 22:45:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=bG8MkltW;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0836EE01F46; Wed, 29 Jul 2020 22:45:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.178 listed in list.dnswl.org]
	* -0.8 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8278E01F43
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2020 22:45:46 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id l12so4834897pgt.13
        for <yocto@yoctoproject.org>; Wed, 29 Jul 2020 22:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=UYwcy1MnC7S5O58oJeaQLYHZPvTVWfdghpjOQmPMGLE=;
        b=bG8MkltWXA1OemMg2J/V7XIG7JoIzF4e7ycEVhlNkLj4H1MypuMS47DeUqU5T+OuhP
         ISIidKG/bHywObL6LGIyrwn/RYyC8gIUE66gvJjnypV/vKcG+b458Fjauoc2jtKPs9bq
         +OX5B6ZQjfrYhsx/XOPtNelCibDmh6K9Lzx4bL74AXdqVj/Zv+ulPXezV9ebRwiD+7Ky
         KabwGTl8nZ7OIygDfiMyWfEuhOBxE82D6eANLwYu8edYj5Za9TpNori37nlTrizg6seV
         cNgVDG0nRvetq/ByLdiripleXJSN93EXyKcpMo2QJ12fsUUNlVYjCpweCbDR29mmSlIJ
         RPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UYwcy1MnC7S5O58oJeaQLYHZPvTVWfdghpjOQmPMGLE=;
        b=suRx0GPSKEt1KNfZHhYgbea6NkhoTRN4rvXFMaypxLw5DAxk/Ij16pCu3M82dP0G3O
         RgkaEaz2656m9kiuEm7govnGMcHBbvgyDTify2h1hKO5h3ugnIiuOMiow4UMYFJRIjJ1
         nwZiDur7+n4ysO6iL44HFkf/DZsGsmd6T973ehd1jWCok5Fyglv0PrRjjxP/YeESbU/I
         Lo9NNCWAvemlc36wF7Pbh7AD6WdoHvbDW/UDC0OHmoLiAcf4MCtl21r+WmgwbHCVd251
         pvueZZHkcQlHJKgscOV8YaqiL0Yvma4ICojDJrdC2Buat6BFLe3T3asrAiUUEjBaUfJE
         wMXQ==
X-Gm-Message-State: AOAM5339824yln9ngzsqK+cqyzMdt+QDUX0TBVbaWImE8OT431/3e1fO
	wCBvQr8MZA/oR8QM5r82nYVavG1xulA=
X-Google-Smtp-Source: ABdhPJwhx9abfHQVBmyB7O6/SoUwfV6xLHUE5wAIQyRRDGMiADOPVXanFKSdmM9RJVd4c4k94seSew==
X-Received: by 2002:a63:cb03:: with SMTP id p3mr32525197pgg.444.1596087945595;
        Wed, 29 Jul 2020 22:45:45 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0:5ba:2655:68eb:112e? ([2601:646:9200:4e0:5ba:2655:68eb:112e])
        by smtp.gmail.com with ESMTPSA id n18sm838122pgd.91.2020.07.29.22.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 22:45:44 -0700 (PDT)
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
To: Scott Whitney <sdw@inea.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <16872e28-2fcc-9de2-dcfc-ad5e76a29098@gmail.com>
Date: Wed, 29 Jul 2020 22:45:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 7/27/20 12:51 PM, Scott Whitney wrote:
> Hi Yocto group,
>=20
> I=92m working with a newly-released copy of Yocto Zeus from Variscite fo=
r=20
> the i.MX8MM Mini, although the same option seems to apply to the=20
> previous Yocto Warrior.
>=20
> I understand that a Linux real-time kernel can be enabled by setting=20
> LINUX_KERNEL_TYPE =3D =93preempt-rt=94. =A0Where does this option need t=
o be set=20
> so that when I bitbake fsl-image-qt5, I get the Linux =93preempt-rt=94=
=20
> kernel instead of the =93standard=94 kernel?
>=20
> Is there a specific configuration file that needs to be modified, or a=
=20
> new recipe in a layer?=A0 I am confused and hoping that you can help.
>=20

These are custom options perhaps you have from your SDK provider, since=20
variscite SOMs are based on IMX perhaps you also need to see if they are=
=20
using linux-imx kernel and ensure that they have preempt-rt patches=20
integrated into which ever kernel you are using. Thereafter you could=20
use right kconfig options to enable it. So first find out who is=20
providing your kernel and does it have above

> Best regards,
>=20
> *Scott D. Whitney*
>=20
> Principal Software Engineer
>=20
>=20
> Intertech Engineering Associates, Inc.
> 100=A0Lowder=A0Brook=A0Drive, Suite=A02500
> Westwood,=A0MA=A0=A002090
> _sdw@inea.com <mailto:sdw@inea.com>_=A0=A0=A0=A0|=A0=A0=A0=A0 T:=A0781-8=
01-1152=A0=A0=A0=A0|    =20
> F:=A0781-801-1108=A0=A0=A0=A0| _www.inea.com <http://www.inea.com/>___
>=20
>=20
>=20
>=20
