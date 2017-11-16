Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B95DE00D12; Thu, 16 Nov 2017 03:30:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C233BE00C45
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 03:30:46 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id y80so8754042wmd.0
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 03:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=kcGJs+NYyUVcllirF+w+agyVII0kppjOaWQiyOB+Qtg=;
	b=Tnlo8arMKdJRuvnu0/Hz1pLghQMrVIQRsnaVHwQbXqUO0ss0ZlhMNsqjqIWF67HwK6
	MTjs2DSoTPcBgeXqWmbhgVVVvKsOtk/uvX3M1Xa/XeyiD+y60fxSSq+9z0j3qsgmmN8p
	BnPS8tA5DBVYQqCIXQGS6byqxqb3DStWHjjuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=kcGJs+NYyUVcllirF+w+agyVII0kppjOaWQiyOB+Qtg=;
	b=DOYBrmt+kLXy7ZpkPLj9D5z+8Zt18wvxYNH5+QwgOZCEus/cwPmYRy9PXihWTbvBnn
	hfs9i2Pumy9XfRIMf5bHn5IY+OZW7SK4nGY0f+mY3vIRHVvCELxdWsIvP7k/FaHQ77Ed
	TCUj9OdHXuwMESMhZuoKyrefYfvXKG3XkJJpRMt7QfgwQwFV8Igyn3S2iHW35fVvuLAA
	CzYvLkvkubhKEq3JNZY5hvokUH65lmeutoC+gaS0vHeEfxWp5+SVCVEE8uqdNwGIE5Cu
	qE/32vCw0FY0HvTzxfWu24+5/iS01QBa+5yQE/uDvsNqYxhFpngAalBjyqM7hcfnvoob
	ES/w==
X-Gm-Message-State: AJaThX61PNSkHohcXOHz0tajvYs9LrP0Q3SYq2C4A0vEXed4QmPcitMb
	2+duA8vzO3aJoFfGhuECDDz3myuB5cs=
X-Google-Smtp-Source: AGs4zMYEw0ObMYFaWPY+JD5VxR51tQOGnBK1MIC/ciU/WX7dpMXhVQo55L8vsTdLbCeR+Zu1SNGjgQ==
X-Received: by 10.80.208.195 with SMTP id g3mr2269635edf.246.1510831845196;
	Thu, 16 Nov 2017 03:30:45 -0800 (PST)
Received: from ?IPv6:2003:a:f1f:7600:c041:cd11:3c89:2665?
	([2003:a:f1f:7600:c041:cd11:3c89:2665])
	by smtp.gmail.com with ESMTPSA id a1sm903426edb.37.2017.11.16.03.30.43
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Nov 2017 03:30:44 -0800 (PST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <a61ec897-b6d2-8e6f-b0cf-2e7095fd509c@advancedtelematic.com>
Date: Thu, 16 Nov 2017 12:29:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: SWIG, python, native gcc and multiarch
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
X-List-Received-Date: Thu, 16 Nov 2017 11:30:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi all,

I'm trying to run a piece of SWIG code while building u-boot (namely
compiling it with BUILD_ROM=3Dy, which requires pylibfdt which is built
with a SWIG interface file and a setup.py). I'm having a problem that
the SWIG setup.py script for a reason I don't quite understand instead
of compiling everythin with plain gcc command (which is my ${BUILD_CC})
tries to run "x86_64-linux-gnu-gcc". I can of course add
"x86_64-linux-gnu-gcc" to HOSTTOOLS and everything will work fine, but
only on my machine. Does anyone have any idea how to make SWIG use plain
'gcc' instead of that monster. Or maybe how to add it to HOSTTOOLS
dynamically based on whatever output of 'gcc --print-multiarch' is.

There is a couple of other recipes unsing swig in meta-openembedded, but
they don't seem to use any workarounds for that.

Thanks,
Anton Gerasimov



