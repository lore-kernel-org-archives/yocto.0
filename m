Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16F28E00E9F; Wed, 20 Jul 2016 23:35:53 -0700 (PDT)
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
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E118AE00DA9
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 23:35:49 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id w143so6892223oiw.2
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 23:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QknWXOgnOk7Z9ZMMcLKFSeUspVz7qvxiWEyhSAjc8Xk=;
	b=jyQu52+UTBRm3bD4vguL3YsxMC6/x2Tc+uR8sQp+tLnaPtMwYCKkgo6mr7lLySyuhk
	BgCYAY2SJN6mJH0zFFZUBIg2rYb0DUMCI27uxo2utvvnyAGtHNrkVf6VoZ9t29yhK9Sb
	vOa5DbRUDPFKWkI+Ga1O3fAFil/bMMR4hB7E3Oi2oDB8Co3HfpM/nOlrp8T38RRAFdig
	E2rIvMSXyTFY6TKtEVa/MYzgzToQNMscAOzNBWlfe/KBeee6wIMoB1GJMzLZ3HNy2R6a
	trzud9WtUWbiF8oyO1JVJ/UQyYdGTWRO2U7sqfnw8fPOYXpndXF8Nw1zR3N2mKiHH2dt
	u2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QknWXOgnOk7Z9ZMMcLKFSeUspVz7qvxiWEyhSAjc8Xk=;
	b=boIBqATmZpBFTN+cR3CldVfAa9ii6+7dq05bG84qE5Tw7U4XdqPuRynEWI0Q3olEXq
	kVvPjrk4DYnJ6R+qeD+A3v7dmVfdDj+6VIjK3+LKxmXpzE9Smksq4i7Luah5oU5ItoQC
	REDQQSnXVhG8yJaVnExy/QYNVUD9R7H34omiRVqqcRqEllghL4EaXwIxD6Z/YSojMG60
	2okkfULOD9TuxK3ZCXqjQI4r8TBxv14JxMA9VaJyvGXZeKdXxChvQiqDYfHId7tmic7I
	UBOKXp0vjkBg8rEe5itiRbL1d64mTlWIledd791NM7bQScuECTcP+RZ7VWUsN24uYw9l
	grVA==
X-Gm-Message-State: ALyK8tKmbTZrfT3WXFuGTQJd3vC7GUGc2axKCNs0uStvCN3iSWL+5wx78bTixGgTXTyffMZ+/vc590zYRJdyiA==
X-Received: by 10.157.21.74 with SMTP id z10mr28949361otz.100.1469082948470;
	Wed, 20 Jul 2016 23:35:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.24.71 with HTTP; Wed, 20 Jul 2016 23:35:48 -0700 (PDT)
In-Reply-To: <a2afecd0-e6c0-ee36-5643-c08ecfd7adbb@windriver.com>
References: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
	<a2afecd0-e6c0-ee36-5643-c08ecfd7adbb@windriver.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
Date: Thu, 21 Jul 2016 08:35:48 +0200
Message-ID: <CAPbeDC=7xHq6WaT8zfvAD3e17GhdkpKoog5wFg=aJwe05ruwyQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Jul 2016 06:35:53 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 21, 2016 at 5:22 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 2016-07-20 4:19 PM, Jacob Kroon wrote:
>>
>> Hi,
>> I'm trying to get the SDK to be able to run the kernel's "make
>> menuconfig" target
>> using nativesdk-ncurses from the SDK. Looking at
>>
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/commit/scripts/kconfig/lxdialog/check-lxdialog.sh?h=standard/beaglebone&id=badf6fedf455958fe0ff3c060c8e3965ef6d80dc
>>
>> I figured out I could pass CROSS_CURSES_[INC,LIB], but the second chunk
>> in that patch looks weird:
>>
>>     elif pkg-config --cflags ncurses 2>/dev/null; then
>>         echo '-DCURSES_LOC="<ncurses.h>"'
>> +   if [ x"$CROSS_CURSES_INC" != x ]; then
>> +   echo "$CROSS_CURSES_INC"
>> +   exit
>> +   fi
>>     elif [ -f /usr/include/ncursesw/curses.h ]; then
>>         echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
>>
>> (I had to do manual indentation with spaces in gmail)
>> Is the indentation or the logic incorrect ?
>
>
> In the commit itself, the indentation is fine.
>
> That block of code is just dumping flags that are used in the
> build. So in this case, it is correct. If the variable is
> non empty, it is echoed and then processing exits.

The check if CROSS_CURSES_INC is non-empty is only done if the preceeding
 "elif"-check is true, and not unconditionally as one would expect
judging by the indentation.

