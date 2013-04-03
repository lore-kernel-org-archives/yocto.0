Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A22D2E0146B
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 04:45:31 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id vb8so1271772obc.24
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 04:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=Bs08R5AusgrMnM6rFF4fWapjunTZ/duNu0bznGIW2cc=;
	b=HUtDqaL15ydMIyRTP72v8HY8cL0Lp1lsdlYXgVkE2lkA33hkOrsPX2MR9GVRHJvaHZ
	KNhtPPrxfutoeO6Yg55Rzo/xmKWLZyclEsajD/lBE+uFqEX1v3p818Eb8jluyqgtvTsj
	f1x821KDdmQpEjYjZTKaaVaUPEafNahfTXNbPGGKHaIVJo9ZUIWESDfzYSTTPh2HUE4B
	7xUDx3T7d78jcfnbJ3A2kNy4NSmXGis4DAo1rSidDVvOjdmJA1bHoRssZMn08XbBSxBI
	gbHWatdg06pu2Fj3VyEESslqz7hUz3cHum7/hk5o76+qjqK/Jq/+j9H4hENqXK7dH3hk
	Is+w==
MIME-Version: 1.0
X-Received: by 10.60.172.108 with SMTP id bb12mr836073oec.110.1364989530996;
	Wed, 03 Apr 2013 04:45:30 -0700 (PDT)
Received: by 10.60.46.69 with HTTP; Wed, 3 Apr 2013 04:45:30 -0700 (PDT)
In-Reply-To: <62673661A504604B856269DAADA8BC281DE2E894@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
	<2281089.7AcPuKSElP@helios>
	<CAGiJk9d1aR30d=rZ2GuG5bKyW1NQSNLAXfcCoWu=NTZidDvDDw@mail.gmail.com>
	<62673661A504604B856269DAADA8BC281DE2E894@ILPTWPVEXMB02.ecitele.com>
Date: Wed, 3 Apr 2013 13:45:30 +0200
Message-ID: <CAGiJk9fhg6h-aQbBNT_1mVhFkaV88FfXRM6yhtXx+APCx2B1aQ@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
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
X-List-Received-Date: Wed, 03 Apr 2013 11:45:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2013/4/3 Michael Fainstein <Michael.Fainstein@ecitele.com>:
>> -----Original Message-----
>> From: Samuel Stirtzel [mailto:s.stirtzel@googlemail.com]
>> Sent: =D7=99=D7=95=D7=9D =D7=93 03 =D7=90=D7=A4=D7=A8=D7=99=D7=9C 2013 1=
3:47
>> To: Paul Eggleton
>> Cc: Michael Fainstein; yocto@yoctoproject.org
>> Subject: Re: [yocto] how to convert source rpm spec to bitbake recipe?
>>
>> 2013/4/3 Paul Eggleton <paul.eggleton@linux.intel.com>:
>> > Hi Michael,
>> >
>> > On Sunday 31 March 2013 08:45:23 Michael Fainstein wrote:
>> >> Is there a tool or guide for conversion of source rpm spec file to
>> bitbake
>> >> recipe?
>> >
>> > There is scripts/create-recipe - this is aimed at just downloading sou=
rce
>> and
>> > using a spec file contained within as a basis for a new recipe (among
>> other
>> > methods it uses to determine recipe contents), however it could be
>> adapted to
>> > read a specified spec file I would think.
>> >
>> > Cheers,
>> > Paul
>>
>> Hi Paul,
>> good to know.
>>
>> Does this script also helps with packaging?
>>
>> For KDE there are tons of sub-packages within one recipe, adding them
>> per hand is the major time factor in this case.
>> Currently I use a decrepit script [1] to do this, but maybe I can use
>> this one if it meets my expectations.
>>
>> [1] kde-spec2bb.sh beware, contains excessive sed usage:
>> http://pastebin.com/3g5xDKJ5
>>
>>
>> --
>> Regards
>> Samuel
>
> Hi Samuel,
> kde-spec2bb.sh script references spec2bb.inc script. Can you post a link =
to it?
>

The spec2bb.inc only handles the parameters.
But sure here is the link: http://pastebin.com/S64CkYUa


--
Regards
Samuel

