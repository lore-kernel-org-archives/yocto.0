Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D126EE013C3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 14:39:25 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ib11so3549687vcb.37
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 14:39:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=6ULoJa5LmvCIMfk/4kauD4MSRkHZfbJkhiOUncNwWhs=;
	b=dq63MBPlK7MGTWhoiV22w+eFJS+jciUPCIP26WGNq7J8VJMzZDr7avw0Rwd7gXhjUA
	do0epXI43RobeiF+oJRwGtIfo0138LFTA2TQoN1ajJMuCoFZoNvMjbo+09iLGUg0AnIW
	NP8Fif2VRRuUBkslN5DoSIl5IKtsfXUHIaUdF1ktDk7HZWc2YoBo8hsco36XfgWHE472
	10S+SycV1l+eC1t6lxwANvTlCh4apZYmwrNXdTjPXNTFnifqpJBMU+R2HMV460802ETf
	AsboRLrpHKKTA1p4ji+xSuLygvGv+I86Y4simJ+uZkdFYLS9nOGwn36LJEHcoCbSAs5w
	3NoA==
MIME-Version: 1.0
X-Received: by 10.52.157.194 with SMTP id wo2mr17420478vdb.30.1366666764920;
	Mon, 22 Apr 2013 14:39:24 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Mon, 22 Apr 2013 14:39:24 -0700 (PDT)
Date: Mon, 22 Apr 2013 14:39:24 -0700
Message-ID: <CAPhnLPCGYxFEjm4NEBNeCswquXX9_RHFA32eWZ9FWjhzU72A+Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkxX9nIu6jHOIXKIwSCCFP8de9/v3+4TzfUFm5lFo898b7vVvUpUZO6CKqbgcLR4qiteGB4
Subject: 1.3.1 tarballs
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
X-List-Received-Date: Mon, 22 Apr 2013 21:39:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

There was a minor problem in tarball generation for 1.3.1 that
required a regeneration of the tarballs (see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4351). No content of
the tarball was changed with the exception of an addition of a top
level directory. This has caused the md5sums to change as follows:

1884e763d369cd27124f8a9fa9b8705d  eclipse-poky-danny-8.0.1.tar.bz2
53856154a214dd698cc99500f5833686  meta-fsl-arm-danny-8.0.1.tar.bz2
33b5efa25f1a57440902193be7b1c2fa  meta-fsl-ppc-danny-8.0.1.tar.bz2
5dab84b4174755d5e657b995f8a3571f  /meta-intel-danny-8.0.1.tar.bz2
fb94e1aaeed6f31fcc5620892090db07  meta-qt3-danny-8.0.1.tar.bz2
8ca4c70b8850938868c34fd57b301946  poky-danny-8.0.1.tar.bz2
eacb68cafbfeef5dbca376a176519532  eclipse-poky-danny-8.0.1.tar.gz
1e78cdf0563714b31e9a254be060cdd2  meta-fsl-arm-danny-8.0.1.tar.gz
367f37681812fedd711c3ac20ef64428  meta-fsl-ppc-danny-8.0.1.tar.gz
dd7dd72ec5681883d2781dd8feca1ef7  meta-intel-danny-8.0.1.tar.gz
6a11025cab483d17277e09aa17bafefb  meta-qt3-danny-8.0.1.tar.gz
ad21816f4d34b96d811c721891e6c4fd  poky-danny-8.0.1.tar.gz

This has been fixed in the release generation code and the current 1.4
rc is in the process of having this fix applied.

-b

--
Elizabeth Flanagan
Yocto Project
Build and Release

