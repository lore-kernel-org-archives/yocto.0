Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC78FE00CB8; Sun, 20 Mar 2016 03:00:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA350E00CAF
	for <yocto@yoctoproject.org>; Sun, 20 Mar 2016 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:
	Subject; bh=g71sKNur6/NCuC6D+ATr+CJYQ4Pjr2LRyTZ17k7LlSQ=;
	b=OMUxQ6TTDO/z+cqH+
	2G0PRXtofuatXpE0gX2p5/NFf8X+dHU+koTHVgzRdPRfWzpSkAS9jDILzZ8jE17viyG7IJPt11Ut1
	yPdURgd0XsK/HHhzDwaot1fdsxIBGyu12tN/8sLy4JFmakew66H1ZWyxkBwAB1VY2QIauKgn+9Kuw
	=;
Received: from durham.keylevel.com ([88.97.63.243]:3209
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1aha9r-000Gjd-2b; Sun, 20 Mar 2016 10:00:27 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Chris Tapp <opensource@keylevel.com>
X-Priority: 3 (Normal)
In-Reply-To: <51323.10.252.7.138.1458327545.squirrel@linux.intel.com>
Date: Sun, 20 Mar 2016 10:00:29 +0000
Message-Id: <2068123A-5E62-416A-969A-7915F8BBE6A4@keylevel.com>
References: <AC14D1AE-9912-433D-BD90-A8519C28BA10@keylevel.com>
	<CAJ86T=VyELsdt2XJ+SV9ZX8fst91ZLBEyU6ucPRXiEWDU9P7Fg@mail.gmail.com>
	<51323.10.252.7.138.1458327545.squirrel@linux.intel.com>
To: alexander.kanavin@linux.intel.com
X-Mailer: Apple Mail (2.3112)
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
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Possible introspection failure in master
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
X-List-Received-Date: Sun, 20 Mar 2016 10:00:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On 18 Mar 2016, at 18:59, alexander.kanavin@linux.intel.com wrote:
>=20
>> The gstreamer _git recipes have not been updated to include the
>> gobject introspection patches which were applied to the 1.6.3 =
recipes.
>=20
> Yeah, I forgot about the git recipes, as they're totally hidden from
> default builds. I'll get them fixed.

Thanks - I=E2=80=99ll try and keep an eye open so I can have a look once =
the changes are available.

>=20
>> Try disabling gobject introspection via DISTRO or MACHINE features, =
ie:
>>=20
>>  MACHINE_FEATURES_BACKFILL_CONSIDERED_append =3D "
>> gobject-introspection-data"
>=20
> That is not going to help, I'm afraid. The recipes need further custom
> fixing even when introspection is disabled.
>=20
> Alex

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


