Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83729E0146B
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 03:47:30 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id h1so1347232oag.3
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 03:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=3FT+VDp+z1PLHDkEecHXlNl1PLPmX/fJNBpzQfIrQoE=;
	b=vX0GMQpK65+sOeNxt84qihhh16gGyvoCG/JblInQKEaDj7cJTzUyzHv3wyOBDG42hu
	nX3sU89AUMZyLxj2CHfonSroFGp5rrCv3mehlAEuiJ0N2sXUUF2IvALEbCTEukcCiPyU
	QyLVmZPAlrJd09cF/QVrMBfLeCMq+Lx4X57m59t0t+OeImzpyEL+wh9e3/OPKgkvBYgA
	mw1uc5X2Y8eEFrPEmctDSvKrgMY8I3tYl7Pq9cOKjRB6Ve3VWSOUdCVjpFdDtIM+L7+L
	sHN8iLW1ACnN9Sipl6Ra0zIm1JsSr0fYnxGycpndAo97gPjuwWT2OjPmFe8VB7MRwSG2
	fJZQ==
MIME-Version: 1.0
X-Received: by 10.60.145.147 with SMTP id su19mr772090oeb.9.1364986049974;
	Wed, 03 Apr 2013 03:47:29 -0700 (PDT)
Received: by 10.60.46.69 with HTTP; Wed, 3 Apr 2013 03:47:29 -0700 (PDT)
In-Reply-To: <2281089.7AcPuKSElP@helios>
References: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
	<2281089.7AcPuKSElP@helios>
Date: Wed, 3 Apr 2013 12:47:29 +0200
Message-ID: <CAGiJk9d1aR30d=rZ2GuG5bKyW1NQSNLAXfcCoWu=NTZidDvDDw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to convert source rpm spec to bitbake recipe?
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
X-List-Received-Date: Wed, 03 Apr 2013 10:47:30 -0000
Content-Type: text/plain; charset=UTF-8

2013/4/3 Paul Eggleton <paul.eggleton@linux.intel.com>:
> Hi Michael,
>
> On Sunday 31 March 2013 08:45:23 Michael Fainstein wrote:
>> Is there a tool or guide for conversion of source rpm spec file to bitbake
>> recipe?
>
> There is scripts/create-recipe - this is aimed at just downloading source and
> using a spec file contained within as a basis for a new recipe (among other
> methods it uses to determine recipe contents), however it could be adapted to
> read a specified spec file I would think.
>
> Cheers,
> Paul

Hi Paul,
good to know.

Does this script also helps with packaging?

For KDE there are tons of sub-packages within one recipe, adding them
per hand is the major time factor in this case.
Currently I use a decrepit script [1] to do this, but maybe I can use
this one if it meets my expectations.

[1] kde-spec2bb.sh beware, contains excessive sed usage:
http://pastebin.com/3g5xDKJ5


--
Regards
Samuel

