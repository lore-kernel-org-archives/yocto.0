Return-Path: <jonathan.austin@arm.com>
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA1DAE009BA
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 09:23:05 -0700 (PDT)
Received: from cam-owa2.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Tue, 01 Apr 2014 17:23:02 +0100
Received: from [10.2.202.23] ([10.1.255.212]) by cam-owa2.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Tue, 1 Apr 2014 17:23:17 +0100
Message-ID: <533AE7CE.6070708@arm.com>
Date: Tue, 01 Apr 2014 17:22:38 +0100
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-OriginalArrivalTime: 01 Apr 2014 16:23:17.0507 (UTC)
	FILETIME=[B0616530:01CF4DC6]
X-MC-Unique: 114040117230202701
Subject: ADT/SDK and cmake - generating the toolchain/cmake config
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
X-List-Received-Date: Tue, 01 Apr 2014 16:23:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

The ADT documentation walks you through building an 'app' using=20
autoconf/make, and the environment setup script that is created as part=20
of the SDK build contains all the necessary autofoo/environment=20
variables. This is great, and I've worked through the autotools example=20
happily. Thanks :)

What I can't find, though, is anything that does the equivalent for=20
cmake. I'm new to cmake so could be missing something obvious, but after=20
seeing the 'environment-setup-TARGET' files (the ones at=20
/opt/poky/1.5.1/) I thought there might also be a cmake toolchain file=20
(toolchain-TARGET.cmake, for example) or some other cmake-foo.

I can see that cmake support was merged for Eclipse/ADT, so it seems=20
like cmake could be supported 'outside the IDE', but I can't quite see=20
how what I ought to twiddle to do this. I found the tantalizingly named=20
'cmake_do_generate_toolchain_file()' and all the other relevant stuff in=20
meta/classes/cmake.bbclass, but I don't know what the 'right' way to=20
propagate all that stuff into the SDK/ADT would be.

Any help with getting started would be greatly appreciated.

Thanks
Jonny


