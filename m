Return-Path: <guy@guy-morand.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D48E00AB0; Tue,  5 Feb 2019 01:22:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,PLING_QUERY,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.65.195.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from smtp-sh2.infomaniak.ch (smtp-sh2.infomaniak.ch [128.65.195.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E17BBE00994
	for <yocto@lists.yoctoproject.org>;
	Tue,  5 Feb 2019 01:22:53 -0800 (PST)
Received: from smtp7.infomaniak.ch (smtp7.infomaniak.ch [83.166.132.30])
	by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x159Mq1B032389
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@lists.yoctoproject.org>; Tue, 5 Feb 2019 10:22:52 +0100
Received: from [192.168.188.106] (cpe002.tpw.isi.ch [185.198.204.195] (may be
	forged)) (authenticated bits=0)
	by smtp7.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x159Mm9p172179
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
	for <yocto@lists.yoctoproject.org>; Tue, 5 Feb 2019 10:22:52 +0100
From: Guy Morand <guy@guy-morand.ch>
To: yocto@lists.yoctoproject.org
References: <a9f7b0c1-97c9-7aea-1172-6de6cd673b46@guy-morand.ch>
Message-ID: <3718150e-2dbf-dfaa-5b2e-3d5d0e97b8e6@guy-morand.ch>
Date: Tue, 5 Feb 2019 10:22:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <a9f7b0c1-97c9-7aea-1172-6de6cd673b46@guy-morand.ch>
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Subject: Re: cmake / <string> no such file or directory ??!
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
X-List-Received-Date: Tue, 05 Feb 2019 09:22:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Sorry Yocto developers!

I have found the issue, in my CMakeLists.txt, I changed this:
set(CMAKE_CXX_FLAGS "-Wall -Wextra -Werror")

to this:
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

Now it works like a charm, stupid me :D! Sorry for all the noise!

Best regards,

Guy Morand

On 2/5/19 8:21 AM, Guy Morand wrote:

> Hello Yocto developpers!
>
> I'm facing a weird problem that seems very strange. I can 
> cross-compile a project based on cmake with the generated Yocto SDK.
>
> However, after adding a recipe, the compilation fails:
> /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ 
> -Dcommunication_interface_EXPORTS 
> -I/mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/library 
> -Wall -Wextra -Werror -fPIC   -std=gnu++11 -MD -MT 
> CMakeFiles/communication-interface.dir/communication_interface.cpp.o 
> -MF 
> CMakeFiles/communication-interface.dir/communication_interface.cpp.o.d 
> -o 
> CMakeFiles/communication-interface.dir/communication_interface.cpp.o 
> -c 
> /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/communication_interface.cpp
> | In file included from 
> /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/communication_interface.cpp:1:
> | 
> /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/library/communication_interface.h:4:10: 
> fatal error: string: No such file or directory
> |  #include <string>
> |           ^~~~~~~~
> | compilation terminated.
>
> I also tried to change the cmake generator to unix makefile (who knows 
> ...):
> OECMAKE_GENERATOR = "Unix Makefiles"
>
> But I have the same issue. I am working on the thud branch. Anyone had 
> the same problem? What am I doing wrong?
>
> Best regards,
>
> Guy Morand
>

