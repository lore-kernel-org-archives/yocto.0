Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C16E017A1
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 06:27:31 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id j1so1610485oag.25
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 06:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=1ukDc9/vIvf99KVoANQTYgCd7Fu3UGvefnbwoGkRk24=;
	b=SNRL1+cihqJVrlOqnTsrQLQ2QSaDrxioH0YkPE8G2QvMuE0OcLRr5+vOo4mu+kLMU8
	c52RykHDPI77B2bX4rv8/6+uXg/mHVusrA+/jPrXvYb+bm4R/tnLeJgsGdspwv/07N8h
	fo6TIwkfIF+t2qE8vBgLxKX2SMuhJcfFgqjdJUy2uRsH8dJsPy0pchWgXMLNzLGK7ZvS
	ET9wuTB8Ihe6csQlMOL/5RVL9b2GA9FdQ/fu2aI7tnwR2jLbkpIjLq9Icl/U7Z4Vmyxj
	Ok2eK+4ZEDlSb+yRcU20ql/Zk+Ql5nVBKYrTosGFG83dEu0ivLALLcd+IWHcL00KD5pm
	PlBw==
MIME-Version: 1.0
X-Received: by 10.182.229.163 with SMTP id sr3mr814417obc.79.1383053250194;
	Tue, 29 Oct 2013 06:27:30 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 29 Oct 2013 06:27:30 -0700 (PDT)
In-Reply-To: <20131029110034.GF3697@jama>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
	<20131029110034.GF3697@jama>
Date: Tue, 29 Oct 2013 14:27:30 +0100
Message-ID: <CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>
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
X-List-Received-Date: Tue, 29 Oct 2013 13:27:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2013 at 12:00 PM, Martin Jansa <martin.jansa@gmail.com> wro=
te:
> On Tue, Oct 29, 2013 at 12:46:18PM +0100, Hans Beck=E9rus wrote:
>> Hi. I am wondering if we are using SRCREV wrong somehow.
>> Is it expected that if we use SRCREV =3D "${AUTOREV}", that any changes
>> to the remote should be automatically detected and downloaded/fetched?
>> I can no see that this is actually what happens. Any changes made to
>> the remote still need to be manually fetched or indirectly by stepping
>> the recipe revision.
>> Are we using SRCREV wrong or is this actually the way it is supposed
>> to work? Also, is there some way to force a download to me made every
>> single time by a recipe,
>> irrespective of if the remote changed or not?
>
> It's supposed to run git ls-remote while parsing to get latest revision
> in remote repo and then rebuild the package because of SRCPV change in
> PV, are you using something like:
>
> PV =3D "1.0+git${SRCPV}"
>
> ?
>
Nope. I did not know we had to use PV. Sounds like we need to in the
general case. But in this case,
we actually do not have versions on the package itself since it is
simply a container for several other binary packages merged into one
binary file.
So our "package" is downloading packages from several git repos,
stored in different folders using 'destsuffix'.
Would it be ok to simply set PV =3D "${SRCPV}" ? I guess this will
result in a new target folder for each changed remote? And will this
work when referring to several git repos in SRC_URI?
Since changes are expected to happen frequently some sort of
garbage-collection function is needed to get rid of all the obsolete
package trees. IIRC was there not an option for this somewhere?


>>
>> Thanks.
>> Hans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

