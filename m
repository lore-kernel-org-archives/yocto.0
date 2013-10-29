Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F6BE016FF
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 07:20:07 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id l20so5257179oag.31
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 07:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=F04kFwawEtMo7B5VJXR61Q/cMRht6FRBtNT2MMZXBTU=;
	b=L+v6bwlfsa8Vzv4iV4KNMqSJp+81K6UtavmxqW7AOivQ9OU7+xi4/wWdcca8BXOcQk
	TlJuOVyAwRPme1i90mp/MNq4g0lJqm3KPWO8i+t1cWIFT5Q19jhoCchWw5dY2A/bt878
	sdX0muDGM9si47GD8kxg8KK2h4vo53xosL2pXdYKovXfl/JWs8MLHI6Do+0p5VAU6b7D
	Kq7VNMZsGJpBsdh8z+RAqDsHBQ60CMz25t5Znw2CceP1mA6u1rX0ejnpuaGhVd393kw+
	hFTNg3BnNhbX0eqNGuKMcAZ0m3USHrxHUHIiL4Fbp3OTet97dc1oAw4AXOXRi7GBGAKP
	WmuQ==
MIME-Version: 1.0
X-Received: by 10.60.36.195 with SMTP id s3mr37455oej.104.1383056407120; Tue,
	29 Oct 2013 07:20:07 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 29 Oct 2013 07:20:07 -0700 (PDT)
In-Reply-To: <20131029134236.GI3697@jama>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
	<20131029110034.GF3697@jama>
	<CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>
	<20131029134236.GI3697@jama>
Date: Tue, 29 Oct 2013 15:20:07 +0100
Message-ID: <CAFyqS9qNqHxwGu4d2vAqKORNk+-3SoeRtfOghpvSxV6OibL2tQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 29 Oct 2013 14:20:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2013 at 2:42 PM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> On Tue, Oct 29, 2013 at 02:27:30PM +0100, Hans Beck=E9rus wrote:
>> On Tue, Oct 29, 2013 at 12:00 PM, Martin Jansa <martin.jansa@gmail.com> =
wrote:
>> > On Tue, Oct 29, 2013 at 12:46:18PM +0100, Hans Beck=E9rus wrote:
>> >> Hi. I am wondering if we are using SRCREV wrong somehow.
>> >> Is it expected that if we use SRCREV =3D "${AUTOREV}", that any chang=
es
>> >> to the remote should be automatically detected and downloaded/fetched=
?
>> >> I can no see that this is actually what happens. Any changes made to
>> >> the remote still need to be manually fetched or indirectly by steppin=
g
>> >> the recipe revision.
>> >> Are we using SRCREV wrong or is this actually the way it is supposed
>> >> to work? Also, is there some way to force a download to me made every
>> >> single time by a recipe,
>> >> irrespective of if the remote changed or not?
>> >
>> > It's supposed to run git ls-remote while parsing to get latest revisio=
n
>> > in remote repo and then rebuild the package because of SRCPV change in
>> > PV, are you using something like:
>> >
>> > PV =3D "1.0+git${SRCPV}"
>> >
>> > ?
>> >
>> Nope. I did not know we had to use PV. Sounds like we need to in the
>> general case. But in this case,
>
> You need to reference it somewhere, if you were using multiple git repos
> in SRC_URI you probably need to define SRCREV_foo =3D "${AUTOREV}" for al=
l
> of them (where foo is from name=3Dfoo param for each repo).
>
Sure.

>> we actually do not have versions on the package itself since it is
>> simply a container for several other binary packages merged into one
>> binary file.
>> So our "package" is downloading packages from several git repos,
>
> "package" -> "recipe"
>
Yea, yea! :)

>> stored in different folders using 'destsuffix'.
>> Would it be ok to simply set PV =3D "${SRCPV}" ? I guess this will
>
> SRCPV is sortable and consistent only with shared persistent PR server is=
 used
> across all builders - if that's not the case it's safer to prefix SRCPV
> with some manually maintained version.
>
No problem. That is doable.

>> result in a new target folder for each changed remote? And will this
>> work when referring to several git repos in SRC_URI?
>
> You'll need to define SRCREV_FORMAT and name parameter for each repo in
> SRC_URI.
>
Now I am not following you :( name I understand, but what is SRCREV_FORMAT?

>> Since changes are expected to happen frequently some sort of
>> garbage-collection function is needed to get rid of all the obsolete
>> package trees. IIRC was there not an option for this somewhere?
>
> Maybe you're talking about rm_work, but I'm not sure what you mean by
> package trees.
>
Maybe it was rm_work, by "package trees" I mean whatever is unpacked
from the fetch.

> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

