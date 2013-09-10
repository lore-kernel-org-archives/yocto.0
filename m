Return-Path: <jc@vtkloud.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5240AE0153B
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 23:38:40 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id n12so3700395wgh.3
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 23:38:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=TsrhAIv9fOpsjS/5dLdBZ31UYgPfZVN0Ws+Iz6tNlVU=;
	b=AO1YSXM7Za3bq0LWvdgCpbzcs9L3bw4dwDfU/m4p/zRVT9fI77hXL/iGhLoxt0k3JJ
	jHhB73k2X6zchlo2TNYGb/vK4R8g01jyLcFkRV/qhJ9e5/coAwAKF2KIgxpmFxE/Ob0j
	oPD43eYGJXx9Iozc1+gGdw/1Ae6/6EmE15mukvlQE8Nch8rC2dmldqq7Iy5kuOlKWk74
	3tO2JiobTfIlLspwB4+Hgm/qGKENANFFOEpyH5bhE3U5QtMmNDE65JPY3H9Vl7DORJOb
	MldsJSP4YwXOloOX7zB2AWuPU1TjPtnum8EiBIyEh/b6m+35ShNdkZ97bvnq8vQpQ2Cj
	zhWg==
X-Gm-Message-State: ALoCoQkzSAVs3LTGAwLRxWexKzOxqH5JdpqTrKFEVtzx6v4i54YAYrD7dfBx22YgxRu6fSlqD8go
X-Received: by 10.194.235.138 with SMTP id um10mr5514122wjc.30.1378795119724; 
	Mon, 09 Sep 2013 23:38:39 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id li9sm1143481wic.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Sep 2013 23:38:38 -0700 (PDT)
Message-ID: <522EBE6C.5060108@vtkloud.com>
Date: Tue, 10 Sep 2013 08:38:36 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 06:38:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have many issues with Apache2 package so I thought I would reinstall 
it. I used smart (smart install apache2) and here is the very strange 
issue I got:

Installing packages (20):
apache2-2.4.3-r1@armv6_vfp libgdbm4-1.10-r3@armv6_vfp
busybox-1.20.2-r8@armv6_vfp libpcre1-8.32-r1@armv6_vfp
busybox-syslog-1.20.2-r8@armv6_vfp libperl5-5.14.3-r1@armv6_vfp
busybox-udhcpc-1.20.2-r8@armv6_vfp libssl1.0.0-1.0.1e-r15.0@armv6_vfp
libapr-1-0-1.4.6-r2@armv6_vfp libuuid1-2.22.2-r3@armv6_vfp
libaprutil-1-0-1.5.1-r0@armv6_vfp libz1-1.2.7-r0@armv6_vfp
libc6-2.17-r3@armv6_vfp openssl-1.0.1e-r15.0@armv6_vfp
libcrypto1.0.0-1.0.1e-r15.0@armv6_vfp perl-5.14.3-r1@armv6_vfp
libexpat1-2.1.0-r0@armv6_vfp 
update-alternatives-cworth-1:0.1.8+svnr649-r13.0@armv6_vfp
libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all

4.8MB of package files are needed. 9.7MB will be used.

Confirm changes? (Y/n): Y

Fetching packages...
[Snip lots of downloads]
-> http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm
apache2-2.4.3-r1.armv6_vfp.rpm 
############################################################################## 
[ 95%]

error: Failed to download packages:
error: 
http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm: 
File not found


And indeed, I do not have r3 of libuuid1 but r5. This is not the first 
time I run in this issue, it's unfortunately quite common. And I can't 
even figure who is generating libuuid1 :(

Any idea?

Regards
Jay



