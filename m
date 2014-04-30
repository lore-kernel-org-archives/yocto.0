Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E07AE0096C; Wed, 30 Apr 2014 08:25:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [72.5.230.95 listed in list.dnswl.org]
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA156E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 08:25:19 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=mrw3BSjLcCHkZzFo9wbTFBxOWwhKm+Vys0Qw6xgX/ndYkz1zZhzApKXI7NshtAIp9Swo4j3NaZ/P
	jV1vqEKvIghziP9WoAUGhHQap4yJUkBzYDE1mYEkjyGD0arPkQEN  
Received: from localhost.localdomain
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1398871514310198.07399201111616;
	Wed, 30 Apr 2014 08:25:14 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 30 Apr 2014 17:25:10 +0200
Message-ID: <1887615.4ieHDOx65x@localhost.localdomain>
User-Agent: KMail/4.12.4 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <3051539.ZH0eHouhiy@peggleto-mobl5.ger.corp.intel.com>
References: <2326013.q8IGgAdBSl@localhost.localdomain>
	<3051539.ZH0eHouhiy@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Zoho-Virus-Status: 2
Cc: yocto@yoctoproject.org
Subject: Re: PACKAGECONFIG and related parameters
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
X-List-Received-Date: Wed, 30 Apr 2014 15:25:23 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Paul,

In data mercoled=EC 30 aprile 2014 10:57:18, Paul Eggleton ha scritto:
> Hi Diego,
>=20
> <snip>
>=20
> You can't do this with PACKAGECONFIG alone, you'd need to use Python,=
 i.e.
> something like this:
>=20
> PACKAGECONFIG ?=3D "gl gles2"
> PACKAGECONFIG[gl] =3D "..."
> PACKAGECONFIG[gles2] =3D "..."
> ...
>=20
> python __anonymous() {
>     packageconfig =3D (d.getVar("PACKAGECONFIG", True) or "").split()=

>     flavors =3D []
>     if "gles2" in packageconfig:
>         flavors.append("x11-gles2")
>     if "gl" in packageconfig:
>         flavors.append("x11-gl")
>     if flavors:
>         d.appendVar("EXTRA_OECONF", " --with-flavors=3D%s" %
> ",".join(flavors)) }
>=20

I tried that solution and it works, thank you so much.

For newcomers like me, this may help explaining how that works:
http://stackoverflow.com/a/17857952/813810

I'll do some testings and then I'll submit the patch for the new glmark=
=20
release.

Bests,
Diego


