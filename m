Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C6CE0027E
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:17:55 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6008208pbb.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=iebIlvTwb2owNjIqRhqtCejOVUTQECT/bAIAGBpvxuQ=;
	b=pxr1k+5FE9evGjC1e6BXtnyC0eyjjhb/PuznPuhDZ13/NorTndL73Y0qNH5xlyhRog
	97xZxcOsykf6YyIYJsKh3SI7gEY3X1e7V+IgRkGwCBRT2Be12erlbI0/VNi4sr0JM7J3
	36bv5hqdcJ8mB7IIoeKOVSrxEd7A+sRR1BbGqlTQxRJ9nIj/5TlxbDl4D1mRPQxPPSF+
	IUvl4Je0m56ftQ1m1a4YdsdGaMhYpO3sk6sICwQSUuQTf44Q5GATC6mC6TkXYcAF9yL+
	vzjxFQghHAlVD3RkkpGrJu3+WSh3PiLQDBr1yJ1h6uHlrEbAywm0961QJrqGU0uLhs40
	7e7Q==
Received: by 10.68.191.234 with SMTP id hb10mr13007272pbc.2.1344788275023;
	Sun, 12 Aug 2012 09:17:55 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id jz4sm3555265pbc.17.2012.08.12.09.17.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 12 Aug 2012 09:17:54 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
Date: Sun, 12 Aug 2012 20:17:49 +0400
Message-Id: <A941E4AA-B567-4E61-85B7-E4E9A1A191BA@gmail.com>
References: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
	<CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
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
X-List-Received-Date: Sun, 12 Aug 2012 16:17:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 12, 2012, at 8:14 PM, Chris Larson wrote:

> On Sun, Aug 12, 2012 at 4:45 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>       Is there anyway I can over-ride the insane LDFLAGS check for
>> GNU_HASH?
>=20
> Remove it from ERROR_QA and (optionally) add it to WARN_QA instead. If
> you're using an external toolchain, see what I did at
> =
https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/in=
clude/tcmode-external-sourcery.inc#L91-98
> for this one.

How would I go about hooking, in a single location, so that if I run =
gcc-4.5, it over-rides it completely, but if I specify gcc-4.6 or 4.7 it =
doesn't get over-ridden?

Elvis Dowson


