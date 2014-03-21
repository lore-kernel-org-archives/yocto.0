Return-Path: <kapare@rogue-research.com>
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 578CEE00B72
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 09:16:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 328C0361E05A
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 12:18:32 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id MhMAlOBrqyZL for <yocto@yoctoproject.org>;
	Fri, 21 Mar 2014 12:18:29 -0400 (EDT)
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by mail.rogue-research.com (Postfix) with ESMTPSA id D45D7361E04A
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 12:18:29 -0400 (EDT)
Received: by mail-ve0-f175.google.com with SMTP id oz11so2752739veb.6
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 09:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=5ntxM43FdJ+VvwxXHatvwmOWzvXHA54qA7U4aTFtQEI=;
	b=OfvF+OdU+uh/60bdjbQlnQW9mpTUUBz6KEEsGNjxaAxSmFg5IRSl3bXg4utCVN35h3
	TKa+TWuoigxkDufpe5aob97JUT0ZFqszipX3B+inNAQMZJhqLKsoWOWO33WnXU8MfdSC
	hAamGSu4PHCnJCA0cqged8NAA3sgwmASaeUMKloY4dvmfUeLF+AReyPSSbxu4XRFnLLS
	8Df8YZIMqOtLKoqKbWSR0cXLtp8RMUvJ0XGGeNudxWNdWxvU/hwxdFCNDPRQ/e9IWkJB
	SPskZbASg3kUnwwoJ5X7334hoHPxns6hc5q7S2Y0FIMVqTN3SSjImrkn1A8DiO20qW2K
	PdIA==
MIME-Version: 1.0
X-Received: by 10.52.51.197 with SMTP id m5mr1001461vdo.9.1395418565800; Fri,
	21 Mar 2014 09:16:05 -0700 (PDT)
Received: by 10.58.95.36 with HTTP; Fri, 21 Mar 2014 09:16:05 -0700 (PDT)
In-Reply-To: <CACgAsMf1N6KjR=sKbbxYcMOi9iQ6nYe957LdLfpCSZ3hzSERuQ@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
	<CACgAsMf1N6KjR=sKbbxYcMOi9iQ6nYe957LdLfpCSZ3hzSERuQ@mail.gmail.com>
Date: Fri, 21 Mar 2014 12:16:05 -0400
Message-ID: <CACgAsMesCnRY2gOuH3R0azMrhu+nJ8MaBSShcvySn0gjEBHrPw@mail.gmail.com>
From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= <kapare@rogue-research.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OpenEmbedded and musl-libc
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
X-List-Received-Date: Fri, 21 Mar 2014 16:16:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

little start,

I have started something see my bugzilla update:

Stuck at:
ERROR: QA Issue: musl-libc: Files/directories were installed but not shippe=
d
  /usr/lib/musl-gcc.specs

Any suggestions?

-KA

On Fri, Mar 21, 2014 at 9:42 AM, Kevyn-Alexandre Par=E9
<kapare@rogue-research.com> wrote:
> I will be interested for sure!
>
> I have added it to bugzilla as an enhancement. They were suggesting
> new feature for 1.7 in the last meeting and suggesting to add them in
> bugzilla as new feature.
>
> Please review if I filed the bug properly
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6024
>
> -KA
>
> On Fri, Mar 21, 2014 at 8:34 AM, Paul Barker <paul@paulbarker.me.uk> wrot=
e:
>> Hi all,
>>
>> musl-libc hit version 1.0.0 yesterday and is starting to look good to
>> me. It's basically a really small but very functional libc that would
>> suit embedded environments very well as an alternative to
>> eglibc/uclibc. I'm personally very interested in using it in my
>> projects and I also think it could fit in well with the aims of
>> poky-tiny.
>>
>> http://www.etalabs.net/compare_libcs.html gives some pretty useful info.
>>
>> I'm basically emailing to see if anyone else is interested in this or
>> if anyone has looked at using it before in OpenEmbedded as a google
>> for previous discussions didn't turn anything up.
>>
>> I'm currently very busy between various projects so I don't have time
>> to hack together a musl-libc recipe myself but I should have time to
>> help test it.
>>
>> Thanks,
>>
>> --
>> Paul Barker
>>
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

