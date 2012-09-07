Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F057E0152E
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 13:04:32 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so824692ghb.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 13:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=r+SR3JAELLx4meM7b48vz+XmpHWpKJ3P2xv7SYzWRDE=;
	b=NEyHZZkav2lplju0FizQTSC5Abfs3qxszDXqPITCagkDHFgk03+7sPELiwM4i5EE7Z
	VrVYodDE6EKFZa0NoQHX/5hR9VhwXc0me8LIDymy69sWxPxGwD3YlUmciNvnQNcZzdF6
	kfwszO2u9WJwXTthHfDilJNIWU5kP9EEDdapqtBzMdIdmdF9rCIkT3Y5hazr9ePjEvSs
	R0/fS+MwU4oupG12CQZU8Sog5Ghe4PI+BUKgiUFAYiK0BonTMr9TlI2170uYvHdxKzSN
	fZWls6TKbjaUkLcpTUZV/jKgJQaDAVyfq0CDo/DyWrw+3ys0R/nbRifyCL3dgIUBjn90
	hATg==
Received: by 10.236.145.40 with SMTP id o28mr6015719yhj.70.1347048258272;
	Fri, 07 Sep 2012 13:04:18 -0700 (PDT)
Received: from [10.36.201.137] (mobile-166-147-127-002.mycingular.net.
	[166.147.127.2])
	by mx.google.com with ESMTPS id a4sm5297925anm.14.2012.09.07.13.04.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 07 Sep 2012 13:04:17 -0700 (PDT)
References: <D3756416-0CDC-425D-9258-E0738FFFF8A3@keylevel.com>
In-Reply-To: <D3756416-0CDC-425D-9258-E0738FFFF8A3@keylevel.com>
Mime-Version: 1.0 (1.0)
Message-Id: <DA140274-6111-4342-A4A0-4AB0BBDFC56B@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: James Abernathy <jfabernathy@gmail.com>
Date: Fri, 7 Sep 2012 16:04:06 -0400
To: Chris Tapp <opensource@keylevel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Denzil / Cedartrail on DN2800MT
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
X-List-Received-Date: Fri, 07 Sep 2012 20:04:33 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I used Denzil branch to pick up the latest GFX drivers changed added recent=
ly.

Jim A
On Sep 7, 2012, at 3:58 PM, Chris Tapp <opensource@keylevel.com> wrote:

> Has anyone used the Cedartrail BSP under Denzil 7.0.1 on a DN2800MT moth=
erboard?
>=20
> I've just built core-image-sato and used the hddimg to boot from a USB d=
rive, but 'X' won't start and reports that it can't find a screen.
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

