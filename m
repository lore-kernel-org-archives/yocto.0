Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED268E00D1C; Mon,  5 Mar 2018 01:31:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79EE5E00823
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:15 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id i3so13999528wmi.4
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=cBHzzjZBY0pzhmUtSUUy1duj00JSMEYOlnBirNVYp24=;
	b=Fi3gUnVFZhnhxMokMebn+MhjYAyqA7gVKIz45E9Z6dbKOu3olmoff51VYobSuYiATP
	wt2GutfqfAJaznaBELy0im7lQyYIUt+1GzFPKKYfqN4t7Er1Avzgyz2URhEHV9NI5uc2
	sUtxvoZUgttgN6+fEbX+feuezLU8rvaqKbfVrcXcXYtrjQpxcTm5jkOzSFSByW8xcDo8
	ANo/Ta7TXR6Vmio5VcTiw2N6VlLSo0bUOtzHVpdaiWo/Pd4olD9ugPQeWYTTjdmzVft3
	6Mzl/Tjji0lwJGRzhuC2v9fMVbW7/VjLctCQ/bjVyKqU9hSbXl1jsXh3oDtsuxIsZnA3
	eNIw==
X-Gm-Message-State: AElRT7HZRBXvFKqb4CENZxy6f28jyW2dXJcBFnjKksJ8AKg7GQIgSy33
	Qa3PX2SlrX8rkX/uH8lk2LyMFG2/
X-Google-Smtp-Source: AG47ELt/nPaA6wyDylSUHkrD23hXRNFVRdsZnvpxDwE9PUNuemc8guZ9822le2U4hpiHj6APlGKRCQ==
X-Received: by 10.28.72.132 with SMTP id v126mr7127852wma.150.1520242274864;
	Mon, 05 Mar 2018 01:31:14 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:13 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:52 +0000
Message-Id: <20180305093106.11858-1-git@andred.net>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
Subject: [meta-java][PATCH 00/14] openjdk-8 updates
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

OpenJDK8 in yocto is a bit outdated, so these patches
- update openjdk-8 from the 1.5 year old version 102b14 to the
  current 162b12
- modernize the recipe using bitbake variable overrides
- enable building with 'security' flags enabled
- fix the aarch64 build (by using the aarch64 port, which is
  still separate in the OpenJDK8 series)
- fix the musl build (by adding appropriate patches)

This was runtime-tested on x86-64 with both glibc and musl
against the 'poky' DISTRO, and compile-tested on aarch64
against glibc and musl.

Cheers,
Andre'


