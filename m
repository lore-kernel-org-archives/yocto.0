Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web12.14731.1585151486077150223
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 08:51:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@taydin.org header.s=fm2 header.b=L7spl8qv;
 spf=pass (domain: taydin.org, ip: 66.111.4.28, mailfrom: ta@taydin.org)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 660975C0260;
	Wed, 25 Mar 2020 11:51:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 25 Mar 2020 11:51:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=taydin.org; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=fm2; bh=wYGV3fPb5YHZWjTtwwOyYeyBzm
	6gzysK9z/QJsmZdr8=; b=L7spl8qvaIOQHqc1PI0epWG3Syj5hMxy60afjWygNh
	s0twAq0FMiv0tldRJvGHT5yZSbgptLNrUtQhK3gvSkIhgQw1VbVgXPXj8bhy5idX
	EAi3fmquXkDSdq8PI772/KN9yO/vRnmxMclvzMGfQoSdXEfUaV/3eRq8m1I/M31g
	mD6ieNM4XbccZFrygmm0gec/bla7ioI757pvqmC5Mc2Sdb1QSToKGy4r61B4mGZz
	ArUhyp3d/OGi3y3Iy2uqILYwIfItK9unxZOwPPIp36gJHsWntOW9kSKoqc2nh1vy
	eE7h9WQS668OA8oqhlb5swcKHaLUiglHGer8ELG67LgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wYGV3f
	Pb5YHZWjTtwwOyYeyBzm6gzysK9z/QJsmZdr8=; b=VgJDgaxRUGKgfUGSYAgiqv
	g7HzVryVqVNQTWZPEZrAxW6lAePB/8qAZeR2rpxWieY1cNLYSNe3c0RunSJSYL0i
	POhahZHPtuEKXeS9xV+4C1VKNjxQH6F4pI93sdG7MdwQHQyROSTCnjzIgMVltDM+
	RyDUR2XysN8AfZPCXlooIhRb6baJR432RGhmbFV/Q8lYglqze8qATA4H22Kd1MTK
	fbhOlrNvS16KxF3l0lhD3sLIlHuJu9pVHM34+/LFgpKVv1kC0/PGeT/+CvjGbIml
	4goO5rMU7VFbgMsOWrM1zzW0rUTUigcsKiAkmbUxMcvqa7XyiM2EGtg3Z7yO+dAw
	==
X-ME-Sender: <xms:_X17Xn8Uo9qPfL0i-sDg1mA4dwWdJ3bRWSxKnelCYXpSOo9nZuaKeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehgedgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgfgsehtkeertd
    dtfeejnecuhfhrohhmpefvihhmuhhrucethiguihhnuceothgrsehtrgihughinhdrohhr
    gheqnecukfhppeehuddrfeekrdduudegrddvvddunecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepthgrsehtrgihughinhdrohhrgh
X-ME-Proxy: <xmx:_X17XlAtNj-W0UEW08wGa8PtQNMypZUAgK1YGPLwAJeg2NKMvMUfjw>
    <xmx:_X17XndysYqvk9A8tXGaiHe3obL3e87rU_akuwUTJC0DrjvX4GKB6A>
    <xmx:_X17XpHm1XplHNyKj7Gjl7LQiG6MMz9n1Iq8n1ENKBO0CHTu_VpiCA>
    <xmx:_X17XqAZ0hFwnpV7O1QzbKNbBxLQADQJzRvjkjKknf_Dl8OaQJf9zQ>
Received: from [10.8.0.6] (221.ip-51-38-114.eu [51.38.114.221])
	by mail.messagingengine.com (Postfix) with ESMTPA id ABC9B3066147
	for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 11:51:24 -0400 (EDT)
To: yocto@lists.yoctoproject.org
From: "Timur" <ta@taydin.org>
Subject: populate_sdk_ext getting stuck
Message-ID: <e3a7034b-c0b5-69fa-ae6f-d5b42a6e44c3@taydin.org>
Date: Wed, 25 Mar 2020 18:51:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hello folks,

I have built a new linux release with yocto 2.6, no errors. After that, 
I did a populate_sdk and that worked fine. But when I did 
populate_sdk_ext, it is getting stuck for a long time (it didn't finish 
overnight).

Here is the output when I run bitbake with -v
This is a repeat run, so the elapsed time is not high. But when I looked 
this morning it was around 60,000

NOTE: test1-image-base-1.0-r0 do_populate_sdk_ext: Running 
/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/recipe-sysroot-native/usr/bin/dnf 
-v --rpmverbosity=debug -y -c 
/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/sdk-ext/image/etc/dnf/dnf.conf 
--setopt=reposdir=/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/sdk-ext/image/etc/yum.repos.d 
--repofrompath=oe-repo,/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/oe-sdk-ext-repo 
--installroot=/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/sdk-ext/image 
--setopt=logdir=/home/ta/discovery_connect_pro/build/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/test1-image-base/1.0-r0/temp 
clean all
NOTE: test1-image-base-1.0-r0 do_populate_sdk_ext: Executing 
copy_buildsystem ...
Currently  1 running tasks (4085 of 4085)  99% 
|######################################################################################################################################################### 
|
0: test1-image-base-1.0-r0 do_populate_sdk_ext - 711s (pid 11638)

-- 
Timur Aydın

