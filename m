Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9333CE01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:17:05 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so7315559ves.0
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:17:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=qLoVC2ASh7Uw5BdjoPSWyg4/HMkEn+D+4YubzOnrZTo=;
	b=ZMfZo4n7+0+wNJe66mh+2cPp3hbNEE2fIkG4tBzeSP2CjKupy3gaOg7zK/lS4l4ZTY
	Ir0nTxTZlumKbqEjgNdxo1G6kUyfC01sMHdO5+PhrPACqU/EmkBuunqRJBeJRAdtPjmK
	Nz85yRcXDjJXygQnhdFd2vbVv7Q6aRZXdj9/ImtTfQ9yakmseIdMnSbqLv3X0qZTXZlE
	LSkE4ZggsEGOAEUGwnE/GthsqcrJEJMTegWDpIWTgvEJuCZPPvsPl9UzBz82Yycg2VRw
	/8rHQWD/bQrL+e6+Hhwq20k9QGHCuf4N1YwZ6NweyRvw9Vir2oFL9p89f7trCGVQ3xwZ
	YLBw==
MIME-Version: 1.0
X-Received: by 10.58.22.36 with SMTP id a4mr10471071vef.28.1371071825496; Wed,
	12 Jun 2013 14:17:05 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Wed, 12 Jun 2013 14:17:05 -0700 (PDT)
In-Reply-To: <2975064.NgcQZYsAKT@localhost.localdomain>
References: <1810497.uZE9ivf2T0@localhost.localdomain>
	<CAPhnLPDjcbvejh+YnfrGXvwX2+qsHSfDowL8JuVSZc+M52YA7Q@mail.gmail.com>
	<2975064.NgcQZYsAKT@localhost.localdomain>
Date: Wed, 12 Jun 2013 14:17:05 -0700
Message-ID: <CAPhnLPCEbtR=8Wa+odYJ197-Nqa6DHwRbPRY8V_OWrbE4bGjSw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Diego <diego.ml@zoho.com>
X-Gm-Message-State: ALoCoQnnGCejTlIVabdC5zWy8kwiOw9YAN58WuKLSLbUeZlJhL/7NFAUg6Noym8mCYtplzfVgiYF
Cc: yocto@yoctoproject.org
Subject: Re: How to deal with non-standard license.
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
X-List-Received-Date: Wed, 12 Jun 2013 21:17:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2013 at 9:41 AM, Diego <diego.ml@zoho.com> wrote:
> In data marted=EC 11 giugno 2013 15:10:42, Flanagan, Elizabeth ha scritto=
:
>> On Tue, Jun 11, 2013 at 5:28 AM, Diego <diego.ml@zoho.com> wrote:
>> > Hi everybody,
>> >
>> > I have written a recipe which I'd like to contribute for glmark2:
>> > https://launchpad.net/glmark2
>> >
>> > The last thing that puzzles me before submitting it is that it's partl=
y
>> > GPL3+, and partly under this license:
>> > https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
>> > which is not in this list:
>> > https://wiki.yoctoproject.org/wiki/License_Infrastructure_Interest_Gro=
up#L
>> > icenses Is there any way to deal with that license? What should I put =
in
>> > the LICENSE field in my recipe?
>>
>> So, you will need to add a custom license or submit a patch OE-Core to
>> add that license. Where are you contributing this to?
>>
>> If it's to a layer, you'll want to add the license to a custom license
>> path. You'll want that file to be unique and descriptive. Please make
>> sure the license filename has a version in the file name. eg SGI-1.
>> Within the layer you'll make a directory (in this example I use
>> custom-licenses), add the license text to a file named SGI-1, then add
>> this to your layer.conf:
>>
>> LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"
>> SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
>>
>> That should get you what you want.
>
> Hi Elizabeth,
>
> I'm trying to integrate glmark2 into openembedded (meta-oe layer). I know=
 this
> is not the right mailing list for that task, but I'm still on the license
> problem.
>

Ah, ok. In that case, ignore what I just said and patch oe-core's
files/common-licenses with the SGI license and
files/conf/licenses.conf with:

SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
SRC_DISTRIBUTE_LICENSES +=3D "SGI-1"

That's the right way to do this, IMHO

> I've tried to do as you suggested, but I'm getting:
> WARNING: glmark2: No generic license file exists for: SGI-1 in any provid=
er
> Paul suggested:
> LICENSE =3D "GPLv3+ & SGI-1"
> I've tried also:
> LICENSE =3D "GPLv3+ & SGIv1"
> but I'm still getting the same error message (obviously with "SGIv1" inst=
ead).
>
> I'm attaching the full patch for you to review if I'm doing something wro=
ng.
>
> Thank you for any hint you might give me,
> Diego

-b

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

