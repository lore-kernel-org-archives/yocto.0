Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2179BE00CA7; Thu, 18 Feb 2016 23:05:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3C1E00C7D
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 23:05:10 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id g203so100398971iof.2
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 23:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=a+2ZFK2cIxvRhoSsTfTRcJ85z9jA7J+ljCL8VBvrrb4=;
	b=xTZvbeOZMD2uE8lPi7bVlg2+Ivd2OmxxC0G3rgvSQVN8STNcQ1r8V1ylM3pOOVW1XO
	n8/0lbO+TsuuQzIsl2T+OM44BFDjsjpECGYpfE/XPhV/rTioWszkfGcEayEHsu3WBYxF
	LdlKK8M6Xtqc8aft/x9OzbOgrlU5VTqLscmyDXjkyqhnNHjRY0DcWuhZWHBMYtzvOSKA
	OYa6dQ8rv9ed+II/ziS9BpzXdLnmaXjbGn6gx51q4lofsjZOxFgpCZMw+xc4QE6ujhi/
	1fVYa90HeHtybrvB8CD+32orLQwcw+nWGWyIw3EeFXJwm5CV65myBPgq/LMHoQOppbmz
	5hag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=a+2ZFK2cIxvRhoSsTfTRcJ85z9jA7J+ljCL8VBvrrb4=;
	b=YTHXrZDKgMfEPrm8HT8Pi2r2N9cGML2hkVchcBUzoqyZ1zpnLBXsrfUUTztI26401B
	AZI14qAskJe6qEhgYs8YjOBu9eTzMoW/3GPpYh4Tdqh0EucvuXMunFRKRH4VKcjgJWsy
	5JA5jeWKusJzB4WC8fnv3szr823cfFIXhg6FqxWUbijJkFrjH2gKop12TfgKn+AZgf6j
	Cu+7SYJ25lP8pkX4iB5TWlKQAGhnZ9Pcr9SgXiAr8iOTB+kgGqCjI1f6Vo0BhUosQmTQ
	qbibQi8QZxBLJC1ILvTFObFdbHBeXptH/pePoYTJMiKjbKmxaiFCfX2Kb9/xdrOO/EyD
	OU/w==
X-Gm-Message-State: AG10YORJAB+HkSbhkkLg1mrm2FYtRwD1zfPJghW8pu/YqLSqf4jFYVdVBBiqAoOE22jkIVRw3937SCI+PJJYlQ==
MIME-Version: 1.0
X-Received: by 10.107.164.15 with SMTP id n15mr11972907ioe.148.1455865509928; 
	Thu, 18 Feb 2016 23:05:09 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Thu, 18 Feb 2016 23:05:09 -0800 (PST)
In-Reply-To: <CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<4771189.YZVmszphZV@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
Date: Fri, 19 Feb 2016 08:05:09 +0100
Message-ID: <CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Fri, 19 Feb 2016 07:05:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2016 at 9:06 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Hi Andreas,
>>
>> On Wed, 03 Feb 2016 14:41:42 Andreas M=C3=BCller wrote:
>>> FAQ for layerindex says recipes are updated every 3 hours but I think
>>> it does not work. E.g meta-oe geis/grail/frame are not mentioned but
>>> were committed few days ago.
>>
>> I do know there's a problem, but I'm honestly not sure what's causing it=
.
>> Unfortunately I don't have time to dig into it now but let me see if I c=
an
>> resync meta-oe at least.
>>
>> Cheers,
>> Paul
>>
> No need for manual update - it was just a heads up. I was not sure
> that it is a known issue.
>
I checked in history:

meta-openwrt added 4 weeks ago is the last layer for that was
analyzed. meta-cpan and all published after that were not analysed
anymore - they are reported having no recipes.

As this is a strong tool I have at daily use: Is there something I can
do to get this working again?

Andreas

