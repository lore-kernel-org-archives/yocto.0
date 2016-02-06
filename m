Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCC93E00CA9; Sat,  6 Feb 2016 09:42:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E385E0085E
	for <yocto@yoctoproject.org>; Sat,  6 Feb 2016 09:42:36 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id y89so17471941qge.2
	for <yocto@yoctoproject.org>; Sat, 06 Feb 2016 09:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=/aflJQnF5zb3kLsuDr2fPZHvDPmQvohBFZExoJt+6wg=;
	b=LeiEwNrtx4MxVOtPw6crtc/7kfmDNYX3B3XLp8nOFBwsziXjP94obrMKTGR72M7s2q
	/CMQ6Hb2jOzcwrH+/xV2KT9zAlVWpxJ46tKJ4lVSKLVgapaDYm6LXa67BBuzhd+gGB0x
	U3ySU5YyihgjgL5OMRC7VPm+aFC65ec2C/w5oa8L5k686ujV7yyylS/oz2wR+M8prmdV
	gik0mTJ82pI/3Njk0mqOfL2yG6Rb3x6V3PQt7S00L9ybRANtRxczn54fqJgY+CMDC1Bz
	P9sCqVIMAZznQ5NZgyxgIaoXui3mttqWiqvxThDM5U+or9aebFX1m3yujJ3PksApQgrt
	WKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/aflJQnF5zb3kLsuDr2fPZHvDPmQvohBFZExoJt+6wg=;
	b=euDZF6gVFXXPVHrHNOS7t7aPwO/TxptKASYkXfeHJ/LqmwvGqiRpDxXyRq5eOdAFJA
	NSJQGGtWiW5OOInEGuh43nIVh+6LJIydke4FD/bYesXucNW6Oick2oYm0TVYfFwHMNqf
	MfNHKeSa5X+wwE/9RY6gW75uvGyrb1x3rTWxxSQzytKVOfm000t+WFt2mh0+ngR4ymrM
	KOUN3ryi+1gzpaSTWq/zzT35r5o8JzwBjyCwyoczTAhL/n8yYqT4l1esSfkgb64fb8yp
	mxn0IWiy+BMs+8dgkxXYWf6dDtJNYGcyQC3zgHxS86ZIE/1plLQJ6RYdI9U+ZN7LnMeA
	je5Q==
X-Gm-Message-State: AG10YOTpeel0vrn9e/m9M970yN0aQIf5s5MEVY2R4we1wTSQNBlgiMN2Br9/pLII6kOs0V1B9f60RngHTcF0+w==
X-Received: by 10.140.100.229 with SMTP id s92mr23637349qge.19.1454780555676; 
	Sat, 06 Feb 2016 09:42:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 6 Feb 2016 09:42:06 -0800 (PST)
In-Reply-To: <81E25E83-62EC-4161-99AB-77DF752437EC@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
	<CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
	<CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
	<CAMKF1soGpt_BA1FFsiOSZxpoT5RH6LjwKBTiCqz+C=6KFr_Aog@mail.gmail.com>
	<3DDC4837-5BF7-4959-A4FF-A07435B3DE5A@nathan.to>
	<CAMKF1soTRnmbuiwOzg+NLgJp7abaWyQnGwFjrWj8N9c8Hzw8cw@mail.gmail.com>
	<81E25E83-62EC-4161-99AB-77DF752437EC@nathan.to>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 6 Feb 2016 09:42:06 -0800
Message-ID: <CAMKF1soKaSCr8Aww52aQyo4YMw-SP+CH6gY5r_Bts3SMGGLyew@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Sat, 06 Feb 2016 17:42:39 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 6, 2016 at 9:07 AM, Nathan Sowatskey <nathan@nathan.to> wrote:
> /lib/ld-linux-x86-64.so.2 /usr/bin/testprog
> Illegal instruction

thats your problem. It seems to be compiled for a newer architecture
than whats emulated on qemu

