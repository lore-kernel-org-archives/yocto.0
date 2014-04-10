Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E6FE00CAF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:26:18 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id ur14so139681igb.8
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:26:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=bJOMoqJMqmRSsD27sgeVSVhqmiWlXZgYXUbL4mknzzk=;
	b=SdO1GodqDnM0aao4ylyAn7RyrmAG1iWblBX91IT6Qhhm2Pa3sisFU+Z9cAJBIpDfxI
	XaQieFuFd2DA4nbiXs3ZBkWDg9zaZyvY5qoDKTICnytE5cwcznH0PojbDyHPLXFeoiMd
	mF8GxfDdFugkiI+uhO711H/pQfkEbNyn3Bm8n5Nc2OLQPKpfA6WEa2aFqtDMYxnj7yPI
	zEo0b45duHnYdP+AYkPkU84205gw/FWdHksljvfUpF8gR3hIHf+OyCVnvxcjWrzaz3UP
	T3mtND9pb0+KyOZ4dWflbqZ2vGKOt0W1cHzjIWBm5rgb1ohgiAmi07PZQb8MOfQLq5Mc
	hlmw==
X-Gm-Message-State: ALoCoQlvP36kLrBa7bzdUXInsVNH1uBxsd93pqgWaLjho/yrpAX9RJspC9oR3n7OOPxThETSWu2K
X-Received: by 10.42.16.199 with SMTP id q7mr15630802ica.16.1397172377817;
	Thu, 10 Apr 2014 16:26:17 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id s8sm1107480ige.4.2014.04.10.16.26.16
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Apr 2014 16:26:17 -0700 (PDT)
Message-ID: <53472898.8030207@linaro.org>
Date: Thu, 10 Apr 2014 19:26:16 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
Subject: polkit and consolekit
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
X-List-Received-Date: Thu, 10 Apr 2014 23:26:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

consolekit has a dependency on polkit:

arm-oe-linux-gnueabi-gcc: error:
/SSD/build/distroless/tmp/qemuarm-eglibc/sysroots/qemuarm/usr/lib/libpolkit-gobject-1.so:
No such file or directory
ERROR: Function failed: do_compile (log file is located at
/SSD/build/distroless/tmp/qemuarm-eglibc/work/armv5te-oe-linux-gnueabi/consolekit/0.4.6-r0/temp/log.do_compile.18881)

Whereas consolekit is in openembedded-core, polkit is in meta-openembedded.

Suggestions?

