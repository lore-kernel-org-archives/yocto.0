Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3004E00BC2; Mon,  3 Jul 2017 22:40:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08C2E00BB1
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 22:40:38 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id k14so29062845pgr.0
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 22:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=sTtE5j03Wdm5XhZL10CPjX1e5rn+VoK8TpZxDjdl/I4=;
	b=A9V32GU8mZ88ZGV/mWk3OAY8j0xc+VroQghXhMpjpa/vo44tSkhNEMmfgUvXhd6004
	YdPYWjJphLPrfbWRn7wA5I4rUstng5MI6x5pkrCX2UjDYK/3oXlQrlFKw0VEN1E3ansp
	IacAnuB8+lni3ZgW81eg/retXaycwvQWxvaIw6lOe/TOUTE+v6smANckIB/y4db4yYoP
	VKQTby1TYE/Avj80Z8HJm1AXL1hnAi/wp3r5bYZnoEDEK5C2RtY2WSAD7qJxi7YKCbHx
	m0eOF4+mSMohljthKYp9j8E4oizPevbI8tXwoqWnzE/dGgp1uWwndPuKyEFrYR5Bf6Nl
	YYiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=sTtE5j03Wdm5XhZL10CPjX1e5rn+VoK8TpZxDjdl/I4=;
	b=eEyNGNZTM4h16i610y1C7/0Rgn/fNjYldG2xws9CXFlLgNlKNZxWnI8/NNyJr2JhGe
	FmXAWVqcMNNgJYGZ1vD9OvW1K22gziImLan5u79GcBIyKoGO/jTltAXZbaiXsTtvsRi+
	grfiYrgh+ulA6OYpkTLN5slb9X4/i3Pf5520FiGlAQk5Gn5MuPF/qyyE35WxSQsnrIQm
	E5wcptNzH5tFPFLoLmWwkLac6U6JSy9KUV6mgeqLVzy7SonXKJ6+6veGQ542A9itUFGO
	IJI00VYjfvwV5hhMvCtM3utSQFeKi5Sfhf+g0hPb1unvFQe0FYl1EMnS95fNbOXfCSA0
	3cTw==
X-Gm-Message-State: AIVw1120hamA0VvPDg1/HAAYk5/awcWXJDkXZLSgzwFl+1e8rpwncK3L
	1uwE99pI1jj64sPTInc=
X-Received: by 10.99.23.100 with SMTP id 36mr14124176pgx.118.1499146837738;
	Mon, 03 Jul 2017 22:40:37 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	i14sm37633032pgn.14.2017.07.03.22.40.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jul 2017 22:40:37 -0700 (PDT)
To: Takuro Ashie <ashie@clear-code.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
	<8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
	<7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com>
Date: Tue, 4 Jul 2017 13:40:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
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
X-List-Received-Date: Tue, 04 Jul 2017 05:40:40 -0000
Content-Type: multipart/alternative;
	boundary="------------185B0F162E8613AB812E32C9"
Content-Language: en-US

--------------185B0F162E8613AB812E32C9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

another bug :

checking for NSS - version >= 3.28.4... no
| configure: error: you don't have NSS installed or your version is too old
| DEBUG: <truncated - see config.log for full output>
| DEBUG: #include <malloc.h>
| DEBUG:                   #include <stddef.h>
| DEBUG:                   size_t malloc_usable_size(const void *ptr);
| DEBUG: int main() {
| DEBUG: return malloc_usable_size(0);
| DEBUG: ; return 0; }
| DEBUG: configure:9923: checking for valloc in malloc.h
| DEBUG: configure:9948: checking for valloc in unistd.h
| DEBUG: configure:10103: checking NSPR selection
| DEBUG: configure:10203: checking for nspr-config
| DEBUG: configure:10238: checking for NSPR - version >= 4.13.1
| DEBUG: configure:10314: 
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
-march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
-std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char -fno-strict-aliasing 
-fno-strict-aliasing -fno-math-errno -pthread   conftest.c 1>&5| DEBUG: 
configure:10333: 
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
-march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
-std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char -fno-strict-aliasing 
-fno-strict-aliasing -fno-math-errno -pthread   conftest.c 1>&5
| DEBUG: configure:10381: 
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc 
-march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 
--sysroot=/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/recipe-sysroot 
-std=gnu99 -c -fno-lifetime-dse  -Os -fsigned-char -fno-strict-aliasing 
-fno-strict-aliasing -fno-math-errno -pthread   conftest.c 1>&5
| DEBUG: configure:10420: checking for libevent
| DEBUG: configure:10427: checking MOZ_LIBEVENT_CFLAGS
| DEBUG: configure:10432: checking MOZ_LIBEVENT_LIBS
| DEBUG: configure:10605: checking for nss-config
| DEBUG: configure:10640: checking for NSS - version >= 3.28.4
| DEBUG: configure: error: you don't have NSS installed or your version 
is too old
| ERROR: old-configure failed
| *** Fix above errors and then restart with\
|                "make -f client.mk build"
| client.mk:375: recipe for target 'configure' failed
| make: *** [configure] Error 1
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at 
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/temp/log.do_configure.9904)
ERROR: Task 
(/home/bianchi77/poky/meta-browser/recipes-mozilla/firefox/firefox_52.1.2esr.bb:do_configure) 
failed with exit code '1'


Let me see my NSS....

On 04/07/17 13:33, Takuro Ashie wrote:
> |HOSTTOOLS += "autoconf2.13"|

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------185B0F162E8613AB812E32C9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
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
      | DEBUG: configure:10238: checking for NSPR - version &gt;= 4.13.1<br>
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
      | DEBUG: configure:10640: checking for NSS - version &gt;= 3.28.4<br>
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
    <div class="moz-cite-prefix">On 04/07/17 13:33, Takuro Ashie wrote:<br>
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
  </body>
</html>

--------------185B0F162E8613AB812E32C9--
