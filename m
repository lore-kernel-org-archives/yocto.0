Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15CAAE00DD9; Thu,  4 Jan 2018 08:20:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F1FE00DD1
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 08:20:18 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id d37so1400206uae.7
	for <yocto@yoctoproject.org>; Thu, 04 Jan 2018 08:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IFchKlMfqjWjSgj5UITUHMCvEEaAs8HJWatlq9QJJNo=;
	b=VjEFY23WXsv04Vd4Rg2udzEeY1C7EtyfM0kSXBK1c54b0lW2HrF0I3Pza1id2eOqkB
	Hq2FJR3tMAEfR0O9wOcvfHY0PL8Bv7RGS+RW7jlY/KhiUlIGV6LgnhIOy+ObUtmthQjk
	6DT5kbJjDt1DwANT0aFoXMu8v+aSbw2NO6yWVF4G2FTKhC7Q+pDQrUjdU58/Y4SYe0WJ
	rQ+LdYFoSe1D8e3G3LIbOuSAPWE6NaLzIVLoir8W0wrjBEg2hXvSpMl5g0U8+xGUSxD6
	wAy2QhLktbWixwB6rTF7iK66c8g8vca9pczLS+NqzKk7N5T2VcWY+1jF6n9/Vw7zSHrr
	MtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IFchKlMfqjWjSgj5UITUHMCvEEaAs8HJWatlq9QJJNo=;
	b=Iqt7yUr5/PRiEBDDJn11iJ8ywMtoRzd83PbmoIvyGeiMtGc+ytfJWawST27wYEzeM/
	9dWpDmUvd+sr6js1yTLyRZTq8TrfCP4vdGr+YP7P2s6mWblO2vesZk9Ezv1do+dOTLeP
	du1dO+soTXaMvtx0H7BPnoLyNsaaLKJV9ZADlZI6GW5MOyoeYRJKUW7SC2Sr9IoGj0Z8
	ksL3vxo5yDylc1iQZksTwJ5/BS5bVyY86oWaFIO4eImZPzz9Je0onLpC9hYUsVWNrvN7
	rNG1Zto+Og6F9uDT9KwoxTn3QMVOFYkdG/whIhAx31Mz81MTSB+nNNEm5EmT/iW9kaUP
	XiBQ==
X-Gm-Message-State: AKGB3mIUiPst9B3j3wPmwOOIw6OZ2xk8MweUr0DlXoBniM9X7zZBaClg
	54Ve4SVFJrPYsVIUjlcGi9rCBlwbvEwnufHrutGbGsg8p9w9N8lClZGdo7mMf5H/AkaiKOR7pRL
	eTqFbc8tcNiLsIPiIW7uMBWo=
X-Google-Smtp-Source: ACJfBot9Ry2lgmqkOj+7AATB9yef8RB2+vZ2IAmcx1dK5xhfroMn3+q/PZ2Cnl77kmGhWEMYhppNH5Bl+14q5DRVkaE=
X-Received: by 10.176.95.193 with SMTP id g1mr89063uaj.161.1515082817975; Thu,
	04 Jan 2018 08:20:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.28.74 with HTTP; Thu, 4 Jan 2018 08:20:17 -0800 (PST)
In-Reply-To: <CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
References: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
	<CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
From: Rail Shafigulin <rail@esenciatech.com>
Date: Thu, 4 Jan 2018 08:20:17 -0800
Message-ID: <CAOLNbFa3bmtTmUEszDF4OQABgY411ieT3+0iJC1zkekk80CWfg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: running autoreconf during a configuration step
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
X-List-Received-Date: Thu, 04 Jan 2018 16:20:20 -0000
Content-Type: text/plain; charset="UTF-8"

How do I add parameters to it? I need to run autoreconf -i. Didn't
find any EXTRA_OE<something> variables.

On Thu, Jan 4, 2018 at 8:15 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 4 January 2018 at 15:45, Rail Shafigulin <rail@esenciatech.com> wrote:
>>
>> I'm somewhat new to Yocto. Trying to build libsoc,
>> https://github.com/jackmitch/libsoc. The steps are outlined here,
>> https://github.com/jackmitch/libsoc#manually-building. The first one
>> is to run autoreconf -i. I've been looking through documentation but
>> didn't find anything on how to do it. Is there an EXTRA_OE<something>
>> variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
>> that is remotely related to it is EXTRA_OECONFIG, but it is for
>> ./configure step. I would appreciate any help with it.
>
>
> The autotools class will run autoreconf and then configure, so you just need
> to inherit that class.
>
> Ross



-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



