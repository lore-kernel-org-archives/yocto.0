Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BAE7E00348
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 09:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=c+aGPAA/AGeY6nnur7V0LLsj5jVXrv/4m+EtOqy42Cw=; 
	b=VlplhmeI9is46qPMX28RcHHqOatddQV6UUOtnckdx+S8LCv4KeIXIiHpRcK5PaeoSNvPKgH8Qa83yjqm6mmaslMnR5Wlm4wNT+mqAZiVD9qjeSKy/O1rPUBzQZLHuEVmvvhBxPvVWgXj133/PwqbsnLPM0QNKBdo9bLSEtbcihU=;
Received: from [109.224.129.17] (port=4906
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1Usbe8-002DVs-NA; Fri, 28 Jun 2013 17:35:40 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <51CD521D.1040905@windriver.com>
Date: Fri, 28 Jun 2013 17:35:39 +0100
Message-Id: <2BE66D43-B2C0-4FF5-9B2F-D00834C676EF@keylevel.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<51CD521D.1040905@windriver.com>
To: ChenQi <Qi.Chen@windriver.com>
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
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 16:35:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 28 Jun 2013, at 10:06, ChenQi wrote:

> On 06/28/2013 04:55 PM, Chris Tapp wrote:
>> I'm experimenting with meta-fsl-arm and I need to use 'master' for =
some of the latest updates. However, when I build I get told that =
"Bitbake requires Python 2.7.3".
>>=20
>> My development system is Ubuntu 11.10, which only has 2.7.2 (and is =
out of support, so no updates!) and the "latest" "Quick Start" manual =
simply says that 2.7 is required.
>>=20
>> Is 2.7.3 now a hard requirement (in which case the documentation =
could do with a minor change), or is the version test being too =
specific?
>=20
> I run into the same problem on Ubuntu 11.10, and I installed =
python2.7.5.
> Everything's been working out well so far.

I've done this and all's well. Thanks.

>=20
> //Chen Qi
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
>>=20
>>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




