Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AECEE0140A
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 10:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=n6eSi8ieiMNgBOTtXt6sUckwu5SpWcnInf5KX/bemq4=; 
	b=PwO9hu/8eEHz0GhRY0TX5af8uz5vrx4NENTG2+KOre4UQr1gRSrZJfB63jG5fprzlDw9DrolaOZYiRJV8kr3PuaCPem64S4mXxbFAIrCGzE8IAue0hFi9FDzh0c2L15oTMHxm2wzQzKBP3YC6njv1gDO7j7g3+MA+KM+s3AptAw=;
Received: from [109.224.129.17] (port=5870
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1Uq4j1-0010dB-Hk; Fri, 21 Jun 2013 18:02:15 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <2225944.Df6aZdSxGh@helios>
Date: Fri, 21 Jun 2013 18:02:17 +0100
Message-Id: <DEB8F889-0695-4A27-86D6-353469368852@keylevel.com>
References: <AE80DF1D-A094-4F9F-96BE-8A782F1DB5FE@keylevel.com>
	<2225944.Df6aZdSxGh@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: Openembedded-core
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
X-List-Received-Date: Fri, 21 Jun 2013 17:02:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks Paul / Elizabeth,

On 21 Jun 2013, at 17:53, Paul Eggleton wrote:

> On Friday 21 June 2013 17:47:13 Chris Tapp wrote:
>> Simple question - Is openembedded-core included in one of the Yocto =
meta
>> layers, or do I need to download it from the OE git repository?
>=20
> It comes as part of the poky repository if you're using that. The =
alternative=20
> is to use bitbake and OE-Core separately.

I thought it was, but I can't get meta-fsl-arm-extras to build and =
thought it was worth checking this out first ;-)

Time to dig...


> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

Chris Tapp

opensource@keylevel.com
www.keylevel.com




