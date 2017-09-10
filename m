Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 935E4E00C35; Sun, 10 Sep 2017 06:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3326E00851
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 06:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YjgCRPEvaEaDia9cBLM47hRd2Pi517Btc87SZxJply4=;
	b=q/s4e7cJXYEs+5MvP5I+JVVre
	riidQFknwOz3lb7vYwulxZh3cy2pDcIBSEDWqJL6yZTAHdQE5GkxxcX5moUltLRIQd8V7fmiUYhz6
	WUAM795iDNVlcR6oDoqa5LIyv8AhktszdGJfXr6rv2maIoAqMEPk/O9H8UiY2TW7w2Uqg=; 
Received: from durham.keylevel.com ([212.159.18.174]:10637
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.89) (envelope-from <opensource@keylevel.com>)
	id 1dr2ai-0015O1-Ly; Sun, 10 Sep 2017 14:48:04 +0100
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <ef51f43e-9a37-995c-3577-5df51898af3c@dynamicdevices.co.uk>
Date: Sun, 10 Sep 2017 14:48:11 +0100
Message-Id: <75F2F15B-5E1A-4545-9DF6-94569205EF21@keylevel.com>
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<b59f7241-632a-0801-1dce-ade844162f23@dynamicdevices.co.uk>
	<6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
	<ef51f43e-9a37-995c-3577-5df51898af3c@dynamicdevices.co.uk>
To: Alex Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: Apple Mail (2.3124)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Sun, 10 Sep 2017 13:48:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On 10 Sep 2017, at 12:53, Alex Lennon <ajlennon@dynamicdevices.co.uk> =
wrote:
>=20
>=20
>=20
> On 10/09/2017 12:00, Chris Tapp wrote:
>>> On 10 Sep 2017, at 09:05, Alex Lennon =
<ajlennon@dynamicdevices.co.uk> wrote:
>>>=20
>>> Hi Usman,
>>>=20
>>> On 10/09/2017 08:00, Usman Haider wrote:
>>>> Hi,
>>>>=20
>>>> Can someone please recommend some good machine for yocto =
environment and building sdks. I am interested in RAM, hard disk space, =
processor.
>>>>=20
>>>>=20
>>> I use a AMD FX-8350 4GHz Eight-Core Processor on a GA-78LMT-USB3 =
mainboard with 32GB RAM and a couple of 4TB drives, running Ubuntu =
16.04.03 LTS.
>> I have a similar spec, except I use an SSD for the build area and =
only 16GB RAM (I don=E2=80=99t see more than about 12GB used during a =
build) - a build from scratch (excluding download time) takes just under =
an hour.
>>=20
>>=20
>=20
> I am toying with putting an SSD in there. I use the Samsung Evo 1TB =
units for day to day on my laptop and that has worked very well for me. =
Maybe I should move that forward.

I use a 750 GB Evo - mainly so there=E2=80=99s lots of over-provisioning =
as builds create a lot of artefacts. Better wear than some HDDs though =
as the heads get a really hammering.

> 16GB is no doubt absolutely fine in general. I suppose in part it may =
depend on how many tasks are executing in parallel on the CPU cores.
>=20
> I find a very few recipes are _real_ memory hogs. I imagine I could =
get by with less RAM but Chromium and possibly Qt5 stick in the mind as =
having intermittent build issues when the RAM was lower.

Sure, it will depend on what=E2=80=99s being built - this machine is =
quite old now and 16 GB needed a (not so) small mortgage when it was =
built ;-)

>=20
> Cheers!
>=20
> Alex
>=20

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


