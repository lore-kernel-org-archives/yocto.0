Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0929E00E25; Wed, 20 Apr 2016 20:07:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E429FE00CC4
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 20:07:21 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id x7so21070422qkd.3
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 20:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=99nbgXsXmrFLAkD3riYZQLZ9+k9OaekLdBFN9w3Du2k=;
	b=uCyzHNlBobMEa7ypxJ4vCRAsoy7dfVnR8y9EZ4jYif3MpaDC5LL9UnbsOLJG7jDnfO
	8/NFCsWHn6JJxDx40fj6RMnY0thuabEzwR8N6n4di3SvHJ3p1UUMboOvXCzYqZIQt/gM
	qQTh8jA7ItXOV7O1O38mug30ttqHHyESJFEz4aSxU4YWz2slRiV+MwBAhxEKxJejhh64
	PH7FYIUTcQHaOXOfA3E5vUHmM/QsXmQMcMwIF+E+1dsZnaGBRIHSfWc4XYAo5oDOy58+
	d9Z63RMWsfmpy2QvARpZiJorKbV483RoI3ZTAiuZX3wrMw4wKeKm+zpu9Au73rHu8ttG
	pAqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=99nbgXsXmrFLAkD3riYZQLZ9+k9OaekLdBFN9w3Du2k=;
	b=TZvakjsYQXHUCQpWvVvwA8ZlYjo0t13gj9tSMpnV+zAuITmFfVr73MavUnwd5LucrM
	lhzhiW/8xguOmL+oD/f6Q8ATLtlyuOK8Wf8JGGDuwxIvilhYhRHk4anhpI7pfZ0w9aPd
	qOUTFggnz1uh2B2UsvUMtKk203ek2xnliDrdz4dM2XZunKQLjJDiC6J1NVtClNq36/ch
	GpMEZuO3v5SDQTq7xpfNJUbt4jbQ0nDkpv6Pp5T9kKKxFfKqHQ57DEvYF/r0ybJGEoua
	pt/OK/kOkuZ6CJEWqreTNQ81bbVW3JjSHgQCOPW7GUpx0IEOVg24Ybf+eHUscq0a7uIY
	Z/Aw==
X-Gm-Message-State: AOPr4FVeVcjSJwBYbt6oaoclGZzp2zHDor9LLKL+QV61NqkZfqfzC+e/xHAtkl1GM/hfKLIMQw7x0sk8e91Nyw==
X-Received: by 10.55.78.131 with SMTP id c125mr16264359qkb.71.1461208040881;
	Wed, 20 Apr 2016 20:07:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 20 Apr 2016 20:06:51 -0700 (PDT)
In-Reply-To: <CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Apr 2016 20:06:51 -0700
Message-ID: <CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
To: Dan McGregor <danismostlikely@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Thu, 21 Apr 2016 03:07:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have updated

http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-6

With few more patches added now. Most of packages in OE-Core are
building fine except linux-yocto on mips and ppc

ppc
http://errors.yoctoproject.org/Errors/Details/60423/

mips
http://errors.yoctoproject.org/Errors/Details/60427/

and musl builds needs few more packages to be fixed. but things are
looking good.

Thanks
-Khem


On Mon, Apr 18, 2016 at 6:13 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Mon, Apr 18, 2016 at 12:48 PM Dan McGregor <danismostlikely@gmail.com>
> wrote:
>>
>> On 17 April 2016 at 23:15, Khem Raj <raj.khem@gmail.com> wrote:
>> > Hello all,
>> >
>> > I have put together a potential gcc6 upgrade recipe set, and pushed th=
e
>> > branch to tree here
>> >
>> >
>> > http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gc=
c-6
>> >
>> > and also at github fork of mine.
>> >
>> > https://github.com/kraj/openembedded-core/tree/kraj/master
>> >
>> > You need to set
>> >
>> > GCCVERSION =3D =E2=80=9C6.%=E2=80=9D
>> >
>> > in local.conf to enable it.
>> >
>> >
>> > There are few recipes in OE-Core which still don=E2=80=99t compile e.g=
.
>> >
>> > see
>> >
>> > http://errors.yoctoproject.org/Errors/Build/14782/
>> >
>> > any help in fixing them or otherwise fixing other layers is appreciate=
d.
>> >
>> > gcc6 is a major release for some info see
>> >
>> > https://gcc.gnu.org/gcc-6/changes.html
>> >
>> > and porting guide
>> >
>> > https://gcc.gnu.org/gcc-6/porting_to.html
>> >
>> >
>>
>> I haven't built an image with gcc6 as the compiler yet, but I did
>> check out your branch to try building with gcc 6 as the host compiler
>> (Fedora 24). I needed a few more fixes, available at
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=3Ddankm/gcc=
-6.
>> I fixed lzop, pkgconfig, and disabled werror on binutils.
>> core-image-minimal appears to be well on its way to building.
>>
>
> I had fixed lzop locally meanwhile. I cherry-picked the pkgconfig and
> binutils fixes into my branch
>
>>
>>
>> > Thanks
>> >
>> > -Khem
>> >
>> > --
>> > _______________________________________________
>> > Openembedded-core mailing list
>> > Openembedded-core@lists.openembedded.org
>> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
>> >

