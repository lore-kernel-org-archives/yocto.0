Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCCFDE0085F; Mon,  8 Sep 2014 12:11:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC42E00814
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 12:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=mYkC9WAWYCirZIaRioG0FQzEtC8JiUXtNB+FeripuJ0=; 
	b=fFUHPb9Sz3C4cdw3pfyrIFJobWognvsNwENmSfGnKawLFQlZfd3n3HgE381oLwBb15BV3XLww0AwtyEGsG1qAsNmddwuG03D4/PySk7BFljtVKDemB27SFin/9xN89BFKW4m6cOZL3q6jFrDgZm2e88QhSwCaY/CzTeu5fFHEZo=;
Received: from [109.224.171.0] (port=60630
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XR4Ky-001hv3-Fk; Mon, 08 Sep 2014 20:10:54 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <7090234.WN5mfuZ9Sn@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 8 Sep 2014 20:10:53 +0100
Message-Id: <D8CCFFB4-9AC4-4021-A04E-A5D36463EBA8@keylevel.com>
References: <E4E599B2-1AEC-4FCD-9AA8-BEA0A0BB541A@keylevel.com>
	<7090234.WN5mfuZ9Sn@peggleto-mobl5.ger.corp.intel.com>
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
Subject: Re: Daisy mercurial support
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
X-List-Received-Date: Mon, 08 Sep 2014 19:11:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 8 Sep 2014, at 09:44, Paul Eggleton <paul.eggleton@linux.intel.com> =
wrote:

> Hi Chris,
>=20
> On Sunday 07 September 2014 22:59:58 Chris Tapp wrote:
>> I'm trying to build a recipe under "daisy" that uses a mercurial =
repository,
>> but I'm getting "Nothing provides mercurial-native".
>>=20
>> Adding:
>>=20
>>  ASSUME_PROVIDED +=3D "mercurial-native"
>>=20
>> to my local.conf appears to fix this, but is this what I should be =
doing?
>=20
> I guess we haven't paid too much attention to this since we don't tend =
to have=20
> recipes that fetch from mercurial repositories, so we've left it open =
- either=20
> you do this and ensure mercurial is installed on the host, or provide =
a recipe=20
> so that it can be built (one is provided in meta-oe, incidentally).

Thanks - I'll probably just run with the host installed mercurial (until =
I find a host without it!).

I must admit, this one (dvb-apps) is the first one I've come across that =
uses it ;-)

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





