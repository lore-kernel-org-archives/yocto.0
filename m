Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66370E0144F
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:25:50 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2208211pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=6yxWk8Ne6lvveBaI1Ptp2kwRIWeJ2iHvBqAcizs6x/A=;
	b=WRrdlUv9TfUuYxhYh0MYFT4mwDmAiAHjyuuoTJlyUgq3bCHzlFGMznL0Y1ieEfn6Um
	mQin/IGl2ofCYrUNjAq9le83dg5m+o+dZVpgGCJrUUtDEU1C6iRf18fBynCGf2hNVfw1
	CsBn7z7fuu1Ao/ao2VxuLwHg6e1z+2cNGjjq9HdJSWGsXCJWq/h9HnJoNnyG74W3lAIs
	DjOSngbKbQjLPZW8hn/Bl2dHqbKH3yBHbAki8GnGgkCfwwwVtQIklUjm5ylKQVNOKigF
	qckn9dqK7qn9sprYpcSz9B2ffLgdx99gfGAlbU1QNVNJKFB5tlJ4sfCkGWyxJg2JXQn8
	4hhg==
Received: by 10.68.233.134 with SMTP id tw6mr233305pbc.111.1344025550121;
	Fri, 03 Aug 2012 13:25:50 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id tq4sm119726pbc.11.2012.08.03.13.25.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:25:49 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
Date: Sat, 4 Aug 2012 00:25:44 +0400
Message-Id: <9CE15441-360F-4C37-919A-7677FF4FAF40@gmail.com>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
	<CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Fri, 03 Aug 2012 20:25:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FA3D2BE5-FE64-4AE7-B55C-A1CDABD4B4D9"

--Apple-Mail=_FA3D2BE5-FE64-4AE7-B55C-A1CDABD4B4D9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 12:15 AM, Khem Raj wrote:

>=20
> On Aug 3, 2012, at 12:07 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>=20
>> When I run bitbake meta-toolchain, I get the following error: =
rpm-createsolvedb.py: command not found
>=20
>=20
> yes I have similar problems. see
>=20
> =
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027214.=
html

The following patch appears to attempt to fix this issue. I think it =
should be included into oe-core master branch.=20

=
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/026949.=
html

How does the process work, e.g. is there some way to track priority =
patches that fix broken builds, to make sure it gets committed quickly? =
I know it wouldn't manifest until the gcc-4.7.2 recipe is updated, but =
still it should be included.

Elvis Dowson


--Apple-Mail=_FA3D2BE5-FE64-4AE7-B55C-A1CDABD4B4D9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 12:15 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 3, 2012, at 12:07 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">When I run bitbake meta-toolchain, I =
get the following error:&nbsp;rpm-createsolvedb.py: command not =
found</div></blockquote></div><div><br></div><div>yes I have similar =
problems. see</div><div><br></div><div><a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August=
/027214.html">http://lists.linuxtogo.org/pipermail/openembedded-core/2012-=
August/027214.html</a></div></div></blockquote><br></div><div>The =
following patch appears to attempt to fix this issue. I think it should =
be included into oe-core master =
branch.&nbsp;</div><div><br></div><div><a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August=
/026949.html">http://lists.linuxtogo.org/pipermail/openembedded-core/2012-=
August/026949.html</a></div><div><br></div><div>How does the process =
work, e.g. is there some way to track priority patches that fix broken =
builds, to make sure it gets committed quickly? I know it wouldn't =
manifest until the gcc-4.7.2 recipe is updated, but still it should be =
included.</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_FA3D2BE5-FE64-4AE7-B55C-A1CDABD4B4D9--
