Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA48E01408
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 14:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=kBqTCImmK6ow+4sB8cjnaWnyN+oCKkPBMBQfnN8MI8A=; 
	b=TUj+40WicI6CLfB5RtD8ZCgEVh5QoSNFwkFNwIasD3yTfx846CDHZJkW3JDo14JDSVFsfDQ6TczILkY7JIfgX6liMzYNgHNXiI9dtlj3Aqp0sMpNER0zby0//iuT6enhJKAq+7NLJWrQ3Imum3pMoVNoauCwRAujugITiNuzpyo=;
Received: from [109.224.129.17] (port=13625
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UrxBf-003ovE-J5; Wed, 26 Jun 2013 22:23:35 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAPhnLPDgmgzPhqFcVAsbWbeZSz_CFWV2sQAaE==43_r83bxj1A@mail.gmail.com>
Date: Wed, 26 Jun 2013 22:23:40 +0100
Message-Id: <C739FA9A-AC1A-4E16-B3F6-625AB7A44CEA@keylevel.com>
References: <CE7F8427-5728-4299-BFC3-0C3A03C7A914@keylevel.com>
	<CAPhnLPDgmgzPhqFcVAsbWbeZSz_CFWV2sQAaE==43_r83bxj1A@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
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
Subject: Re: Using meta-fsl-arm with 'danny'
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
X-List-Received-Date: Wed, 26 Jun 2013 21:23:38 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 26 Jun 2013, at 22:17, Flanagan, Elizabeth wrote:

> On Wed, Jun 26, 2013 at 1:59 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I'm trying to get core-image-minimal to build using meta-fsl-arm / =
meta-fsl-arm-extras under 'danny' for the 'wandboard-dual' machine.
>>=20
>> However, I can't find a tag/branch that works with 'danny'. =
Specifically, when I use the 'danny' branch there is a udev_173.bbappend =
in meta-fsl-arm, but 'danny' only supports udev_164.
>=20
>=20
> Is this perhaps what you are hitting?
>=20
> from the meta-fsl-arm danny branch:
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/README?h=3Ddan=
ny
>=20
> To avoid the meta-oe dependency add to local.conf:
>=20
> BBMASK =3D "udev_.*\.bbappend$"

Thanks, that's it. Not sure how I missed that one !

> -b
>=20
>>=20
>> I also find a similar problem with meta-fsl-arm-extras.
>>=20
>> I must be missing something here...
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
>=20
>=20
>=20
> --=20
> Elizabeth Flanagan
> Yocto Project
> Build and Release

Chris Tapp

opensource@keylevel.com
www.keylevel.com




