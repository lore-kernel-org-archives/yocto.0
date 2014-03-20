Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B1DE00AFD
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 09:58:00 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id to1so1186944ieb.14
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 09:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=DfjGYnkw6XUmVYZDCwx2nZb6dJ8s7l7LS0/C7sH9sck=;
	b=KsiDR2/29woyYeu1SXBULSCfWmWEnUsa4jWus+IDiFEoONKsvBBjZ7vRmvBXn40vds
	iTQpIHpRszSO3yUoD5y0DDcgAT8g8Jd2ATiyzwwpG7zmByxCfeTpJXWaRw32/7FHQRQA
	t4/wVY2O0BmFndElb2VtJNtTTjlLe780EhwVcUf0RoCDkU90pWNomVmkmnWHW4kB24UH
	Ltsszhxx/uHgi0jovm5ao2hnMiNLr93yR8MBJuozOznJ+niuscXEqfBzt0De7oy79vLW
	M8T3N+rYnV7eFnw3DplXZgANEB3DDr3Z5XEhPxyCigLl0bz6x9co6s9UEB+EN0wQg3fe
	VtLw==
X-Received: by 10.42.203.202 with SMTP id fj10mr17678800icb.51.1395334679592; 
	Thu, 20 Mar 2014 09:57:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Thu, 20 Mar 2014 09:57:29 -0700 (PDT)
In-Reply-To: <AE444B81-2AF3-4B30-BB28-B3D9F5C1CD27@gmail.com>
References: <AF739ED9-7B40-42DC-8D62-350F9A36AC3D@gmail.com>
	<CABcZANkXsmFYfXvUp3C+fGosLvFOb7LVKJsG1jyLt6BkNfYtig@mail.gmail.com>
	<7EE0660E-1C5A-426E-BD76-48DF12321D51@gmail.com>
	<CABcZANmUrLVHyJ-QkO=dw7KgkwF+dZq5XEUwqynSkE5CKWyV4g@mail.gmail.com>
	<CAPEiAtTDvXZio9yOecFWLzHyYnedvT-czb_S=n8mM7VrWSVOeQ@mail.gmail.com>
	<CA+AhUGyVf3pwu64dTXxG3t9YufhPAHqyRPH_icZzXPAHoJE82w@mail.gmail.com>
	<AE444B81-2AF3-4B30-BB28-B3D9F5C1CD27@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Mar 2014 09:57:29 -0700
Message-ID: <CAMKF1spWAiq07Kg4QCbSY344GB0pW3B9MunanCvJyDmgUdv9Ag@mail.gmail.com>
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
X-List-Received-Date: Thu, 20 Mar 2014 16:58:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 20, 2014 at 6:33 AM, Jonatan Magnusson
<jonatan.magnusson@gmail.com> wrote:
>
> Hi,
>
> Thanks, but unfortunately it still doesn=E2=80=99t work... wsgiref does n=
ot get installed on the image.
>


is wsgiref part of core python or is it a external module extension.
If its part of core python
and is not being built/packaged then file a bug in yocto bugzilla to
track it. otherwise add
a recipe for it (if it already does not exist) and then add it to your imag=
e

> Regards,
> Jonatan
>
>
>
> 20 mar 2014 kl. 13:22 skrev Erik Bot=C3=B6 <erik.boto@pelagicore.com>:
>
>> Hi Jonatan,
>>
>> I believe it should be in python-misc package, so if you add that to
>> IMAGE_INSTALLS or as a RDEPEND of some other installed packaged it
>> should work.
>>
>> There's a section in python_2.7.3.bb which is a catch all for stuff
>> not packaged by python-2.7-manifest:
>>
>> # catch all the rest (unsorted)
>> PACKAGES +=3D "${PN}-misc"
>> FILES_${PN}-misc =3D "${libdir}/python${PYTHON_MAJMIN}"
>>
>> Cheers,
>> Erik
>>
>> On Wed, Mar 19, 2014 at 11:35 PM, Jonatan Magnusson
>> <jonatan.magnusson@gmail.com> wrote:
>>>
>>> (I replied to Chris personal email by mistake. Our conversation is past=
ed
>>> below.)
>>>
>>> I tried to investigate how the Python installer works, and there are st=
ill
>>> many parts I am not sure about.
>>> But as far as I understand the manifest file (python-2.7-manifest.inc) =
*is*
>>> responsible for telling bitbake which Python modules to install. It con=
tains
>>> a bunch of FILES_${PN}-<package> definitions like this:
>>>
>>> FILES_${PN}-numbers=3D"${libdir}/python2.7/decimal.*
>>> ${libdir}/python2.7/numbers.* "
>>>
>>> If I add "${libdir}/python2.7/wsgiref" to one of these and rebuild the =
image
>>> the module gets installed on the image.  This solves my problem, but I
>>> wonder why it is not included by default?
>>>
>>> Anyone who can shed som light on this?
>>>
>>> Regards,
>>> Jonatan Magnusson
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

