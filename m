Return-Path: <ashie@clear-code.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A7D0E00BB6; Mon,  3 Jul 2017 23:34:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.clear-code.com (mail.clear-code.com [219.94.234.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D026AE00AE4
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 23:34:55 -0700 (PDT)
Received: from [192.168.10.53] (27.84.111.219.dy.bbexcite.jp [219.111.84.27])
	by mail.clear-code.com (Postfix) with ESMTPSA id F3F45E1DC3;
	Tue,  4 Jul 2017 15:34:53 +0900 (JST)
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
	<8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
	<7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
	<73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com>
From: Takuro Ashie <ashie@clear-code.com>
Message-ID: <2b0c40c5-27be-f3a0-20f5-c0bdff57cb44@clear-code.com>
Date: Tue, 4 Jul 2017 15:34:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com>
Subject: Re: /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb =>how to update the newest version ?
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
X-List-Received-Date: Tue, 04 Jul 2017 06:34:56 -0000
Content-Type: multipart/alternative;
	boundary="------------ACB2EC67B154E93A423C3527"
Content-Language: en-US

--------------ACB2EC67B154E93A423C3527
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You need latest poky (current master branch is needed).
But upgrading poky may also introduce unexpected changes for you.

Another solution is using built-in nss & nspr instead of system's one.
To use it remove or comment out following lines in your 
meta-browser/recipes-mozilla/firefox/firefox/mozconfig

   ac_add_options --with-system-nss
   ac_add_options --with-system-jpeg

Regards,

On 2017年07月04日 14:40, Riko Ho wrote:
>
> another bug :
>
> checking for NSS - version >= 3.28.4... no
> | configure: error: you don't have NSS installed or your version is 
> too old
> | DEBUG: <truncated - see config.log for full output>
> | DEBUG: #include <malloc.h>
> | DEBUG:                   #include <stddef.h>
> | DEBUG:                   size_t malloc_usable_size(const void *ptr);
> | DEBUG: int main() {
> | DEBUG: return malloc_usable_size(0);
> | DEBUG: ; return 0; }
> | DEBUG: configure:9923: checking for valloc in malloc.h
> | DEBUG: configure:9948: checking for valloc in unistd.h
> | DEBUG: configure:10103: checking NSPR selection
> | DEBUG: configure:10203: checking for nspr-config
> | DEBUG: configure:10238: checking for NSPR - version >= 4.13.1
> | DEBUG: configure:10314: 
> /home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
> -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
> --sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
> -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char 
> -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno -pthread   
> conftest.c 1>&5| DEBUG: configure:10333: 
> /home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
> -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
> --sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
> -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char 
> -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno -pthread   
> conftest.c 1>&5
> | DEBUG: configure:10381: 
> /home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
> -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
> --sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
> -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char 
> -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno -pthread   
> conftest.c 1>&5
> | DEBUG: configure:10420: checking for libevent
> | DEBUG: configure:10427: checking MOZ_LIBEVENT_CFLAGS
> | DEBUG: configure:10432: checking MOZ_LIBEVENT_LIBS
> | DEBUG: configure:10605: checking for nss-config
> | DEBUG: configure:10640: checking for NSS - version >= 3.28.4
> | DEBUG: configure: error: you don't have NSS installed or your 
> version is too old
> | ERROR: old-configure failed
> | *** Fix above errors and then restart with\
> |                "make -f client.mk build"
> | client.mk:375: recipe for target 'configure' failed
> | make: *** [configure] Error 1
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at 
> /home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/temp/log.do_configure.9904)
> ERROR: Task 
> (/home/bianchi77/poky/meta-browser/recipes-mozilla/firefox/firefox_52.1.2esr.bb:do_configure) 
> failed with exit code '1'
>
>
> Let me see my NSS....
>
> On 04/07/17 13:33, Takuro Ashie wrote:
>> |HOSTTOOLS += "autoconf2.13"|
>
> -- 
> *
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> Kind regards,
> Riko Ho
> /*******/
>
> *


--------------ACB2EC67B154E93A423C3527
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    You need latest poky (current master branch is needed).<br>
    But upgrading poky may also introduce unexpected changes for you.<br>
    <br>
    Another solution is using built-in nss &amp; nspr instead of
    system's one.<br>
    To use it remove or comment out following lines in your
    meta-browser/recipes-mozilla/firefox/firefox/mozconfig<br>
    <br>
      ac_add_options --with-system-nss<br>
      ac_add_options --with-system-jpeg<br>
    <br>
    Regards,<br>
    <br>
    <div class="moz-cite-prefix">On 2017年07月04日 14:40, Riko Ho wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <p>another bug :</p>
      <p>checking for NSS - version &gt;= 3.28.4... no<br>
        | configure: error: you don't have NSS installed or your version
        is too old<br>
        | DEBUG: &lt;truncated - see config.log for full output&gt;<br>
        | DEBUG: #include &lt;malloc.h&gt;<br>
        | DEBUG:                   #include &lt;stddef.h&gt;<br>
        | DEBUG:                   size_t malloc_usable_size(const void
        *ptr);<br>
        | DEBUG: int main() {<br>
        | DEBUG: return malloc_usable_size(0);<br>
        | DEBUG: ; return 0; }<br>
        | DEBUG: configure:9923: checking for valloc in malloc.h<br>
        | DEBUG: configure:9948: checking for valloc in unistd.h<br>
        | DEBUG: configure:10103: checking NSPR selection<br>
        | DEBUG: configure:10203: checking for nspr-config<br>
        | DEBUG: configure:10238: checking for NSPR - version &gt;=
        4.13.1<br>
        | DEBUG: configure:10314:
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
        -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot
        -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char
        -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno
        -pthread   conftest.c 1&gt;&amp;5| DEBUG: configure:10333:
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
        -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot
        -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char
        -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno
        -pthread   conftest.c 1&gt;&amp;5<br>
        | DEBUG: configure:10381:
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
        -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot
        -std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char
        -fno-strict-aliasing -fno-strict-aliasing -fno-math-errno
        -pthread   conftest.c 1&gt;&amp;5<br>
        | DEBUG: configure:10420: checking for libevent<br>
        | DEBUG: configure:10427: checking MOZ_LIBEVENT_CFLAGS<br>
        | DEBUG: configure:10432: checking MOZ_LIBEVENT_LIBS<br>
        | DEBUG: configure:10605: checking for nss-config<br>
        | DEBUG: configure:10640: checking for NSS - version &gt;=
        3.28.4<br>
        | DEBUG: configure: error: you don't have NSS installed or your
        version is too old<br>
        | ERROR: old-configure failed<br>
        | *** Fix above errors and then restart with\<br>
        |                "make -f client.mk build"<br>
        | client.mk:375: recipe for target 'configure' failed<br>
        | make: *** [configure] Error 1<br>
        | WARNING: exit code 1 from a shell command.<br>
        | ERROR: Function failed: do_configure (log file is located at
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/temp/log.do_configure.9904)<br>
        ERROR: Task
(/home/bianchi77/poky/meta-browser/recipes-mozilla/firefox/firefox_52.1.2esr.bb:do_configure)
        failed with exit code '1'</p>
      <p><br>
      </p>
      <p>Let me see my NSS....<br>
      </p>
      <div class="moz-cite-prefix">On 04/07/17 13:33, Takuro Ashie
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com"><code>HOSTTOOLS
          += "autoconf2.13"</code></blockquote>
      <br>
      <div class="moz-signature">-- <br>
        <b>
          <p style="color:blue;"> /*******/<br>
            Sent by Ubuntu LTS 16.04,<br>
            Kind regards,<br>
            Riko Ho<br>
            /*******/<br>
          </p>
        </b></div>
    </blockquote>
    <br>
  </body>
</html>

--------------ACB2EC67B154E93A423C3527--
