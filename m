Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCD9EE00952; Thu,  2 Apr 2015 09:18:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70595E00949
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 09:18:17 -0700 (PDT)
Received: by igcau2 with SMTP id au2so51936917igc.1
	for <yocto@yoctoproject.org>; Thu, 02 Apr 2015 09:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=FccprKMq14Akez/yaS3Ba7a8yeQI7sIoNkNn0hnfCFc=;
	b=sW1F0O2PclsZdrPLnwowhHnQTaNzDkEEopwNFZcX6wF7Nm9isNifjkFhBovbaciJu2
	IOx8DMd1CXbTD+2D1CwJI4OKuoJan1cBgSkrB7uoADW2e4Pbblo6j0YlRIlby5TaG4Hp
	vFaLNGNennZJmeINxMC0la6dbfFbjuN8cbbvJnlx1mumBN0f/17W5lEL9493n99koLXc
	UUJ/8FgkLJ4EWM2qGWBCOuRigKithVvPTSfiZAd3LgXVZhdv21uJZs1LWFEkzDN76EJk
	Ye95IKAGz1Y/I0MKlrgiDMT/UHHl8kNdcYkbnasAcZ8obAU4B0eCLIF9pSykWxmKj6DY
	+eYg==
X-Received: by 10.42.84.14 with SMTP id j14mr38262793icl.66.1427991497192;
	Thu, 02 Apr 2015 09:18:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Thu, 2 Apr 2015 09:17:47 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1504020908350.5421@localhost>
References: <alpine.LFD.2.11.1503311547440.7527@localhost>
	<8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
	<alpine.LFD.2.11.1504020908350.5421@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 Apr 2015 09:17:47 -0700
Message-ID: <CAMKF1sqo0+ho=Z3LN4x4=mb3aaFRpOCdDYpsc-pWLFmJEyadSg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Thu, 02 Apr 2015 16:18:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 2, 2015 at 6:12 AM, Robert P. J. Day <rpjday@crashcourse.ca> wr=
ote:
> On Tue, 31 Mar 2015, Khem Raj wrote:
>
>>
>> > On Mar 31, 2015, at 12:54 PM, Robert P. J. Day <rpjday@crashcourse.ca>=
 wrote:
>> >
>> >
>> >  i asked about this a few weeks ago, finally getting back to it ...
>> > for better or worse, i'm running fedora rawhide, updated to the point
>> > where i have gcc-5.0.0:
>> >
>> > $ gcc --version
>> > gcc (GCC) 5.0.0 20150208 (Red Hat 5.0.0-0.10)
>> > Copyright (C) 2015 Free Software Foundation, Inc.
>> > This is free software; see the source for copying conditions.  There i=
s NO
>> > warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PUR=
POSE.
>> > $
>> >
>> > which causes a number of build issues trying to build for something as
>> > simple as qemux86.
>> >
>> >  first, there is a linemarkers issue with gcc-5.0 that i got around
>> > by adding to local.conf:
>> >
>> >  CPPFLAGS_append=3D " -P=E2=80=9D
>>
>> This should not be required. Can you post the failing package with error=
 details
>> it should be fixed.
>>
>> >
>> > and there were two native build issues due to gcc-5.0 being far
>> > pickier with warnings that i sidestepped with the cheap hack:
>> >
>> >  ASSUME_PROVIDED +=3D "elfutils-native"
>> >  ASSUME_PROVIDED +=3D "binutils-native=E2=80=9D
>>
>> There is 2.25 update available on my contrib tree.
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/mast=
er
>> should help with binutils.
>
>   ok, i finally have a full build for qemux86/core-image-minimal.
> things i did:
>
> * wiped the old kernel tarball from my local source mirror -- not
>   sure why that fixed the kernel issue but a fresh download seems
>   to have done the trick.
> * removed the above CPPFLAGS_append line from local.conf
> * used khem's ncurses recipe
> * left the two ASSUME_PROVIDED lines where they were, out of sheer
>   laziness since they seem to work.

my branch will have more fixes for packages that are specifically
originating from gcc5 work. Some has already been merged some more are
to come


>
>   enough excitement for one day ...
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

