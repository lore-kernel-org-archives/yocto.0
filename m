Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4178.1582198028968364067
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 03:27:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=EKyOSYGp;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89278E015FF; Thu, 20 Feb 2020 03:27:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA37E00C5B
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:27:06 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id h9so3279848otj.11
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=j8mGdnP5LcbUmwr38MYmb5gGBg7sI+0OYYyXRmld988=;
        b=EKyOSYGpkASH+PhX0XNzDu2MfZ+ln9Lk7uXIe+sKp+yIeAAG55J2xX/8ME+hmDG81n
         ifguMB+Io7UX3jNKV8wB6mo5W/NQSCC43kyjdaDhNjlUI1KxzlZTpdQTXvIo8ZZvhZhx
         Hxsb5tLCq4lRhs1qC87x3Zxsd3dEqZH/GV6sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=j8mGdnP5LcbUmwr38MYmb5gGBg7sI+0OYYyXRmld988=;
        b=df7pRI4A4Mt3NbkY6EEpOStSvB3hE85wAc/MpWGu3/ubEc8IWxdm2Z+sjvH8NEu1C/
         D6RYv9u+Q06cxhu+WqnCWa2AiVb+0xX7zfUu09hbeXoX3/8DjlPyJwZH2TOTy0z/97J8
         vLT+RtkVQkv9poliNIMp17L0xWv76CgT7Omvvjt+6xGMZooXiHzAODCMl/4fp+fxXwcR
         q+w+diuNmTsVYmfu9Aj2AlcQiUdfDJArUlIGd4vJitpq0EZ5z4z1ndMm1IDKSCCUmNU6
         KruOnt/VVlbOwmjt+vBUEZgSfAVgRTSKyS7mLiaP8PiwTVarxwWhQ3RZ2ia0qhjQVBoi
         YQoQ==
X-Gm-Message-State: APjAAAXrO6eQ670lNmXts/Mxbve7fA126eqw201BGDVvCxYkWK0eDTTM
	I5mGKlMSEQFMZyv9ul5YbNZNBxk6DBZCGsTlCCGA9gjVeZwJVw==
X-Google-Smtp-Source: APXvYqzQPXR+ANnt3XDsQ04KuJRZdzQzd3GAdNgJXqQN/lG6vHQtMBaQNi4sBX7tVLd4BUhNP94HXHKaAaujs5Yyh+4=
X-Received: by 2002:a9d:470a:: with SMTP id a10mr23784576otf.370.1582198026093;
 Thu, 20 Feb 2020 03:27:06 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 20 Feb 2020 11:26:54 +0000
Message-ID: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
Subject: Bitbake returning non-zero due to sstate errors
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In my new CI setup I'm using an sstate mirror which seems to have some
occasional download issues. This results in the setscene task failing.
For example:

ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
do_package_write_ipk_setscene: Fetcher failure: Unable to find file
file://fd/sstate:qt3d:armv7at2hf-neon-linux-gnueabi:5.13.2+gitAUTOINC+93361=
f1a59:r0:armv7at2hf-neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1=
df6befc4230e0a74_package_write_ipk.tgz;downloadfilename=3Dfd/sstate:qt3d:ar=
mv7at2hf-neon-linux-gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-neon=
:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a74_package=
_write_ipk.tgz
anywhere. The paths that were searched were:
    /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
    /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
do_package_write_ipk_setscene: No suitable staging package found
ERROR: Logfile of failure stored in:
/builds/SanCloudLtd/sancloud-arago/build/tmp/work/armv7at2hf-neon-linux-gnu=
eabi/qt3d/5.13.2+gitAUTOINC+93361f1a59-r0/temp/log.do_package_write_ipk_set=
scene.10524
NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
do_package_write_ipk_setscene: Failed
WARNING: Setscene task
(/builds/SanCloudLtd/sancloud-arago/sources/meta-qt5/recipes-qt/qt5/qt3d_gi=
t.bb:do_package_write_ipk_setscene)
failed with exit code '1' - real task will be run instead

As indicated in the final warning message there the real tasks run
since no sstate artifact is available. These tasks succeed:

NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
do_package_write_ipk: Succeeded

The result is a successful build of the desired images. However, the
build is marked as a failure due to those sstate errors:

Summary: There were 11 ERROR messages shown, returning a non-zero exit code=
.

Is this the expected behaviour? The final images are built correctly.
I can't see any simple way to mask those setscene errors but I might
be missing something.

The full log can be seen at
https://gitlab.com/SanCloudLtd/sancloud-arago/-/jobs/443901140/raw.
I'm on the zeus branch here, I'll try to re-test on master later if I
can.

Thanks,
Paul
