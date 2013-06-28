Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C4EEE014F5
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 14:36:52 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so2885803pab.11
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 14:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=b4eEL1Y2dE8q+6nCbwz0sULjL4Z4zttr4Md5RaX9u5o=;
	b=bdQl27pWFHvaifjNx229jLuuWAkPf/FAcLlSVm8dtOvLHdPybNpVICD9OcJbI+/8YL
	BVmVGQLnHhfYu6EzDw3ex1ZnqUweczABmx2fwT11FlnCwPOaU45gfIGSFxviwXgWGDou
	5uYFelvMR/ERrW/oWVNIZZU9YgO1Nwne6mIZoQ9Gyg/LlQ5dAirosq3bKddy2JEy0U2v
	WyO/zdYX4C06ztoC3DcvbfYds/IP60TXkdjMhnmEm4rVS9/1FEQCnO0inP2yEXTbCihq
	3rWPqOj2C3X/9IYXSIia/s2FAvdASI0E7yNqeyc85iV0Ml1z1PptWdpxRuY0QnsWHwSf
	dG4g==
X-Received: by 10.68.213.5 with SMTP id no5mr13331829pbc.185.1372455412176;
	Fri, 28 Jun 2013 14:36:52 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id mr3sm9764625pbb.27.2013.06.28.14.36.50
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Jun 2013 14:36:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF52416@ORSMSX101.amr.corp.intel.com>
Date: Fri, 28 Jun 2013 14:36:48 -0700
Message-Id: <23FC58C0-D2D3-4977-A04E-3C9E14C9EBA9@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF521C9@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF523E5@ORSMSX101.amr.corp.intel.com>
	<1527627.N79fC8qGyO@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52416@ORSMSX101.amr.corp.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Layer input
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
X-List-Received-Date: Fri, 28 Jun 2013 21:36:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 28, 2013, at 4:22 AM, "Rifenbark, Scott M" =
<scott.m.rifenbark@intel.com> wrote:

> I count eight meta-* layers in the YP repositories that don't exist in =
the OE area.  I understand what you are saying though and I can word it =
that way to dampen the existence of the "many" differences :)
>=20

hmm may be they should be added to layer index. at least the ones which =
are still maintained.

>>=20
>>> Some YP layers are deprecated (e.g. meta-dlna), some should not be
>> there and
>>> are being actively worked for removal or movement (e.g. poky-extras
>> and
>>> yocto-docs).  Some are experimental layers (e.g. any layer that =
starts
>> with
>>> "experimental"). And one is a contribution layer used by the Yocto
>> Team
>>> (e.g. meta-intel-contrib).
>>=20
>> FWIW, like the other contrib repos I think the latter is open access,
>> anyone
>> can get commit rights to facilitate sending pull requests.
>=20


