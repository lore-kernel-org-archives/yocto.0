Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9976CE00EB2; Thu, 21 Jul 2016 05:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65FADE00EAC
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 05:58:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u6LCwY5S030158
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 21 Jul 2016 05:58:34 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 21 Jul 2016 05:58:33 -0700
To: Jacob Kroon <jacob.kroon@gmail.com>
References: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
	<a2afecd0-e6c0-ee36-5643-c08ecfd7adbb@windriver.com>
	<CAPbeDC=7xHq6WaT8zfvAD3e17GhdkpKoog5wFg=aJwe05ruwyQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5790C6F8.3060402@windriver.com>
Date: Thu, 21 Jul 2016 08:58:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAPbeDC=7xHq6WaT8zfvAD3e17GhdkpKoog5wFg=aJwe05ruwyQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, jason.wessel@windriver.com
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
X-List-Received-Date: Thu, 21 Jul 2016 12:58:39 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-21 02:35 AM, Jacob Kroon wrote:
> On Thu, Jul 21, 2016 at 5:22 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> On 2016-07-20 4:19 PM, Jacob Kroon wrote:
>>>
>>> Hi,
>>> I'm trying to get the SDK to be able to run the kernel's "make
>>> menuconfig" target
>>> using nativesdk-ncurses from the SDK. Looking at
>>>
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/commit/scripts/kconfig/lxdialog/check-lxdialog.sh?h=standard/beaglebone&id=badf6fedf455958fe0ff3c060c8e3965ef6d80dc
>>>
>>> I figured out I could pass CROSS_CURSES_[INC,LIB], but the second chunk
>>> in that patch looks weird:
>>>
>>>      elif pkg-config --cflags ncurses 2>/dev/null; then
>>>          echo '-DCURSES_LOC="<ncurses.h>"'
>>> +   if [ x"$CROSS_CURSES_INC" != x ]; then
>>> +   echo "$CROSS_CURSES_INC"
>>> +   exit
>>> +   fi
>>>      elif [ -f /usr/include/ncursesw/curses.h ]; then
>>>          echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
>>>
>>> (I had to do manual indentation with spaces in gmail)
>>> Is the indentation or the logic incorrect ?
>>
>>
>> In the commit itself, the indentation is fine.
>>
>> That block of code is just dumping flags that are used in the
>> build. So in this case, it is correct. If the variable is
>> non empty, it is echoed and then processing exits.
>
> The check if CROSS_CURSES_INC is non-empty is only done if the preceeding
>   "elif"-check is true, and not unconditionally as one would expect
> judging by the indentation.

Yep, that's the point. It goes to pkgconfig first, and then falls
back to that.

The indention is fine in the actual repository.

--- a/scripts/kconfig/lxdialog/check-lxdialog.sh
+++ b/scripts/kconfig/lxdialog/check-lxdialog.sh
@@ -4,6 +4,10 @@
  # What library to link
  ldflags()
  {
+       if [ "$CROSS_CURSES_LIB" != "" ]; then
+               echo "$CROSS_CURSES_LIB"
+               exit
+       fi
         pkg-config --libs ncursesw 2>/dev/null && exit
         pkg-config --libs ncurses 2>/dev/null && exit
         for ext in so a dll.a dylib ; do
@@ -25,6 +29,10 @@ ccflags()
                 echo '-DCURSES_LOC="<ncurses.h>" -DNCURSES_WIDECHAR=1'
         elif pkg-config --cflags ncurses 2>/dev/null; then
                 echo '-DCURSES_LOC="<ncurses.h>"'
+       if [ x"$CROSS_CURSES_INC" != x ]; then
+               echo "$CROSS_CURSES_INC"
+               exit
+       fi
         elif [ -f /usr/include/ncursesw/curses.h ]; then
                 echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
                 echo ' -DNCURSES_WIDECHAR=1'



Bruce

>


