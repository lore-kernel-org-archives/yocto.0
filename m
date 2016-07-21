Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF506E00E5B; Wed, 20 Jul 2016 20:22:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA8AEE00E4F
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 20:22:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u6L3MLF5025717
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 20 Jul 2016 20:22:22 -0700 (PDT)
Received: from server.local (128.224.23.140) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 20 Jul 2016 20:22:21 -0700
To: Jacob Kroon <jacob.kroon@gmail.com>, Yocto Project <yocto@yoctoproject.org>
References: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <a2afecd0-e6c0-ee36-5643-c08ecfd7adbb@windriver.com>
Date: Wed, 20 Jul 2016 23:22:20 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
Cc: jason.wessel@windriver.com
Subject: Re: kernel menuconfig/ncurses patch in linux-yocto
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
X-List-Received-Date: Thu, 21 Jul 2016 03:22:28 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-20 4:19 PM, Jacob Kroon wrote:
> Hi,
> I'm trying to get the SDK to be able to run the kernel's "make
> menuconfig" target
> using nativesdk-ncurses from the SDK. Looking at
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/commit/scripts/kconfig/lxdialog/check-lxdialog.sh?h=standard/beaglebone&id=badf6fedf455958fe0ff3c060c8e3965ef6d80dc
>
> I figured out I could pass CROSS_CURSES_[INC,LIB], but the second chunk
> in that patch looks weird:
>
>     elif pkg-config --cflags ncurses 2>/dev/null; then
>         echo '-DCURSES_LOC="<ncurses.h>"'
> +   if [ x"$CROSS_CURSES_INC" != x ]; then
> +   echo "$CROSS_CURSES_INC"
> +   exit
> +   fi
>     elif [ -f /usr/include/ncursesw/curses.h ]; then
>         echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
>
> (I had to do manual indentation with spaces in gmail)
> Is the indentation or the logic incorrect ?

In the commit itself, the indentation is fine.

That block of code is just dumping flags that are used in the
build. So in this case, it is correct. If the variable is
non empty, it is echoed and then processing exits.

Bruce

>
> Regards Jacob
>


