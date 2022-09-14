Return-Path: <richard.hulme@harman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D890CC6FA8A
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 15:54:29 +0000 (UTC)
Received: from esa.hc5016-32.iphmx.com (esa.hc5016-32.iphmx.com
 [207.54.87.100])
 by mx.groups.io with SMTP id smtpd.web10.1140.1663170865618193000
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 08:54:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@harman.com header.s=ces-harman1 header.b=G28/2TLa;
 spf=permerror,
 err=parse error for token &{10 18 spf2.harman.com}: syntax error for token:
  (domain: harman.com, ip: 207.54.87.100, mailfrom: richard.hulme@harman.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=harman.com; i=@harman.com; q=dns/txt; s=CES-HARMAN1;
  t=1663170865; x=1694706865;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=MseT7gmla+kyxYh3AxYaIk4el52RT0wh/sGtjYfxWCQ=;
  b=G28/2TLarnxFzd5PbDtxgPh/8WOiBse3hq7i5oHxpKpD2/XpKZVQ5Pu6
   d+0C2jHmJ20k4UtGD/kyf3CDinI5L+V97SOnJGqDo4/YXUT3aS15gIQwx
   GHW8lHBk7gK7h/eRP6DZ5QwJgHJpph351FiEs+ki5M9ELcOCALVOtnrFc
   IIg7b5EnHvZLJFjrgce5HLTJ0hQ33Ti1P54NhS9127NtOx3I1Dwtv/TFH
   fcAg9HXPi3TCM1/5TGSRUBXqdhblx6H6+QHhXFqEfWnE3cX+QjRjCKGdH
   gs5QDRYiE/XP5eU9RH8pJPgmvmfrtZi1i0LCKCeGpUZ0ZTTs2lDQ9I6hn
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="40478783"
X-IronPort-AV: E=Sophos;i="5.93,315,1654574400";
   d="scan'208";a="40478783"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO HIMDWSMB09.ad.harman.com) ([194.113.220.5])
  by esa8.hc5016-32.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA384;
 14 Sep 2022 11:54:24 -0400
Received: from DEMDWSMB25.ad.harman.com (10.70.51.7) by
 HIMDWSMB09.ad.harman.com (10.70.50.214) with Microsoft SMTP Server (TLS) id
 15.0.1497.38; Wed, 14 Sep 2022 17:54:03 +0200
Received: from HIMDWSMB02.ad.harman.com (10.70.50.112) by
 DEMDWSMB25.ad.harman.com (10.70.51.7) with Microsoft SMTP Server (TLS) id
 15.0.1497.38; Wed, 14 Sep 2022 17:54:03 +0200
Received: from HIMDWSMB02.ad.harman.com ([fe80::946c:cb11:f1d3:685a]) by
 HIMDWSMB02.ad.harman.com ([fe80::946c:cb11:f1d3:685a%16]) with mapi id
 15.00.1497.040; Wed, 14 Sep 2022 17:54:03 +0200
From: "Hulme, Richard" <richard.hulme@harman.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: oeqa problems with >= Python3.8
Thread-Topic: oeqa problems with >= Python3.8
Thread-Index: AdjIUga/fUSzqqPHSVOgSetogX17Ww==
Date: Wed, 14 Sep 2022 15:54:03 +0000
Message-ID: <4c470b40020a4f23bdbec8de363b94e7@HIMDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.70.50.4]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 15:54:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58038

Hello,

I found an issue when upgrading a box running unit tests that bumped Python=
 from 3.7 to 3.9.=20

The unit tests themselves are run OK but processing them causes KeyErrors t=
o be raised:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
ERROR: test_ping (oeqa.runtime.ping.PingTest)
----------------------------------------------------------------------
Traceback (most recent call last):
  File \"/tmp/moduletest/oeqa/oetest.py\", line 114, in tearDown
    res =3D getResults()
  File \"/tmp/moduletest/oeqa/utils/decorators.py\", line 43, in __init__
    self.faillist =3D handleList(upperf.f_locals['result'].failures)
KeyError: 'result'

It seems that the problem is in https://git.yoctoproject.org/poky/tree/meta=
/lib/oeqa/utils/decorators.py?h=3Dmaster#n25 where it looks for the last fr=
ame in the call stack from 'unittest.case' and then assumes that frame must=
 have a local variable called 'result'

        upperf =3D sys._current_frames()[ident]
        while (upperf.f_globals['__name__'] !=3D 'unittest.case'):
            upperf =3D upperf.f_back
 # deleted a few lines for clarity
        self.faillist =3D handleList(upperf.f_locals['result'].failures)
        self.errorlist =3D handleList(upperf.f_locals['result'].errors)
        self.skiplist =3D handleList(upperf.f_locals['result'].skipped)

That frame will be the one belonging to unittest.case.run but since Python3=
.8 'run' no longer calls 'tearDown' directly so there is now an additional =
frame belonging to unittest.case (see https://github.com/python/cpython/com=
mit/4dd3e3f9bbd320f0dd556688e04db0a6b55a7b52)

This change was introduced here https://github.com/python/cpython/commit/4d=
d3e3f9bbd320f0dd556688e04db0a6b55a7b52 and is tagged with everything from 3=
.8 beta1 onwards.

Changing the 'while' loop to look for a frame from "unittest.case" *and* th=
at has a local variable called "result" seems to fix the problem:

while (upperf.f_globals['__name__'] !=3D 'unittest.case') or ('result' not =
in upperf_flocals):

or

while not ((upperf.f_globals['__name__'] =3D=3D 'unittest.case') and ('resu=
lt' in upperf.f_locals)):

(depending on your preference for combining negative conditions).

Accessing a local variable in a base class method seems rather ugly and fra=
gile to me but that is perhaps a different issue.

I haven't been able to find any references to anyone else coming across thi=
s problem before but Python3.8 hasn't only just been released so surely som=
eone's been hit by this already?

Am I missing something?

Richard

