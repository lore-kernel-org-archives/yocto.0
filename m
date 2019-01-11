Return-Path: <grant.b.edwards@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B30EE00C46; Fri, 11 Jan 2019 07:50:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (grant.b.edwards[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7E7E00872
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 07:50:49 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id c9so3466955itj.1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 07:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=YixQyg2CAlPwI1oA7mUoKTsI/ekthYng0w+TM/DaMto=;
	b=I2co9NtdpaYoupbkc+t2TzB2CmcUbh9LLa2cuaeLpJ/H0PdAcKlctaw4alof3x3irN
	zKa90q+BHzBODvblP2EMEDpDxc3FRJlqHGks81rIs88fclG1ceZdqTYjRjtcwAkIcbqO
	BHlcJD8V2rhA59tUHVLnpysZBHQwkkcnjabA48ERfCh1KI9C7o2x9X78DsZpa/av+uu1
	960fGOuadW46aqZmKQGaIERWm1RkOL2etRXklUPQDraC/6AKvadXifJI+7OsM3EWMZEp
	NmX70NeiqUTH3Z5zn+qb78EO4z5QxJ94B76zY/1pJmRemDjmpUIliibk5bOLqk7Ilc7U
	+jSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=YixQyg2CAlPwI1oA7mUoKTsI/ekthYng0w+TM/DaMto=;
	b=is+FEwD+PfpugNxjnBZv5F7MniMlv+Kusyo5dJQsY8d9FKSnz5ZlXVe85naq3tZHgK
	ZKfhTap+OKXDxmWE+BlZmwe9AHKwoT3gBztm5PIWVLqAumaTplQKys4rJOmM1GiSMklh
	9kggFczdkIUUOUVdrKF2Wj6g6D0aSL6yfQyQp02EAPH/zeUI/G2Ob/pZHFS6eBcLunZg
	vM2hGZjb1L34FoosLyD6Yqx18lCl9EPs1QW/dr3nKCliBtuQL4jaUwLUnXuQlR7q/5Qf
	xBpktNp5+7H6daCnSuSdbG8qJu56U34FNp/T/FMCUOuTgUpSpq3/uYRkDqswd9aON82r
	+vrw==
X-Gm-Message-State: AJcUukf2PLu0shScVMNpNzKLFCEd2STU0+9wBdpUSkIqClI1PC3uTUTP
	0QHnHCw5fW2yg1U6IHI5YBSOzhrB
X-Google-Smtp-Source: ALg8bN6KKGvhrpxlhMZZg0L6zUQd1q/BkVJGun7Ne+07Gyf2RffdJtDIUjhHS9TWiMrNDEWNq7MUkA==
X-Received: by 2002:a05:660c:20c:: with SMTP id
	y12mr1186326itj.88.1547221849098; 
	Fri, 11 Jan 2019 07:50:49 -0800 (PST)
Received: from grante (67-130-15-94.dia.static.qwest.net. [67.130.15.94])
	by smtp.gmail.com with ESMTPSA id 72sm990774itw.16.2019.01.11.07.50.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 07:50:48 -0800 (PST)
Date: Fri, 11 Jan 2019 09:50:46 -0600
From: Grant Edwards <grant.b.edwards@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20190111155046.GA1920@grante>
MIME-Version: 1.0
User-Agent: Mutt/1.11.2 (2019-01-07)
Subject: SDK missing /usr/include/asm header files
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
X-List-Received-Date: Fri, 11 Jan 2019 15:50:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


I've built a "poky" SDK for use with a Renesas RZN1 eval board (dual
ARM Cortex-A7 cores), and the toolchain's sysroot seems to be missing
the "asm" header directory.  When I try to compile a simple tcp echo
server program I get this:

    /home/grante/rzn1d/toolchain/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc --sysroot=/home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi -march=armv7ve -marm -mfpu=vfp -mfloat-abi=hard -Wall -Werror -std=gnu99 -c tcpecho.c
    In file included from /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/signal.h:287:0,
                 from /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/sys/wait.h:36,
                 from tcpecho.c:6:
    /home/grante/rzn1d/toolchain/sysroots/armv7vehf-vfp-poky-linux-gnueabi/usr/include/bits/sigcontext.h:30:11: fatal error: asm/sigcontext.h: No such file or directory
     # include <asm/sigcontext.h>
               ^~~~~~~~~~~~~~~~~~
    compilation terminated.
    make: *** [Makefile:26: tcpecho.o] Error 1

Browsing throught the installed toolchain's sysroot confirms that gcc
is correct: there's no "asm" directory in the sysroot's usr/include
directory (or anywhere else in the toolchain's installation tree).

This is the first time I've tried to build an SDK, so I've probably
done something wrong, but I could use a clue as to what might have
gone wrong...

-- 
Grant Edwards               grant.b.edwards        Yow! What's the MATTER
                                  at               Sid? ... Is your BEVERAGE
                              gmail.com            unsatisfactory?

