Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E040E00AF7
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 05:22:47 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n16so798619oag.27
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 05:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=f+hdY0ucmVDnjSGHG/MgTxGxeSCyYhBz55uJgDElQA0=;
	b=X1OlDwz+UEdUdM5eL9VMoDABoGXKR1QYmkPuz+2TMHKwGFJGt33xpozLzXivM57IvF
	YXrHYh6KkkVTypOEeJxb0k0bC4VxNO/fzLLHBsizet6bLVYRnezUHqG4x/f4fLKI3QE+
	3zUfX8U4XCrZtrYlviXdJU93kUARneVjgKpz/KW01yPxFdh8diTZl1ajriM+MdJZjyHd
	sI+CLFkCMqoWNQVbDdO/a3+pVYJLeaPly7ey0Lbi5tAxCM6Q45el210VU1kYK0XTSfr7
	Ti3ShdlRMyKW/4w+JsLmsygq+o+xG+h/U6MMimw/W+ZDgIx3nlHnh/0EQ1kCpiZaVUy6
	KQdw==
X-Gm-Message-State: ALoCoQlugE3hs9Ld5TZOiD5CH+tZqojvsitVxZMGa7D8HjfPpZPcB0cYCENE/msNduC6SS8l5TVg
MIME-Version: 1.0
X-Received: by 10.182.233.228 with SMTP id tz4mr6031080obc.56.1395318166654;
	Thu, 20 Mar 2014 05:22:46 -0700 (PDT)
Received: by 10.76.177.166 with HTTP; Thu, 20 Mar 2014 05:22:46 -0700 (PDT)
In-Reply-To: <CAPEiAtTDvXZio9yOecFWLzHyYnedvT-czb_S=n8mM7VrWSVOeQ@mail.gmail.com>
References: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
	<CABcZANkXsmFYfXvUp3C+fGosLvFOb7LVKJsG1jyLt6BkNfYtig@mail.gmail.com>
	<7EE0660E-1C5A-426E-BD76-48DF12321D51@gmail.com>
	<CABcZANmUrLVHyJ-QkO=dw7KgkwF+dZq5XEUwqynSkE5CKWyV4g@mail.gmail.com>
	<CAPEiAtTDvXZio9yOecFWLzHyYnedvT-czb_S=n8mM7VrWSVOeQ@mail.gmail.com>
Date: Thu, 20 Mar 2014 13:22:46 +0100
Message-ID: <CA+AhUGyVf3pwu64dTXxG3t9YufhPAHqyRPH_icZzXPAHoJE82w@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Jonatan Magnusson <jonatan.magnusson@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing Python modules on target
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
X-List-Received-Date: Thu, 20 Mar 2014 12:22:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jonatan,

I believe it should be in python-misc package, so if you add that to
IMAGE_INSTALLS or as a RDEPEND of some other installed packaged it
should work.

There's a section in python_2.7.3.bb which is a catch all for stuff
not packaged by python-2.7-manifest:

# catch all the rest (unsorted)
PACKAGES +=3D "${PN}-misc"
FILES_${PN}-misc =3D "${libdir}/python${PYTHON_MAJMIN}"

Cheers,
Erik

On Wed, Mar 19, 2014 at 11:35 PM, Jonatan Magnusson
<jonatan.magnusson@gmail.com> wrote:
>
> (I replied to Chris personal email by mistake. Our conversation is pasted
> below.)
>
> I tried to investigate how the Python installer works, and there are stil=
l
> many parts I am not sure about.
> But as far as I understand the manifest file (python-2.7-manifest.inc) *i=
s*
> responsible for telling bitbake which Python modules to install. It conta=
ins
> a bunch of FILES_${PN}-<package> definitions like this:
>
> FILES_${PN}-numbers=3D"${libdir}/python2.7/decimal.*
> ${libdir}/python2.7/numbers.* "
>
> If I add "${libdir}/python2.7/wsgiref" to one of these and rebuild the im=
age
> the module gets installed on the image.  This solves my problem, but I
> wonder why it is not included by default?
>
> Anyone who can shed som light on this?
>
> Regards,
> Jonatan Magnusson
>
>
> 2014-03-19 17:12 GMT+01:00 Chris Larson <clarson@kergoth.com>:
>>
>>
>> On Wed, Mar 19, 2014 at 9:09 AM, Jonatan Magnusson
>> <jonatan.magnusson@gmail.com> wrote:
>>>
>>>
>>> As far as I can see the manifest file is generated from
>>> "scripts/contrib/python/generate-manifest-2.7.py" and "wsgiref" is not
>>> mentioned in that file either.
>>>
>>> There is nothing really to build in wsgiref. It's just a directory of .=
py
>>> files that should be copied to the image. And those files are also pres=
ent
>>> in
>>>
>>> "build/tmp-eglibc/work/i586-oe-linux/python/2.7.3-r0.3/image/usr/lib/py=
thon2.7".
>>
>>
>> If the wsgiref modules got installed by the python buildsystem in
>> do_install, but the manifest didn't include it,l then we'd get warnings
>> about unpackaged files. As we do not, it's not being installed for some
>> reason, which leads me to believe that the upstream python buildsystem i=
sn't
>> installing it, as it's not enabled, but I'm not an expert on the python
>> buildsystem. That's where I'd suggest looking. Check the python recipe's
>> do_install, and then examine the python buildsystem to see how to verify
>> that wsgiref is enabled for inclusion.
>>
>>
>>> Also, the manifest generation script above links to this page:
>>>
>>> http://www.vanille-media.de/site/index.php/projects/python-for-arm-linu=
x/
>>>
>>> ... which links to ...
>>>
>>> http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/python
>>>
>>> ... which has a "python-wsgiref_0.1.2.bb" file that is not included in
>>> Yocto it seems. I'm just getting started with Yocto, so I may get somet=
hing
>>> wrong, but it
>>> seems that perhaps some more python .bb-files should be transferred to
>>> Yocto?
>>
>>
>>
>> It seems like that recipe is for a standalone pypi wsgiref, but it's
>> included in python for 2.5+, I expect that recipe is a remnant of pre-2.=
5
>> python builds.
>> --
>> Christopher Larson
>> clarson at kergoth dot com
>> Founder - BitBake, OpenEmbedded, OpenZaurus
>> Maintainer - Tslib
>> Senior Software Engineer, Mentor Graphics
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Erik Bot=F6
Senior Software Engineer
Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)76 881 72 03
E-Mail: erik.boto@pelagicore.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

