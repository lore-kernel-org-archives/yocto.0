Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C733E00E1E; Thu,  1 Feb 2018 03:39:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118F0E00D1C
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 03:39:46 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w11Bdh7l020658
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Thu, 1 Feb 2018 13:39:44 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto Project <yocto@yoctoproject.org>
Message-ID: <cfe8feff-815d-cf8c-3b7e-0a88f4a215c2@vitheia.com>
Date: Thu, 1 Feb 2018 13:39:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: meta-ide-support toolchain & Recipe-specific Sysroots
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
X-List-Received-Date: Thu, 01 Feb 2018 11:39:48 -0000
Content-Type: multipart/alternative;
	boundary="------------4597D6240E203D86DEE6E861"
Content-Language: en-US

--------------4597D6240E203D86DEE6E861
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I have a problem starting from the rocko upgrade and related to the 
Recipe-specific Sysroots introduced in Yocto 2.3

Our project uses cmake. So out recipe has:
DEPENDS = "cmake-native [...]"

So cmake ends up in 
build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0-r0/recipe-sysroot-native/usr/bin/cmake
So when building inside yocto everything is ok.

When we build outside yocto, we use the cross-toolchain generated and 
populated within the Build Directory:
   $ bitbake meta-ide-toolchain
and then source the environment:
   $ source build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi

On rocko OECORE_NATIVE_SYSROOT is set to 
[...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native 
- which doesn't have cmake:
   $ which cmake
   $ /no cmake found/

And on Krogoth it was build/tmp/sysroots/x86_64-linux - cmake is there:
   $ which cmake
   <full path>/build/tmp/sysroots/x86_64-linux/usr/bin/cmake


How can I add it to my toolchain so that I can also build outside yocto ?

Thanks in advance !

Regards


--------------4597D6240E203D86DEE6E861
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    I have a problem starting from the rocko upgrade and related to the
    Recipe-specific Sysroots introduced in Yocto 2.3<br>
    <br>
    Our project uses cmake. So out recipe has:<br>
    DEPENDS = "cmake-native [...]"<br>
    <br>
    So cmake ends up in
build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/component/1.0-r0/recipe-sysroot-native/usr/bin/cmake<br>
    So when building inside yocto everything is ok.<br>
    <br>
    When we build outside yocto, we use the cross-toolchain generated
    and populated within the Build Directory: <br>
      $ bitbake meta-ide-toolchain<br>
    and then source the environment:<br>
      $ source
    build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi<br>
    <br>
    On rocko OECORE_NATIVE_SYSROOT is set to
[...]/build/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3/recipe-sysroot-native
    - which doesn't have cmake:<br>
      $ which cmake<br>
      $ <i>no cmake found</i><br>
    <br>
    And on Krogoth it was build/tmp/sysroots/x86_64-linux - cmake is
    there:<br>
      $ which cmake<br>
      &lt;full path&gt;/build/tmp/sysroots/x86_64-linux/usr/bin/cmake<br>
    <br>
    <br>
    How can I add it to my toolchain so that I can also build outside
    yocto ? <br>
    <br>
    Thanks in advance !<br>
    <br>
    Regards<br>
    <br>
  </body>
</html>

--------------4597D6240E203D86DEE6E861--
