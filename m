Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEE68E0086E; Thu, 21 Jul 2016 07:24:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 199DEE0045D
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 07:24:11 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id d204so7821705oig.3
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 07:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+XRwq1ebmwxJ2kWPYsTHSHU0FQhqvTMZ4N1mNE6dGHg=;
	b=eUU91KcKog9Ms6YrueieNc7MB3zLS2PaojTlrCimhiXZflhxwpap9Pq5dVT0pZl2ND
	M3yUtIz53uuBgci2lQfXZQEYuKORllgDaFCi6xNQ/hQJt7xmKirrFRrlt8pcRX4pQTX2
	Eh8E3wB0244yOS8W83UUpEC+suT9H3kwKOxldIwHPt9qqfYQJN5YDSr2EN5NXcFsyMRA
	41t7HOPc3JJRyAOLX+z80jOseMAzpx3GaoKho5N0LeLV1CqCq6d6k9W5uRO6tqfNwyQE
	EW+CouwcVSR2L8KpUiQ8/6NmmL1WYt13XXuZMFM9otX4lrUzC7rfej2Y1VKK+sYnVb4X
	ysJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+XRwq1ebmwxJ2kWPYsTHSHU0FQhqvTMZ4N1mNE6dGHg=;
	b=incSVkT4I8mi0mn5qBEVnsoln/aMUqxQ5swrQ6QAHMPluzpEvVv5KC9d3jDh+6Grbw
	euFyeIknPnpJfXCrNJZAOl3nZnzDesxIbW3F8whQ5onGiX3jI5ltjDTTmIWDUFPRUX4f
	U0TXiJZ1hsVekV72n//hrGbRx2TB2ly2BbGXGnhEYEijMfpDzyAMAb054LDW2YR7H5yF
	xEfiJQUBZf5qVcZNiNvuFh1x8WuYfoShqzZO5OSDVkiQp8hCLF02J1wHb5R34c8wT20I
	GYdoQZk2mje7ieQ58Zf9s0viqiZbwydoQcOtNoS/7sohX2BXrhcrBL+JQNvRv4CZm7Uj
	G+Ig==
X-Gm-Message-State: ALyK8tL9CZGdZDHL0cXXrMz+SwpQ25GIBJlhkujJu17opD9fnMIpGKjin7TInZqlbazNlhx8IRScJ/LfhJAAZw==
X-Received: by 10.202.48.82 with SMTP id w79mr26553635oiw.62.1469111050874;
	Thu, 21 Jul 2016 07:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.24.71 with HTTP; Thu, 21 Jul 2016 07:24:10 -0700 (PDT)
In-Reply-To: <5790C8ED.5040107@windriver.com>
References: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
	<a2afecd0-e6c0-ee36-5643-c08ecfd7adbb@windriver.com>
	<CAPbeDC=7xHq6WaT8zfvAD3e17GhdkpKoog5wFg=aJwe05ruwyQ@mail.gmail.com>
	<5790C6F8.3060402@windriver.com> <5790C8ED.5040107@windriver.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
Date: Thu, 21 Jul 2016 16:24:10 +0200
Message-ID: <CAPbeDCkck+wXjE3dhCZdix2CUkp1A0ZNo0G_=zM_7JXYzQdQtg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Thu, 21 Jul 2016 14:24:15 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 21, 2016 at 3:06 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 2016-07-21 08:58 AM, Bruce Ashfield wrote:
>>
>> On 2016-07-21 02:35 AM, Jacob Kroon wrote:
>>>
>>> On Thu, Jul 21, 2016 at 5:22 AM, Bruce Ashfield
>>> <bruce.ashfield@windriver.com> wrote:
>>>>
>>>> On 2016-07-20 4:19 PM, Jacob Kroon wrote:
>>>>>
>>>>>
>>>>> Hi,
>>>>> I'm trying to get the SDK to be able to run the kernel's "make
>>>>> menuconfig" target
>>>>> using nativesdk-ncurses from the SDK. Looking at
>>>>>
>>>>>
>>>>>
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/commit/scripts/kconfig/lxdialog/check-lxdialog.sh?h=standard/beaglebone&id=badf6fedf455958fe0ff3c060c8e3965ef6d80dc
>>>>>
>>>>>
>>>>> I figured out I could pass CROSS_CURSES_[INC,LIB], but the second chunk
>>>>> in that patch looks weird:
>>>>>
>>>>>      elif pkg-config --cflags ncurses 2>/dev/null; then
>>>>>          echo '-DCURSES_LOC="<ncurses.h>"'
>>>>> +   if [ x"$CROSS_CURSES_INC" != x ]; then
>>>>> +   echo "$CROSS_CURSES_INC"
>>>>> +   exit
>>>>> +   fi
>>>>>      elif [ -f /usr/include/ncursesw/curses.h ]; then
>>>>>          echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
>>>>>
>>>>> (I had to do manual indentation with spaces in gmail)
>>>>> Is the indentation or the logic incorrect ?
>>>>
>>>>
>>>>
>>>> In the commit itself, the indentation is fine.
>>>>
>>>> That block of code is just dumping flags that are used in the
>>>> build. So in this case, it is correct. If the variable is
>>>> non empty, it is echoed and then processing exits.
>>>
>>>
>>> The check if CROSS_CURSES_INC is non-empty is only done if the preceeding
>>>   "elif"-check is true, and not unconditionally as one would expect
>>> judging by the indentation.
>>
>>
>> Yep, that's the point. It goes to pkgconfig first, and then falls
>> back to that.
>>
>> The indention is fine in the actual repository.
>
>
> oh wait.
>
> I had my coffee and I see now what you mean, I was checking
> older repos, and when this merged into the 4.4 tree it does
> look like the conditional is hosed.
>
> I'll queue up a closer look at this later today.
>
> Bruce
>

Ah, that explains it. Thank you for looking into it.

Jacob

