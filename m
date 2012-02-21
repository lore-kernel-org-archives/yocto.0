Return-Path: <gizero@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27A82E0044B
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 08:28:22 -0800 (PST)
Received: by eaai11 with SMTP id i11so2733205eaa.35
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 08:28:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gizero@gmail.com designates
	10.213.17.6 as permitted sender) client-ip=10.213.17.6; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of gizero@gmail.com
	designates 10.213.17.6 as permitted sender)
	smtp.mail=gizero@gmail.com; dkim=pass header.i=gizero@gmail.com
Received: from mr.google.com ([10.213.17.6])
	by 10.213.17.6 with SMTP id q6mr3816409eba.40.1329841701845 (num_hops =
	1); Tue, 21 Feb 2012 08:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=+DG0tHg5nX37o1oyd4ICMyyTBnr4VKDaP18ZnTfxo2c=;
	b=R5eDs2ZKVP5tKO2dAEWqIaDRki3tjlrTriSYAeVap09/yCzW2B+AqTBrMXSqqDtKU+
	slpoTqM0UtJ0jLmByrJV9xU2UMlMY7fJws5D902wy7XOImzacX4XH8luKTKJa3udxYeX
	TKdttS5x2xnCbYzcvAbelPU6LYQKKIUFMo0gU=
Received: by 10.213.17.6 with SMTP id q6mr3037750eba.40.1329841701759;
	Tue, 21 Feb 2012 08:28:21 -0800 (PST)
Received: from [151.37.199.39] (adsl-39-199.37-151.net24.it. [151.37.199.39])
	by mx.google.com with ESMTPS id
	a58sm91688679eeb.8.2012.02.21.08.28.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 21 Feb 2012 08:28:20 -0800 (PST)
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
	<4F215A28.4030409@communistcode.co.uk>
	<4F215DF0.4020503@mlbassoc.com> <4F216C3F.6040901@mlbassoc.com>
	<4F217046.2090306@mlbassoc.com> <4F217135.209@communistcode.co.uk>
	<CAFZh4h8EjS6NSVgcUDnF0+AbUYk4Fga0Ek6hnMXWcHjLMozAqg@mail.gmail.com>
	<CAC+thW2MvyiELxcy5PUh9r2NrjEkvPyLZW5qDbUbt7Tu7F2Rbg@mail.gmail.com>
	<4F42127E.6090106@communistcode.co.uk>
In-Reply-To: <4F42127E.6090106@communistcode.co.uk>
Mime-Version: 1.0 (1.0)
Message-Id: <F26041C8-FDEF-44AD-A752-6B6472499455@gmail.com>
X-Mailer: iPhone Mail (9A405)
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 21 Feb 2012 17:28:14 +0100
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BeagleBone with meta-ti layer
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
X-List-Received-Date: Tue, 21 Feb 2012 16:28:23 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Jack,

Il giorno 20/feb/2012, alle ore 10:29, Jack Mitchell <ml@communistcode.co.uk=
> ha scritto:

> On 20/02/12 06:39, Andrea Galbusera wrote:
>> Hi,
>>=20
>> On Thu, Jan 26, 2012 at 4:38 PM, Brian Hutchinson<b.hutchman@gmail.com>  w=
rote:
>>> I grabbed a bag of chips and a beverage ... watching this thread!  I'm
>>> right behind you guys so thanks for blazing the trail.  I have other
>>> TI parts to work with but starting with first BeagleBoard (&
>>> BeagleBone) since that is the reference.
>>=20
>> Was this an happy ending story? Where you guys successful in building
>> meta-ti layer under Yocto umbrella?
>>=20
>> Regards,
>> Andrea
>=20
> It's still in the air at the moment. Texas Instruments are going through a=
 process to abstract meta-ti layer into a pure BSP and cut out all the distr=
o specific features. When this is complete then it will be good to go in Yoc=
to.
>=20
> If you look at the archives of the meta-ti mailing list there has been ext=
ensive discussions on it recently.

Thanks for pointing me to the relevant discussion. I joined meta-ti list too=
 now.

Cheers,
Andrea=

