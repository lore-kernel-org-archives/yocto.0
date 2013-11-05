Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F066E01757
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 01:25:25 -0800 (PST)
Received: by mail-oa0-f42.google.com with SMTP id l6so287887oag.1
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2013 01:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=WWYdnAyfQ0dL72R77FZ/D+zRhYGztnFgVvUglGbCAlM=;
	b=zgg7rVFxydcjYPRSTS8u+5OXX+n+X8dne8nXih9ZIhO9pfQYaw3K/dBW99MHhh6nLa
	fgAcxtw4sXFhkKv32mP9A62P04w70LoHEbLpydiw+OUBID9+0M7b3K5xQSVosa6oGOpM
	+0zFihUvUKBVVFxETLHHO+9d+fRBM64QHqiI/WEy7/lJgl2j/D0gJIQCcypTeWeG0d27
	5XyKR64mhxti4AKqfvf+ziIzHqHwp8nWiFz6sVPULtKfo+Rx89gygF8Dt+EGsFqCMSpa
	4a0IJtmY2r+6lW836AUzMMvbork1gwbX1Pvd9gfexCqjm5rqVWbj8rzeQXCoYD322oSh
	ICsA==
MIME-Version: 1.0
X-Received: by 10.60.59.5 with SMTP id v5mr18103259oeq.30.1383643525005; Tue,
	05 Nov 2013 01:25:25 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Tue, 5 Nov 2013 01:25:24 -0800 (PST)
In-Reply-To: <CAFyqS9qNqHxwGu4d2vAqKORNk+-3SoeRtfOghpvSxV6OibL2tQ@mail.gmail.com>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
	<20131029110034.GF3697@jama>
	<CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>
	<20131029134236.GI3697@jama>
	<CAFyqS9qNqHxwGu4d2vAqKORNk+-3SoeRtfOghpvSxV6OibL2tQ@mail.gmail.com>
Date: Tue, 5 Nov 2013 10:25:24 +0100
Message-ID: <CAFyqS9rbOyN7OV-b7MRN0YGtu87ZGxDkHb50=kJxvNiGcXdgXQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Nov 2013 09:25:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2013 at 3:20 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> On Tue, Oct 29, 2013 at 2:42 PM, Martin Jansa <martin.jansa@gmail.com> wr=
ote:
>> On Tue, Oct 29, 2013 at 02:27:30PM +0100, Hans Beck=E9rus wrote:
>>> On Tue, Oct 29, 2013 at 12:00 PM, Martin Jansa <martin.jansa@gmail.com>=
 wrote:
>>> > On Tue, Oct 29, 2013 at 12:46:18PM +0100, Hans Beck=E9rus wrote:
>>> >> Hi. I am wondering if we are using SRCREV wrong somehow.
>>> >> Is it expected that if we use SRCREV =3D "${AUTOREV}", that any chan=
ges
>>> >> to the remote should be automatically detected and downloaded/fetche=
d?
>>> >> I can no see that this is actually what happens. Any changes made to
>>> >> the remote still need to be manually fetched or indirectly by steppi=
ng
>>> >> the recipe revision.
>>> >> Are we using SRCREV wrong or is this actually the way it is supposed
>>> >> to work? Also, is there some way to force a download to me made ever=
y
>>> >> single time by a recipe,
>>> >> irrespective of if the remote changed or not?
>>> >
>>> > It's supposed to run git ls-remote while parsing to get latest revisi=
on
>>> > in remote repo and then rebuild the package because of SRCPV change i=
n
>>> > PV, are you using something like:
>>> >
>>> > PV =3D "1.0+git${SRCPV}"
>>> >
>>> > ?
>>> >
>>> Nope. I did not know we had to use PV. Sounds like we need to in the
>>> general case. But in this case,
>>
>> You need to reference it somewhere, if you were using multiple git repos
>> in SRC_URI you probably need to define SRCREV_foo =3D "${AUTOREV}" for a=
ll
>> of them (where foo is from name=3Dfoo param for each repo).
>>
> Sure.
>
>>> we actually do not have versions on the package itself since it is
>>> simply a container for several other binary packages merged into one
>>> binary file.
>>> So our "package" is downloading packages from several git repos,
>>
>> "package" -> "recipe"
>>
> Yea, yea! :)
>
>>> stored in different folders using 'destsuffix'.
>>> Would it be ok to simply set PV =3D "${SRCPV}" ? I guess this will
>>
>> SRCPV is sortable and consistent only with shared persistent PR server i=
s used
>> across all builders - if that's not the case it's safer to prefix SRCPV
>> with some manually maintained version.
>>
> No problem. That is doable.
>
>>> result in a new target folder for each changed remote? And will this
>>> work when referring to several git repos in SRC_URI?
>>
>> You'll need to define SRCREV_FORMAT and name parameter for each repo in
>> SRC_URI.
>>
> Now I am not following you :( name I understand, but what is SRCREV_FORMA=
T?
>
>>> Since changes are expected to happen frequently some sort of
>>> garbage-collection function is needed to get rid of all the obsolete
>>> package trees. IIRC was there not an option for this somewhere?
>>
>> Maybe you're talking about rm_work, but I'm not sure what you mean by
>> package trees.
>>
> Maybe it was rm_work, by "package trees" I mean whatever is unpacked
> from the fetch.
>

I have seen recipes that defines PV =3D "xyz+git${SRCPV}" and then
SRCREV to a specific tag instead of ${AUTOREV}.
Is that not contradictory? Or is it simply that the author of that
recipe wished to have a git tag automatically added to the version
string?
Are there any specific cases when that approach is to prefere?

Thanks.
Hans

>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

