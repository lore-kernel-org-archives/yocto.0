Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B9BE006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:38:28 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id 12so2933180vbf.8
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:38:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=F5dT7wt1Iu2C0lH4dUtXZ88Zz46+v9jRoSgMAeGbhWs=;
	b=oo5pOv1zXNglcsZ9ux+sOIU980DeIw5ij/8fShAYtudeGvCSvnxxkwl1U6+nonUQtM
	DBChI/K/ZU40l2dSjdYqMG+PYFjLwOGinGCsTu6QPBwYMGSdmTFx9aaJcygmsPfxLQAK
	/FGKXcwXZna8bgDuX50xooZeeVWLJf+vB4kVxYTfZLbX+oYef9g+odMDlchca42EiDg1
	YZiLbulAruC0CQkdkCvvdIOGmcKRzq4FllXm3CdfKdI0i1zNhOP8e0TH40VO5Si92DHn
	Dp9XF8ZZ2vaNcIt85yGBhcKBPGAgdOTcmu4FIKk3e+itxhC78ov4TyYWPB82pgszu4Sb
	FnyA==
MIME-Version: 1.0
X-Received: by 10.220.105.9 with SMTP id r9mr10341952vco.60.1371069507783;
	Wed, 12 Jun 2013 13:38:27 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Wed, 12 Jun 2013 13:38:27 -0700 (PDT)
In-Reply-To: <51B8D4BA.2020109@gmail.com>
References: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
	<CAPhnLPBsH=Oibe5X3vDeVn9gxq3Msjn_ogZaU6dRm4W0uGYRCw@mail.gmail.com>
	<51B8D4BA.2020109@gmail.com>
Date: Wed, 12 Jun 2013 13:38:27 -0700
Message-ID: <CAPhnLPC7kOo8jgVx5KK=ZT2xNibR60K7XzVESr+wGDEdFAwCAg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQlxuK3m4rFXfDkvNh8AuuWGyvW68KVP2xvGwYb8emESHmAmeBFCnMXV7vaUSlhvg11UU9R2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yet another LIC_FILES_CHKSUM question
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
X-List-Received-Date: Wed, 12 Jun 2013 20:38:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2013 at 1:06 PM, Hans Beckerus <hans.beckerus@gmail.com> wr=
ote:
> On 2013-06-12 7:55, Flanagan, Elizabeth wrote:
>>
>> On Wed, Jun 12, 2013 at 6:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m>
>> wrote:
>>>
>>> In what way does LIC_FILES_CHKSUM correlate to what is specified in
>>> LICENSE?
>>> LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
>>> But, what if the package does not itself provide a license type file?
>>> Is it then ok to simply leave LIC_FILES_CHKSUM =3D "" ?
>>
>> That's kind of a tricky situation. I'm not a lawyer, but I haven't
>> actually seen an actual instance where there was a stated open source
>> license that wasn't also in the source. If there is then the correct
>> path is to probably put actual license text in the upstream as I can
>> imagine all sorts of legal issues with this. Any lawyers care to field
>> this on?
>>
>> -b
>
> Hi Elizabeth, I understand you are not a lawyer ;) I did not really expec=
t
> one either.
> Let's tweak the question into something slightly different. Assume that
> LICENSE is saying eg. GPLv2, but the COPYING file provided by the package
> says GPLv3? Iow, there is a mismatch between the what the recipe says and
> what the package tells you.

Ah, in that case, the LICENSE is obviously incorrect and the recipe
should be patched, right?

> I am a little bit confused to how LICENSE and LIC_FILES_CHKSUM really wor=
ks
> together? Why do we need two different ways of telling what license we us=
e
> or actually expect?

This is a way for us to tell that the LICENSE may have changed. If the
text of the license files in LIC_FILES_CHKSUM change, something
happened that needs to be looked at.

> Or is LICENSE checked against the files pointed to by
> LIC_FILES_CHKSUM? Should it not always be the file(s) stored in the upstr=
eam
> package that dictates what license should be applied?

They are, but there are a few problems with this....

1. Figuring out license automatically is an interesting and kind of
time consuming issue. COPYING isn't *always* the license information.
We've got source that has license information in headers, in COPYING,
in LICENSE, in a lot of places and figuring out is a file contains
license information without a common portable data exchange is kind of
hard (license people see where I'm going here ;) )......
2. This is one of the reasons that Matt Germonprez and a team of
people at the University of Nebraska Omaha are working on implementing
some tooling around SPDX within the project (for more on SPDX see:
www.spdx.org). We need a way to do deep inspection of source as well
as recognize when the upstream has implemented an SPDX file. This
should be implemented in the 1.5 time frame.

So, in a nutshell, scanning for license during every build is time
consuming. We want to do it once, improve the LICENSE data where we
can, and utilize LIC_FILES_CHKSUM to help maintain it, running our
SPDX utilities now and then to be able to find new licenses added that
LIC_FILES_CHKSUM may not know about.

-b

>
> Hans
>
>
>>> Also, I could see that there was an Erlang Public License file
>>> available in poky. But the file is named ErlPL-1.1 and there were no
>>> maps attached to it, this patch will add that.
>>>
>>> Hans
>>>
>>> diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
>>> index 3cb143c..ffed997 100644
>>> --- a/meta/conf/licenses.conf
>>> +++ b/meta/conf/licenses.conf
>>> @@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] =3D "AFL-1.2"
>>>   SPDXLICENSEMAP[AFLv2] =3D "AFL-2.0"
>>>   SPDXLICENSEMAP[AFLv1] =3D "AFL-1.2"
>>>
>>> +#Erlang variations
>>> +SPDXLICENSEMAP[ErlPLv1.1] =3D "ErlPL-1.1"
>>> +SPDXLICENSEMAP[ErlPL1.1] =3D "ErlPL-1.1"
>>> +
>>>   #Other variations
>>>   SPDXLICENSEMAP[EPLv1.0] =3D "EPL-1.0"
>>>
>>> +
>>>   # Additional license directories. Add your custom licenses
>>> directories this path.
>>>   # LICENSE_PATH +=3D "${COREBASE}/custom-licenses"
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

