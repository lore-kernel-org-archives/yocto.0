Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D2DE00DA9; Thu, 18 Jan 2018 05:41:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F1FE008A4
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 05:41:41 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id e19so15546633uam.6
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 05:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MkTFjy56PuBEMyCDSWEeSjoXGjYUSdutLa3MMY7on9U=;
	b=raEgq+drVbqt9FM/sA1M6ZLaSVP+a4cIYQxPG+lyOX3xB0ta7mTeattovoxpypnVjx
	nqruBMllK9+kmu7b7q+LYGcvBY1v5xTJxczR39b8HDXH3oaY9Y3415kkWgctdiBvuYU8
	lTXoSnp1w1rQj+/HaSlLOt4m/7niRwDumL2oLbnr8yLNmsxocxJQN4z0cT+6gselYHLM
	W2CfvqUFBZEpeepNI/33l2ZMTXw0hKCU8jrUsxV36qeyf9i+TghjZ4uzQn8+TWL4PAG8
	+Nij4YVLNVpEQxXBdfaoYZdiE7Lhc1NKU3S88qolWNgQXRERavn9lgy6TjOfB4w5AA+N
	WE7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MkTFjy56PuBEMyCDSWEeSjoXGjYUSdutLa3MMY7on9U=;
	b=k4TkrZeU2gr7blP22GSObZ//2wFamYAX2A9JyqvWlc8EjV93UevQ0UXawxAyQjAiTH
	+ZCAYvilp9uBImvesNE+wVRVtAwvwB2Tn4nlVbm0qFZTZgGLPaDSZh7FyyqVIsn6hElZ
	+WO0zql3SZhSjgFUXBdB4H66zRjrTMFXdtwyvrLvCwZRc0X35bVUFEvrkKTbN4zjFgc3
	RIG7XQvnsbkafpFeRGjA5Cl51WlaUvlf/r/hnJXnHDfgSR6jocS0tDKCOq9PnhwhvSsA
	85Xsp9t6NOS1T/UsDDgLtGmruGCaK0V/5jim9ACh5D9DZ0rlXihYD55w4wp6WjW1jrLq
	DY0g==
X-Gm-Message-State: AKwxytexuc51SutCVQK5mnSpbHuWku7C3e+t8eUQXw64dJ8dqVjJjjkr
	TgY7dNDPm8Ag/igVTIxZlBAdVE5vEfLbtrq2pGs=
X-Google-Smtp-Source: ACJfBouFXNpNZgxCp3mVGgLzkTdtTr1ob38OIMbgWKoc+X8l4kPAZFuPL6gRbjCCWVeMgY5WM7TX2hyLeb5sugVt/Tk=
X-Received: by 10.176.77.230 with SMTP id b38mr4399497uah.113.1516282900478;
	Thu, 18 Jan 2018 05:41:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.51.154 with HTTP; Thu, 18 Jan 2018 05:41:39 -0800 (PST)
In-Reply-To: <CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 18 Jan 2018 14:41:39 +0100
Message-ID: <CAC+thW0g-Sc+K7yNp6BU6ia31RX1Gy4N0v6LQ1qFcTjiXniDTQ@mail.gmail.com>
To: Max Krummenacher <max.oss.09@gmail.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 13:41:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 18, 2018 at 2:13 PM, Max Krummenacher <max.oss.09@gmail.com> wrote:
> Hi
>
> 2018-01-18 10:05 GMT+01:00 Alexander Kanavin
> <alexander.kanavin@linux.intel.com>:
>>
>> On 01/18/2018 10:58 AM, Andrea Galbusera wrote:
>>>
>>>
>>> Looks like my first guess was not that bad. Reverting below commit,
>>> which switched to meson build system brought my build back to green.
>>> Also CC-ing the patch author who might suggest further investigations.
>>>
>>>      libepoxy: convert to meson build
>>>
>>
>> There's probably a missing header include - carefully compare do_compile
>> logs in both cases and see how they differ for the failing file. Also
>> inspect the file for any conditional define macros and see if they're
>> enabled or not in both cases.
>>
>
> I've seen this also with a build for Nviidia Tegras which have non
> 'standard' (i.e. not from the mesa build) EGL/OpenGLES header files. (And
> there is no OpenGL/GLX.)
>
> Above error and a linking attempt against the not existing GLX are both in
> the test binaries produced from the libepoxy-1.4.3/test directory. All
> artefacts from in there are not packaged by our recipe. Before the switch to
> meson those binaries were not built, so I guess that the issues have been
> there all along but they did not trigger.
>
> My interim fix is to remove the test directory from the top-level
> meson.build file but I'm unsure if that is a way forward.
> I did not yet build nativesdk-libepoxy with this.
>
> --- libepoxy-1.4.3/meson.build~ 2017-06-06 11:55:31.000000000 +0200
> +++ libepoxy-1.4.3/meson.build  2018-01-18 14:10:49.517098475 +0100
> @@ -258,7 +258,6 @@
>
>  subdir('include/epoxy')
>  subdir('src')
> -subdir('test')
>
>  if get_option('enable-docs')
>    doxygen = find_program('doxygen', required: false)
> [
>
> Max

Yes, this is coherent with what Alexander's commit message says. We
started building stuff in test/ while switching to meson...
If we can't easily fix the upstream ourself and/or reproduce outside
of OE to ask for help from upstream devels, IMO we should temporarily
prevent meson from building the tests.

