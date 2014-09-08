Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFC7E00786; Mon,  8 Sep 2014 12:08:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533E6E0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 12:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=F5UPoJQnQtP10/3NZ385qMxmV7haJflTP1Rh5xNWsxM=; 
	b=RZN/EEid4SFeDPZEORfTcCgzWnEQbWPt9gzZAwLKutTef+xingCTVJwF/Mkb4CnyEfUygPWjhzY2nT8CEhJREqHrc2vW/vem5xm9E7XtA7daC6xksy7UocLSN8QAnb6ucRBz/zQL+L8t+s31BWr8YqhBNUgy/CJ1nglyhXFopcY=;
Received: from [109.224.171.0] (port=61594
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XR4Ie-001hKA-BX; Mon, 08 Sep 2014 20:08:30 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1842521.5a185EsvZP@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 8 Sep 2014 20:08:28 +0100
Message-Id: <3A36BB2E-F11B-4011-9C78-456A5E40D4D5@keylevel.com>
References: <F2F22E20-4E45-4693-95D5-9FC01F81E8D8@keylevel.com>
	<1842521.5a185EsvZP@peggleto-mobl5.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: How does RRECOMMENDS work?
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
X-List-Received-Date: Mon, 08 Sep 2014 19:08:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 8 Sep 2014, at 09:40, Paul Eggleton <paul.eggleton@linux.intel.com> =
wrote:

> Hi Chris,
>=20
> On Monday 08 September 2014 08:55:15 Chris Tapp wrote:
>> I've got a recipe to which I've added:
>>=20
>> RRECOMMENDS_${PN} =3D "<package>"
>>=20
>> The documentation says that "If, during the build, a package from the
>> RRECOMMENDS list cannot be found, the build process continues without =
an
>> error".
>>=20
>> I tried a build without <package> (i.e. no recipe) and it failed with
>> "Nothing provides <package>". Is this the expected behaviour? If so, =
is
>> there a way I can pull in a package if it is build-able and skip it
>> otherwise?
>>=20
>> In this case <package> contains some utilities which can be of help, =
but
>> they're not required in any way at runtime.
>=20
> Scott has just pinged me about this, the manual is slightly =
misleading. How it=20
> works is, if you have an item mentioned in RRECOMMENDS, there must be =
a recipe=20
> that provides that item via RPROVIDES (or indirectly via PACKAGES or=20=

> PACKAGES_DYNAMIC), otherwise you will receive the error you mentioned.=20=

> However, if the package does not actually end up being produced, that =
is OK.
>=20
> RRECOMMENDS is generally for things that you normally would expect to =
be=20
> available, but may not be for some reason (e.g. kernel modules that =
might=20
> instead be compiled in and thus are not produced as a package).

That makes sense. Thanks for the clarification :-)

> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





