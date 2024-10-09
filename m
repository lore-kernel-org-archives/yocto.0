Return-Path: <mtownsend1973@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C355CEDD89
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 12:03:20 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.14502.1728475392167567879
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 05:03:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GpPv6qF3;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: mtownsend1973@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2870058ffaaso2597747fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 05:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728475391; x=1729080191; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qCvUiwoQsGgkFqiDnr7Hnwu/se0tzmQc/I4HyTA/Ujg=;
        b=GpPv6qF3xkQJ1b97p9ORSdQpUYbVHdLxJR8NrfHgEcdqQhGkpU7SJ/sZ9v+wh1obBS
         sl71dq5izeEW+FjIZELto47uPM71VLG3Rvhnn3UMZA8utGlR83OLiBC8WDXMlIqiTDcD
         2ZGhXnFhKJaZPDpVXomKDfogM1upNtYMzz8Gb7a5VgdRL9J+kO+vsHL3xBUt52X0DOkF
         Ft6gFccYHXY2u7YMZ78/RdRsYOs8Fj3ucPdbfbWbF0dquzL4i1EPpgeFrdiRAWD481I9
         w0L2bROaD+BLt4TyyXoAxU7+rpMfn65Q8DZWfKqQtGAKdMVzfITD2lPQn4//5w82cewH
         RSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728475391; x=1729080191;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qCvUiwoQsGgkFqiDnr7Hnwu/se0tzmQc/I4HyTA/Ujg=;
        b=oQrfJiYnnYztmyytnxtbE26USvWwv8RlZ7EcuBZYL0Iq7i9R7RTYY3A9b30NCoLL81
         JAPSXA7pV7r8e8sS5RzgIrjj8S6kw+LPuhs0lddKAAEMH/JqwaHi7bO7+Y6Wecfw8fKm
         NtLSK174cAmJC/0RP7hMci9xabI7iOpI3BX9mGTIbxLvtjmPkOqsQU05T4f398aOaqih
         BLAW7EkFRUadA3rVpHkCFVtSdRudrEvyG9F+OyoNGZQUIF2qppCFMhAskijKvJ0IqZS2
         kYvXIgSVmNVdf6ycFLioEbyMKyiUz6nSpAYlYblZg2cp2Q1ntbns/mCefQMpLkS5jubu
         BkUQ==
X-Gm-Message-State: AOJu0Yy9SdNOijzFYwgR/rDtVEptkTnJh2jhlQtFtGmoyh1YNZTgzuH0
	53NqHptY7s1uFbPcHljUcmdFsB44Jh1SGU5CYyrHCnBp+iYTzq+ZGJjOlsBHdzus8cMgBUyl5jn
	/HvlANhMZyQ8TAPl8jkOhTmBeoPSEZL7p
X-Google-Smtp-Source: AGHT+IFUVNH20zfbIsAy88gu5we41PUHmLMG7D+K2GFX6CpQ6+ZLTseUEoac1y64TUmk45XZbuRST5f+/brts2ucIiI=
X-Received: by 2002:a05:6870:414b:b0:270:184b:ccd9 with SMTP id
 586e51a60fabf-288344fee62mr1155002fac.39.1728475390977; Wed, 09 Oct 2024
 05:03:10 -0700 (PDT)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 9 Oct 2024 13:03:00 +0100
Message-ID: <CABatt_wGGZVZn5H+H3pYtRm-3OTx_bm+=o7_dDLhpvk7kQ2ysA@mail.gmail.com>
Subject: nativesdk-cpio: build failure in Scarthgap
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000aeb1fb06240a096c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 12:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63985

--000000000000aeb1fb06240a096c
Content-Type: text/plain; charset="UTF-8"

Hi,

We have cpio in our SDK and after updating to Scarthgap it failed to build
due to nativesdk-cpio.
ERROR: nativesdk-cpio-2.15-r0 do_package_write_rpm: The sstate manifest for
task 'base-passwd:populate_sysroot' (multilib variant '') could not be
found.

After looking at the dependencies it looks like the lines

DEPENDS:append:class-target = "${@bb.utils.contains('PTEST_ENABLED', '1', '
ptest-runner', '', d)}"
PACKAGE_WRITE_DEPS += "ptest-runner"

mean that you get this dependency
"nativesdk-cpio.do_package_write_rpm" -> "ptest-runner.do_populate_sysroot"

which then depends on base-passwd.  For the moment I have added a bbappend
to fix things

PACKAGE_WRITE_DEPS:remove:class-nativesdk = "ptest-runner"

I'm not sure what the real fix is, maybe

PACKAGE_WRITE_DEPS:class-target += "ptest-runner"

Best Regards,
Martin.

--000000000000aeb1fb06240a096c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>We have cpio in our SDK =
and after updating to Scarthgap it failed to build due to nativesdk-cpio.<b=
r></div><div>ERROR: nativesdk-cpio-2.15-r0 do_package_write_rpm: The sstate=
 manifest for task &#39;base-passwd:populate_sysroot&#39; (multilib variant=
 &#39;&#39;) could not be found.<br><br></div><div>After looking at the dep=
endencies it looks like the lines<br><br>DEPENDS:append:class-target =3D &q=
uot;${@bb.utils.contains(&#39;PTEST_ENABLED&#39;, &#39;1&#39;, &#39; ptest-=
runner&#39;, &#39;&#39;, d)}&quot;<br>PACKAGE_WRITE_DEPS +=3D &quot;ptest-r=
unner&quot;<br><br></div><div>mean that you get this dependency<br>&quot;na=
tivesdk-cpio.do_package_write_rpm&quot; -&gt; &quot;ptest-runner.do_populat=
e_sysroot&quot;<br><br></div><div>which then depends on base-passwd.=C2=A0 =
For the moment I have added a bbappend to fix things<br></div><div><br></di=
v><div>PACKAGE_WRITE_DEPS:remove:class-nativesdk =3D &quot;ptest-runner&quo=
t;<br><br></div><div>I&#39;m not sure what the real fix is, maybe<br><br>PA=
CKAGE_WRITE_DEPS:class-target +=3D &quot;ptest-runner&quot;</div><div><br><=
/div><div>Best Regards,</div><div>Martin.</div><div><br></div></div>

--000000000000aeb1fb06240a096c--

