Return-Path: <rudnik.mathias@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F07FCE00DFD; Sat, 20 Jan 2018 08:42:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudnik.mathias[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53CD6E0083E
	for <yocto@yoctoproject.org>; Sat, 20 Jan 2018 08:42:12 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id i186so8802101wmi.4
	for <yocto@yoctoproject.org>; Sat, 20 Jan 2018 08:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=Q4d2KP44/TgQkmDFs0l7FzP2pY9YUM9Ivp8rtqvznn8=;
	b=HIuYaYfwviC6HvKusmU+MVGvo5uOfcPzrhROsonelGjS6eQzabBLE7ghH8ixWhxnrK
	0r273CXPaEjWdG8kk7L9C2fVqU20NefecpNmCLgtdKmgzSq5r/WFJy6c4BaOjVKaKr5A
	WeF0+8bSgonrraRPradgifRDB358gzQaTFqI0m/KYxmn4QqQuZRCbk0MVAiDhdSunRfr
	Fxg4OV2aOsZQ2UTvbHGeeyTiJj5RnMf174EEFPlGFqNidJmnab0I+a2m2mjiWl4DsUSx
	4ufc7MGifxRANRZ+445gYC2oS+1k16JWBDL/ApxCYSAvSy+Y9z78yTfbGbqab6kGCRU2
	VRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=Q4d2KP44/TgQkmDFs0l7FzP2pY9YUM9Ivp8rtqvznn8=;
	b=TcCfMXsxMjlQ7Yd7sNfVD9QJ5Jv8JIIBHcsJOXr16xvBmY+fXpjTawA9TzHdLu9iJy
	1FrsqjRJpehIqvun9Mzi6f/GLeAjzituojWHWvqYgSppAL0BLk3rQUbaVCfgHII3N+r0
	9ntHFYIAzOJEDNat9tdOEyGkJfNHu84oTNYX65uRoGjgDzuoHSVFBDwbQl23M3FYgWfl
	UKXM4k5+roGw4afAUOa5CrF9V3VIUCt/SZ471o19Esv9aZAa9aBbUCfh+6Io85H2iLgz
	Ho0DNzN84DnPUOclupyvRL3Wf+12J7byc+I2p4Z7jqFQCP+1PVOay3/3kW5zBIV0WfNS
	QLtQ==
X-Gm-Message-State: AKwxyteS/xoJvHR3lsCXiEzvgVCeG9aNhKKFiDBzxH7hMSKoVSEO071T
	zz3XGYQWGGC+sNcJun+s7Hp/EVr5
X-Google-Smtp-Source: AH8x224L2HH18f0zDQKqewlYFL3I8VwQQ3SWkiOwJbws/fqW/OmadVxiGzVDFO0BrvSAhgsJidRquw==
X-Received: by 10.80.180.210 with SMTP id x18mr3654420edd.126.1516466531785;
	Sat, 20 Jan 2018 08:42:11 -0800 (PST)
Received: from [192.168.0.14] (ip1f12feb4.dynamic.kabel-deutschland.de.
	[31.18.254.180]) by smtp.googlemail.com with ESMTPSA id
	y5sm8584905ede.71.2018.01.20.08.42.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 20 Jan 2018 08:42:11 -0800 (PST)
From: Mathias Rudnik <rudnik.mathias@googlemail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <63AABC0B-CEA2-4DAC-AC42-4BCF6720BFA9@googlemail.com>
Date: Sat, 20 Jan 2018 17:42:10 +0100
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: Installing python package from wheel file
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
X-List-Received-Date: Sat, 20 Jan 2018 16:42:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

does anyone know how to install a python package from a .whl file?

I tried it using a recipe that contains:

	inherit pypi setuptools
	=
PYPI_SRC_URI=3D"http://ci.tensorflow.org/view/Nightly/job/nightly-pi-zero/=
lastSuccessfulBuild/artifact/output-artifacts/tensorflow-1.5.0rc1-cp27-non=
e-any.whl=E2=80=9C

When installing .whl files directly onto the target system one would =
type the following:
	pip install <path-to-whl-file>

Thank you for your support=

