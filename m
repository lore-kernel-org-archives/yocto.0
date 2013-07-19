Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2ECE0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 10:41:15 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so3527903veb.26
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 10:41:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=It7Rqmzs+KwrrxqKOo96RDvXwZPxIzCd/j2DlQyoM1w=;
	b=olmY3yN4hLp3kNq4I1vY9ODVbIjF9y9wmwCUgbfpmdw178YVfQKdn1+FltH9npKre8
	xQqkyHEN51AzUisi0tFZgHGnH+GQR6FkbTkguCDcU8smEXzPZWlT1hkEpaxu8fG1zfbF
	g+rpeBsvxcg8Ot/ULe0DSPcxmBoh1SXSwYI++AhtoeW5NTHhPtIFWA6zkH9DmfH4xJI7
	HNI9V/WsNJe/A/wYhStuqLfSFmICm0Mp/Dzl7lmhi0sEN237PqS1FUatLeebqldBvkus
	vpDmHpg3O8X19b42Nv32eFAk6dnIvA9M9yc/PM2S9QIGphQ0AfzU2d8zi8sbskP4jAB/
	O/gw==
MIME-Version: 1.0
X-Received: by 10.220.119.77 with SMTP id y13mr6056876vcq.13.1374255675073;
	Fri, 19 Jul 2013 10:41:15 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Fri, 19 Jul 2013 10:41:14 -0700 (PDT)
In-Reply-To: <CAE8H0+VAnPwjKFA__a3EuMTF9sJVdbmoB_kxVtVz9hvhiskzMg@mail.gmail.com>
References: <CAE8H0+WxtwacYF8chdJi2hum6XDRAzciSk20PcG6h1qNUmwfSQ@mail.gmail.com>
	<1374159667.1624.42.camel@empanada>
	<1374176459.1624.48.camel@empanada>
	<CAE8H0+VAnPwjKFA__a3EuMTF9sJVdbmoB_kxVtVz9hvhiskzMg@mail.gmail.com>
Date: Fri, 19 Jul 2013 10:41:14 -0700
Message-ID: <CAPhnLPDNOz4w8Xc7HT4jq++_=rTWEtj61MvsnE28AmAc4pj7UQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
X-Gm-Message-State: ALoCoQkrCR5/Xf8yq/dftg7idCBARZ+J0AUjzxRO1vDNMI3/kDzHsGrB5yRI3koRaOmJHBasIeWr
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get released BSP that contains meta-intel ?
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
X-List-Received-Date: Fri, 19 Jul 2013 17:41:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm moving the correct tarballs now. This was due to an error in my
release scripts. I'm depreciating those scripts anyway, so I'll make
sure they're fixed in the new ones that are almost complete.
Thanks for finding this!

-b

On Fri, Jul 19, 2013 at 5:48 AM, r10kindsofpeople
<r10kindsofpeople@gmail.com> wrote:
> Thanks, Tom,
>
> FWIW, I did try to confirm by renaming and running my build, but I ran into
> another issue not apparently related to the BSP that deserves its own
> thread.
>
> John
>
>
> On Thu, Jul 18, 2013 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
>>
>> On Thu, 2013-07-18 at 10:01 -0500, Tom Zanussi wrote:
>> > Hi,
>> >
>> > On Thu, 2013-07-18 at 10:21 -0400, r10kindsofpeople wrote:
>> > > I've been working with denzil, but decided to try and upgrade to
>> > > dylan...
>> > >
>> > >
>> > > Downloading and installing poky-dylan-9.0.1.tar.bz2 went fine.
>> > > Finding and downloading meta-crownbay-dylan-9.0.0.tar.bz2 was easy
>> > > enough.
>> > >
>> > >
>> > > But neither of these give me meta-intel.
>> > >
>> >
>> > Actually, what's in the meta-crownbay-dylan tarball is meta-intel, with
>> > just the meta-crownbay BSP included.  But it looks like there's a
>> > problem with the naming of the top-level directory in the tarball:
>> >
>> > $ ls meta-crownbay
>> > binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
>> >
>> > whereas after untarring, I should have been able to do:
>> >
>> > $ ls meta-intel
>> > binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
>> >
>> > Beth or Nitin, can you please fix the tarballs so that the top-level
>> > directory isn't the meta-BSPname but meta-intel (like they are for the
>> > previous releases).
>> >
>> > >
>> > > So the central question is: how do I find and download a released
>> > > package that contains meta-intel that's required by meta-crownbay?  A
>> >
>> > If you just rename the top-level directory to meta-intel rather than
>> > meta-crownbay, things should be fine..
>> >
>>
>> Filed bug 4868 for this.
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4868
>>
>> Tom
>>
>> > >  second question is whether I'd have had problems anyway, given that
>> > > dylan is 9.0.1 and the BSP is 9.0.0.
>> > >
>> >
>> > No, you shouldn't have problems - a given BSP should be good for the
>> > same major release and all its point releases...
>> >
>> > Thanks,
>> >
>> > Tom
>> >
>> > >
>> > > I can do a git of meta-intel, but that apparently gives me a snapshot
>> > > that doesn't play well with the released poky.  I can do a git of
>> > > poky, then a git of meta-intel...I still needed to do a bit of
>> > > tweaking but I could bitbake core-image-minimal.  Now I'm having
>> > > problems with adt_install, apparently because the scripts all think my
>> > > release is 1.4+snapshot, which breaks the repository links and the
>> > > opkg install.  I seem to have gotten around these, too, but if someone
>> > > has something for me to test using released packages, I'm willing, at
>> > > the moment, to start from scratch.
>> > >
>> > >
>> > > John
>> > >
>> > > _______________________________________________
>> > > yocto mailing list
>> > > yocto@yoctoproject.org
>> > > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

