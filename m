Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB01E0027E
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 10:10:09 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6069152pbb.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=0pLHevUrJfpIF2aEvrSh442ZLm87FANjaCIY/aKW5io=;
	b=ENazIQcSg9aW81rGOUkzfCFo5Y6f1IZ95dsURc+4q/yt40HeGC16LU9JnLbGltSyQR
	O0fslSDD8dEcrtEazYum8jq2gofxkr4A7Wlbc0HdaehH6hEEmvM3SeapwlBFy1Jt5Ogz
	cYevHbbygt5ONU5KqCS4a/4Tc1h5ve/Q+jujN9xhcIGd9PM52w76t/EPewx8cmzS8Qt5
	6T/CJqQBWDDbBur8MbIGS5gKxB0m6WLrt6lwsufx+MwXLGV5txPG4tAJU63ilt9rl3pQ
	LLl+vr7rA/e5Yt5/wU0rYSnYHwv/6ant/7YTAy76Tzjg2n8yreTdIZGPcJRuKZju4COh
	BY0Q==
Received: by 10.68.134.230 with SMTP id pn6mr3710646pbb.44.1344791408428;
	Sun, 12 Aug 2012 10:10:08 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sj5sm3621470pbc.30.2012.08.12.10.10.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 12 Aug 2012 10:10:07 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CABcZANm9U0h3Q0E1Uou1Wi5p_1mmA48uaDTAsmzC=Y1div8Sng@mail.gmail.com>
Date: Sun, 12 Aug 2012 21:10:02 +0400
Message-Id: <08208D93-AA86-444A-AA1E-994F143FD8C8@gmail.com>
References: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
	<CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
	<A941E4AA-B567-4E61-85B7-E4E9A1A191BA@gmail.com>
	<CABcZANm9U0h3Q0E1Uou1Wi5p_1mmA48uaDTAsmzC=Y1div8Sng@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Over-riding insane LDFLAGS check
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
X-List-Received-Date: Sun, 12 Aug 2012 17:10:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 12, 2012, at 8:20 PM, Chris Larson wrote:

> On Sun, Aug 12, 2012 at 9:17 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>=20
>> On Aug 12, 2012, at 8:14 PM, Chris Larson wrote:
>>=20
>>> On Sun, Aug 12, 2012 at 4:45 AM, Elvis Dowson =
<elvis.dowson@gmail.com> wrote:
>>>>      Is there anyway I can over-ride the insane LDFLAGS check for
>>>> GNU_HASH?
>>>=20
>>> Remove it from ERROR_QA and (optionally) add it to WARN_QA instead. =
If
>>> you're using an external toolchain, see what I did at
>>> =
https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/in=
clude/tcmode-external-sourcery.inc#L91-98
>>> for this one.
>>=20
>> How would I go about hooking, in a single location, so that if I run =
gcc-4.5, it over-rides it completely, but if I specify gcc-4.6 or 4.7 it =
doesn't get over-ridden?
>=20
> Use INSANE_SKIP. Grep the metadata for examples. Specifically,
> INSANE_SKIP_<packagename> =3D "ldflags".

While I was developing the gcc-4.5 recipe against the current poky =
master, I first started adding INSANE_SKIP_<packagename> =3D "ldflags". =
For a couple of recipes, adding that didn't work because of the way the =
name was setup !! I think it was gnutls. So, I ended up having to =
temporarily disable the entire LDFLAGS check, for the gcc-4.5 build.

I was wondering if there was a solution to allow me to switch at =
run-time, so that I don't end-up skipping the checks for gcc-4.6 or 4.7, =
but only if I choose to run gcc-4.5.

Elvis Dowson=20


