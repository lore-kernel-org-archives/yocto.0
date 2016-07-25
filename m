Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9DD9E00E8E; Sun, 24 Jul 2016 23:47:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99E8EE00E88;
	Sun, 24 Jul 2016 23:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=G3AP+6JRgoGwLNM4AkQzys0z6h8FA/rxBuhoutNmer0=;
	b=Xkgnyaza6Mkzd8dsP08+aS2m4
	AII143LRJcOMBnlCCQLmXS0gF2Z/ZBqN2ANc4V7tsE6/buBW9dOJfwsqcwR45+w7YhV10/k9DeKMK
	IYbqFQ1C3w5JcavYVU2jaHyRTrQS/Ms22BL/NrS7ykaz/kX4b++Z0boD1OS3aHNFB24MY=; 
Received: from keylevel.plus.com ([212.159.18.174]:58630
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <opensource@keylevel.com>)
	id 1bRZfi-003Whr-Rn; Mon, 25 Jul 2016 07:47:27 +0100
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <c798ca0d-2c13-1ca5-978a-6d4a75efd8aa@windriver.com>
Date: Mon, 25 Jul 2016 07:47:27 +0100
Message-Id: <1B816A0A-7169-4CD9-9003-B9564208EB0F@keylevel.com>
References: <829C58DE-3920-4E09-836C-2B75E0836725@keylevel.com>
	<c798ca0d-2c13-1ca5-978a-6d4a75efd8aa@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel bug 109051
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
X-List-Received-Date: Mon, 25 Jul 2016 06:47:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

> On 25 Jul 2016, at 03:40, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>=20
> On 2016-07-24 6:09 PM, Chris Tapp wrote:
>> I=E2=80=99m using the meta-intel =E2=80=9Cvalley-island=E2=80=9D BSP =
under =E2=80=9Ckrogoth=E2=80=9D and think I may have run into =
https://bugzilla.kernel.org/show_bug.cgi?id=3D109051.
>>=20
>> I=E2=80=99m using a J1900 (listed as affected) and the system locks =
up totally (running a graphics-based application) after an indeterminate =
period.
>>=20
>> Using the scripts referenced on the related bug page for comment 437 =
(https://bugzilla.kernel.org/show_bug.cgi?id=3D109051#c437) appears to =
resolve the issue.
>>=20
>> Is anyone aware of this and/or know if it will be fixed within the =
Yocto kernel tree?
>=20
> Not unless someone sends a patch.
>=20
> If you have a platform showing the error, and have tested a fix .. why
> not just send the patch ?

Thanks Bruce,

Unfortunately, I=E2=80=99ve not found one yet. The scripts I mention =
just disable c-states as the problem seems to be an interaction between =
the i915 driver and power management. I can probably live with this for =
my application, but it still lives a window during boot and the script =
running where a lockup could happen - unlikely, as the bug thread =
implies the problem is more likely to show when the system has idle CPU =
resources.

=46rom the thread it looks as if it may be possible to produce a patch =
as there are reportes that the problem may be fixed / does not show in =
later kernel versions (4.6?), but it also looks as if there may be more =
than one patch required (in different areas).

I=E2=80=99ll have a dig, see what I can find and try to produce a patch =
set - I=E2=80=99m not a kernel expert, so it may take some time ;-)

>=20
> Bruce
>=20
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>=20

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


