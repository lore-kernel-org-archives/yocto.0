Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 820B0E01404
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:51:32 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so2395961pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=vux6es5LJxEUutuRXJ3SDE41PdT2aH/qE3Cibl/v8W0=;
	b=Zm7umQ9xpvuYzbsEjAV484fWVSxpuraqeKpXv2MZ6DYMGjpkQm54kBWeAkI22sHcVa
	KKbKp26cEVrXHuhyXsqb/8ZJ6hHLeu0ONy9SpeZa9W1Alu3AJ14b6OhP6AerIoQrer7D
	nqRx/pp/v0y3s8qXUu9pd/uLdzTCSrJb6NeJX4myDVXZV9nXJyFvA1xBQyRDEH9hqKel
	Q0L+O7uvQSTztotUf0XwzCyTYIIttlEQA0ydvvcZmg6hkDRX70i5uRD4oXuhFZCgVzDt
	8GmCtNguhfiXA7K6eCxlepbncoj/qNCixtcoboGw0706fznQxyPNXrLMjvbhPI8pIz5g
	q0dA==
Received: by 10.68.217.202 with SMTP id pa10mr14165110pbc.15.1344617492276;
	Fri, 10 Aug 2012 09:51:32 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nv6sm3658049pbc.42.2012.08.10.09.51.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 09:51:31 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CABcZANmqUK-m648mu_qnQTkTRycpF2mSSJvjr8SsJ5AYB=h04A@mail.gmail.com>
Date: Fri, 10 Aug 2012 20:51:25 +0400
Message-Id: <BD72AC6C-4D8B-479A-B81C-A7D4E894C2DE@gmail.com>
References: <8A8AC1E4-4D09-41DF-9E0C-C7057C54A9FE@gmail.com>
	<CABcZANmqUK-m648mu_qnQTkTRycpF2mSSJvjr8SsJ5AYB=h04A@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: external-sourcery-toolchain: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Fri, 10 Aug 2012 16:51:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 10, 2012, at 8:41 PM, Chris Larson wrote:

> On Fri, Aug 10, 2012 at 9:37 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>      I'm building with the mentor external-sourcery-toolchain.
>>=20
>> I get the following error:
>>=20
>> ERROR: QA Issue: No GNU_HASH in the elf binary:
>> =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipcloak'
>> ERROR: QA Issue: No GNU_HASH in the elf binary:
>> =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zip'
>> ERROR: QA Issue: No GNU_HASH in the elf binary:
>> =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipsplit'
>> ERROR: QA Issue: No GNU_HASH in the elf binary:
>> =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipnote'
>> ERROR: QA run found fatal errors. Please consider fixing them.
>> ERROR: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/temp/log.do_p=
ackage.47453
>>=20
>> Adding the following statement to zip.bb doesn't fix the problem, =
like it
>> used to when using the gcc-4.x compilers:
>>=20
>> TARGET_CC_ARCH +=3D "${LDFLAGS}"
>=20
> I have bits that work around this by making the ldflags/gnu_hash check
> nonfatal when using this toolchain, but they haven't gone into oe-core
> yet. See =
https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/in=
clude/tcmode-external-sourcery.inc#L87-94
> for details. You should be able to try a build using this layer, or
> just grab those bits and put them into your oe-core
> tcmode-external-sourcery.inc.
>=20
> I haven't had time to pursue this meta-sourcery wrt upstream yet, but
> I think in the long term it's the best approach for supporting the
> sourcery g++ toolchain. I think all we should keep in oe-core is
> either a sample/example config, a link to that layer, or a
> configuration for a toolchain that doesn't require as much tweaking
> (e.g. tuning arguments), such as crosstool-ng. That isn't related to
> your issue, but is why I haven't been quite as proactive about pushing
> fixes to the tcmode in oe-core recently.

Copy pasting the tcmode-external-sourcery.inc file from your =
meta-sourcery repo, to oe-core fixes the issue.

Thanks for the timely assist!!  :-)

Best regards,

Elvis Dowson


