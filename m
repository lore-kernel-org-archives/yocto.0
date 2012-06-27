Return-Path: <koen@beagleboard.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 524B9E01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 07:59:36 -0700 (PDT)
Received: by eekb45 with SMTP id b45so502555eek.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 07:59:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to
	:x-gm-message-state;
	bh=awnkHdQyqlD1/JGedlrrXNtBrbv+ebhUFYIH6x69rqE=;
	b=cKoTmkRBgi+xAOuNcjS4tEHdsSzrhhDZevd8rjYPaomuT2JgipY7BeJTHxWszb+H7a
	AXAZ+oEYEM0vl3Y8tW2X+5a35D5MsuKw8zEQcogWa+DjLOh3LlsoxaP/R05qoO94ZhOF
	8GslOoAwi6aEOVyxcV+owDClbuo3rhQn7/8SGt0/oaxzcif7v7ZW1YXHKfLzXvEDY8Nd
	ua60Fe4UpY4BSldGfdtCyxsM1NGUM2E+aTM8FQ1hEjJaBDzpsB2I4vEMaiDpdEbW6kfo
	Xib4kGG4W00VlYSt6AhuDMYwotQF2kJlcSOsb2XmWbfPfp4tGtcDJi3zPK0/METorA+T
	E8RQ==
Received: by 10.14.94.77 with SMTP id m53mr4041177eef.107.1340809174899;
	Wed, 27 Jun 2012 07:59:34 -0700 (PDT)
Received: from [172.20.1.66] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id h53sm160011181eea.1.2012.06.27.07.59.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 07:59:33 -0700 (PDT)
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
In-Reply-To: <4FEACDE6.7040701@r-finger.com>
Mime-Version: 1.0 (1.0)
Message-Id: <83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
X-Mailer: iPad Mail (9B206)
From: Koen Kooi <koen@beagleboard.org>
Date: Wed, 27 Jun 2012 16:59:31 +0200
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQkBM2joEFmJMRPCi+jniEVAv+T304ToXyWsXsWyiHsV+/K/ZorFyp4RORsIpFQNcdILpI94
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
X-List-Received-Date: Wed, 27 Jun 2012 14:59:36 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



Op 27 jun. 2012 om 11:09 heeft Tomas Frydrych <tf+lists.yocto@r-finger.com> h=
et volgende geschreven:

> Hi Tim,
>=20
> On 26/06/12 19:52, Tim Bird wrote:
>> On 06/26/2012 10:18 AM, Tomas Frydrych wrote:
>> For example, after reading various FAQs
>> I still have no idea what kind of thing "Poky" is.  I know
>> that bitbake is a build tool.  I know that OE is a package
>> meta-information project.  Yocto Project is an umbrella project
>> for a lot of tools and technologies (Poky among them).  But is
>> Poky a distro (sample/reference or otherwise?) or something else?
>=20
> For those of us who have been around Poky well before Yocto came around,
> we know what Poky used to be, have some inkling what it is, but we are
> not always entirely clear what Yocto is. :-)
>=20
>=20
>> When I ran my recently-built image, my target /etc/issue had this content=
:
>> "Yocto (Built by Poky 7.0) 1.2"
>=20
> My understanding (with the above disclaimer!) is that Poky is a build
> system, Yocto is a distro, so I read the above 'Yocto v1.2 image built
> by the Poky v7.0 tool'. I think the point of maintaining the distinction
> is that you can use Poky without the Yocto Distro (/meta-yocto).


Yocto is NOT a distro. Poky is both a distro and buildsystem. This thread hi=
ghlights the reason the oe folks have been pushing to get rid of the 'poky' n=
ame completely to avoid needless confusing situations like this.=20
It's sad to see that even the official stuff gets it wrong...



>=20
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

