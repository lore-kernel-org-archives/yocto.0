Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F791E0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 23:57:03 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1497216eaa.35
	for <yocto@yoctoproject.org>; Mon, 04 Jun 2012 23:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=dA6+emdIRpB7A2OkSnWvzDDrJbpNCwfmehWJLU51fG0=;
	b=YbzCl20i9+MKveFLxdINB7HkzfHEykVbtF3MJJXF8gLrKmkhUW37IiNh5Z9eYrLcwQ
	6p6W6M1Xs1dENROspBXpV4fIfZtFQNUgR+w0yhYH28gu1WosdE1TvuYMWx2+Drvegqlp
	6PbDLEO5nrRxve9LXyN1/LIBCjS/G+gmmaJhA9xOCd85rVLbPsSUZM1158WaVxozUGKe
	yuLzFOFjkdfWEDXz0kNIMN0Win0xacdNeC5eLlbuf4M3sAdEIi0k6/r83rBHLS8QA2Nk
	YIW9IUwLInC/Dz9Dib4bjvqjPYi7hmTh1ZdrBzsDQwHSsfEaKQ35agC3r5N7Mq4jOYMd
	cooA==
Received: by 10.14.53.76 with SMTP id f52mr6712438eec.79.1338879422311; Mon,
	04 Jun 2012 23:57:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 4 Jun 2012 23:56:31 -0700 (PDT)
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Jun 2012 23:56:31 -0700
Message-ID: <CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
To: "Wang, Shane" <shane.wang@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Tue, 05 Jun 2012 06:57:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 4, 2012 at 10:04 PM, Wang, Shane <shane.wang@intel.com> wrote:
> Yeah, Robert,
>
> You found a bug in bitbake.
> In the fetch code, local directory /home/rpjday/dl/gtk+-2.24.8.tar.bz2 is=
 decoded as /home/rpjday/dl/gtk%2B-2.24.8.tar.bz2 by
> newuri =3D uri_replace(origud, find, replace, ld), which is line 480 in l=
ib/bb/fetch2/__init__.py.
> And later on it is checked whether or not existed by
> if not os.path.exists(newpath) and path.find("*") =3D=3D -1:, which is li=
ne 61 in lib/bb/fetch2/local.py.
>
> Actually the directory /home/rpjday/dl/gtk+-2.24.8.tar.bz2 is there, but =
/home/rpjday/dl/gtk%2B-2.24.8.tar.bz2 can't be found by bitbake code. That =
is the problem. Therefore, Gtk+ shouldn't be decoded as gtk%2B.
>
> I am not familiar with the whole fetch code and hope someone else can cor=
rect it, so can you please file a bug first?

its probably due to use of urllib.unquote in decodeurl and not keeping
the unquoted name for subsequent use
>
> --
> Shane
>
> Robert P. J. Day wrote on=C2=A02012-06-04:
>
>> On Sun, 3 Jun 2012, Robert P. J. Day wrote:
>>
>>> =C2=A0 for a yocto talk to my local LUG later this week, i want to buil=
d
>>> a simple core-image-sato image for qemux86 and, for quite some time,
>>> i've kept a local download directory for tarballs, and taken
>>> advantage of it with this in all of my local.conf files:
>>>
>>> SOURCE_MIRROR_URL ?=3D "file:///home/rpjday/dl/"
>>> INHERIT +=3D "own-mirrors"
>>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>>> # BB_NO_NETWORK =3D "1"
>>>
>>> =C2=A0 obviously, as i notice newer tarballs getting downloaded, i'll
>>> just copy them into ~/dl so it doesn't happen again. =C2=A0works fine,
>>> except today with gtk+-2.24.8.tar.bz2 which, even after i made a
>>> copy of it in ~/dl, the build still *insists* on downloading it from
>>> download.gnome.org.
>>>
>>> =C2=A0 i don't see any obvious problem -- the checksum of the tarball
>>> appears correct, it's a regular file, the tarball downloaded is
>>> *exactly* the same as the one i've saved in ~/dl and yet, of all the
>>> tarballs i have stashed away there, that one is the *only* one that
>>> is downloaded each time.
>>
>> =C2=A0 ok, i'm baffled and getting thoroughly annoyed here. =C2=A0i star=
ted from
>> absolute scratch, configured to build for qemux86, then did
>>
>> =C2=A0 $ bitbake -c fetchall core-image-sato
>> while pointing at my massive directory of tarballs which includes
>> gtk+-2.24.8.tar.bz2. =C2=A0every required tarball is accessed (via symli=
nk)
>> from my ~/dl directory, *except* for that incredibly irritating
>> gtk+-2.24.8.tar.bz2 tarball, which is downloaded by the "fetchall"
>> command *every* *single* *time*.
>>
>> =C2=A0 i've verified that tarball is there. =C2=A0i've verified its md5 =
and
>> sha256 checksums. =C2=A0i'm out of ideas.
>>
>> =C2=A0 what am i doing wrong?
>> rday
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

