Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 342B5E01485
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 07:17:21 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id lj1so365524pab.35
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=WwaiuUhLWFAc+HElRT9RamRR0uSmbcx3ICyP6GKdz+Q=;
	b=ibV79uKNsLTQAqMiWq6u/U35i4ojcDoCoZ6y+IGsZiwp6h/JGmYr4WB1Q63OqxTj7n
	SNv9kc4SB1WTYZ9fWEGgkZriFWMgbAy9jVSw5vuDm+uX/XzplyFVbAWD8FuIsQ/hC6Ik
	jPr8JZIObF8FVM7HdnyRnzj6f+VbJc/8qCvVroUTF7ne05EX4W8nOqtubkFKQ2FNLFGj
	jnPQHS/9G5MSDIOImBlEDxPnhFrDHSk+CVTUWARx2eGuk73ETrPohB/FooPMi7OiawHc
	6HXJV5tHV7Jyu7Nlm3cRahaQ4KYwoanfvj2Pj9OdMRvtGe63hckAKhkCgrCB6EV/Nbt0
	VFHQ==
X-Received: by 10.68.239.194 with SMTP id vu2mr3797167pbc.147.1364566640983;
	Fri, 29 Mar 2013 07:17:20 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id qa6sm2961471pbc.46.2013.03.29.07.17.19
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 29 Mar 2013 07:17:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <002d01ce2c70$b7a27640$26e762c0$@com>
Date: Fri, 29 Mar 2013 07:17:18 -0700
Message-Id: <04BA161E-DBA0-49F9-BA58-CD83D61E9C1F@gmail.com>
References: <002d01ce2c70$b7a27640$26e762c0$@com>
To: sauravkg@huawei.com
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: Doubt about layer priority and package version preference
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
X-List-Received-Date: Fri, 29 Mar 2013 14:17:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Saurav

On Mar 29, 2013, at 4:29 AM, saurav <sauravkg@huawei.com> wrote:

> Hi,
>=20
> I am having some doubt about the yocto 1.3.  can anyone clarify the =
same?
>=20
> Is there any change done in yocto 1.3 about the layer priority and =
package
> version preference? I observed that=20
>=20
> In yocto1.2: Package version takes preference over the layer priority. =
 Ex.
> If 1.0 version of package-1 is present in layer1 with higher priority =
then
> layer2 which contains 2.0 version of package-1, then while building =
2.0
> version of package-1 is considered though layer priority is otherwise =
but
>=20
> In Yocto1.3: Layer priority takes preference over package version.=20


If you do not lock version of recipe as preferred then bit bake will =
choose the newest
available as per versioning rules (similar to debian versioning rules) =
and it should be
considering all configured layers via bblayers.

>=20
> Regards,
> Saurav
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


