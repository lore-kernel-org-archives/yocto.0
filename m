Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47EA9E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 01:49:43 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so207027eek.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 01:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=Tnht865Uq5iiInb1QPRc+Gqnd346NEqIoUqeQQ1tNuU=;
	b=qd4uCpyBOf5RoH7dWGkERzXjFdQJ5hUEOkdYbn/r56F4BCBZTF6vPjgETzZ+uY5Fyf
	7vwgfZC6qmHYqNTyEKm6HfkYfamlrfaG0FBSypAkPaGImNHYFZZGMOnDQEY27LwXW2ft
	J7JexlPe0LMiyu4FVylDAq8kaQzkb1txsola1ywhvVeoMVbETkz/EWEozeZrBdyrs4wA
	FTQzZ6bNGwSNB+xSZH9SQKHQ6tbMQtfqDrQWUjA+78/cEn8Kf5OWAZDgx/uCErw/uQrl
	wInnkSquAjUZM4Gyl6wnxCpQA8JpDS+sbo7YLPwiHEWEj8wJDmWYsfjBgmzY+uZobP50
	Cg1A==
Received: by 10.14.211.3 with SMTP id v3mr6265850eeo.43.1349340582265; Thu, 04
	Oct 2012 01:49:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Thu, 4 Oct 2012 01:49:11 -0700 (PDT)
In-Reply-To: <CAMKF1sp8-NT_JDrYjr4N7duFuMTndtrj-y4nv+2uaPn=+Nxnug@mail.gmail.com>
References: <CAMKF1sp8-NT_JDrYjr4N7duFuMTndtrj-y4nv+2uaPn=+Nxnug@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 4 Oct 2012 01:49:11 -0700
Message-ID: <CAMKF1srceB2i4-BGNcaSCOr3v3jBFhhRisTGzzDyfG57msQbtA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [danny] multilib ends up with multiple provider error for virtual/lib32-libintl
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
X-List-Received-Date: Thu, 04 Oct 2012 08:49:43 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 3, 2012 at 11:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi
>
> On danny branch I am seeing below error when multilib is enabled for
> x86-64 anyone seen it ?
>
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/lib32-libintl
> (virtual:multilib:lib32:/work/yocto/poky/meta/recipes-core/eglibc/eglibc_2.16.bb
> virtual:multilib:lib32:/work/yocto/poky/meta/recipes-core/gettext/gettext_0.18.1.1.bb).

I think my problem is due to the fact that MULTILIBS var is used in
preferred_ml_updates ()
which is called upon ConfigParsed event

and I have been trying to use arch overrides to define MULTILIBS
variable to accommodate
it in distro.conf but at that point overrides are not evaluated yet
and hence when I do

MULTILIBS_x86-64 = "multilib:lib32"
MULTILIB ?= ""

in distro.conf, preferred_ml_updates () gets the value before
overrides which is ""
and hence it thinks there is no multilib and does not add to
MULTI_PROVIDER_WHITELIST

so essentially the recommended usage to have multilib defined in
distro.conf wont work
for more than one machine builds. To get it to work for more than 1
machine include conf/multilib.conf in desired machine.conf  and then


DEFAULTTUNE_virtclass-multilib-lib32 = "${MULTILIBARCH}"

# Currently we only support multilib on ppc64 and x86_64
MULTILIBARCH_x86-64 = "x86"
MULTILIBARCH_e5500-64b = "ppce5500"
MULTILIBARCH ?= ""

in distro.conf would make sure the right stuff happens.

