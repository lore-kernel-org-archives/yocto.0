Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED40E00349
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:02:07 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10393795pbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=ygShbSZu2znU9fRR3AnwptFmJojdroEMwM3UfISbfgs=;
	b=qhMGoUaG7ai9OTYjkQfnkyUcWRvQ+oVLS/m/ZDM5ODHYupK8z/RV9M8y08YNLdbjMU
	llg0E9ZLxIjIbZxvEXFtSgrWesk3hgo/IoP5ud1LPPvmQeVJNksQ7F8GfmQaWMbTrmdI
	om2vRmJQDGliIlYTijv5DcdnLzQnYDh1mz+M/ut+T0Waebz9yOcH7zjA76LjZ7a99xk4
	Hh9UdVLcnoRBvltLJUMtB9bZasRjTDKu2Z8GVJsdG10aBy1i4k5CkjvubieW9VnDd2Et
	JABW9rg7O579edcoSZLFI65dHEbdKdG6hwwpLTGObddTBaZMBczfSUTVEjnS7g/VgNc8
	Xynw==
Received: by 10.66.80.34 with SMTP id o2mr21487257pax.36.1342922527113;
	Sat, 21 Jul 2012 19:02:07 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ka5sm7000214pbb.37.2012.07.21.19.02.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 19:02:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <ADFC5DCD3FAB494FAC4EE59C0ED44525@intel.com>
Date: Sun, 22 Jul 2012 06:02:01 +0400
Message-Id: <D70A5A08-95E0-4002-A328-3D56E035B8D1@gmail.com>
References: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
	<BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
	<CAEsOVNesi=gbZ4vF4uaxJR=xOXmNzX5fUMOB+a+9Mm5E88MQsg@mail.gmail.com>
	<CF0BA2D7-A20C-4048-8EA0-5BF6E300F8D3@gmail.com>
	<ADFC5DCD3FAB494FAC4EE59C0ED44525@intel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: poky git pull merge failures
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
X-List-Received-Date: Sun, 22 Jul 2012 02:02:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 21, 2012, at 11:54 PM, Ross Burton wrote:

> On Saturday, 21 July 2012 at 20:15, Elvis Dowson wrote:
>> I guess I have to reset the meta-openembedded layer as well.
>=20
> Yes:
>=20
> ERROR: ParseError at =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/=
networkmanager_0.9.2.0.bb:60: unparsed line: '<<<<<<< HEAD'
>=20
> That's a merge conflict marker in a meta-oe file.
>=20
> "git pull" giving merge problems is user error: you pulled into a =
branch that diverged from upstream.  If you hack on your local master, =
then do a git fetch and inspect the diff before merging origin/master.  =
A better solution (imho) is to leave local master as pristine, and =
branch it for any changes.

Resetting meta-openembedded, and the build seems to be progressing fine =
now.

Elvis Dowson=

