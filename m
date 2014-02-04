Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E44EE0071E
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 04:53:20 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id q16so5583210vbe.7
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 04:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=xxR1olWzd/xlObf141gm2QopQm2avvLp2zoeb9azaQU=;
	b=KrwNTZPgSZsp3Yp22wV/UmQh6vyFkH6cjJhopQ/IpX2cKhwhoRrb9JPuLlw4mrn9RV
	k7AMqH5mRE4QmMILgRDdvtDzMpqTe5YTNtX6y5nz4i4GhVyXzW5IINaKsNyJjV1bKHCU
	UJKHkyUWRPI4ryxzjqeDiGVna8ySDJnlEYTOwjbuzxJsK6aiUQIDNCIcueWvMLsfO7ug
	ooTq+eCM9w2lrPwvRrVn6m3lM8CN9WFc9y12Cm+I/GGV87ggAqiyMc87EHIH5YNsHc7L
	zBZaYQutLWnTuTXVZQWEgQFH4PUldMTwKuEdCNzBiriFiUXb7xnhjmOMyQngp8efXiFr
	fnpQ==
X-Received: by 10.220.147.16 with SMTP id j16mr1011663vcv.28.1391518398586;
	Tue, 04 Feb 2014 04:53:18 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Tue, 4 Feb 2014 04:52:38 -0800 (PST)
In-Reply-To: <CAMCfZKFYTE=oRsXWwRzKNKpvZdPZe8GEby+rB0BY6qCeffWdZw@mail.gmail.com>
References: <CAMCfZKGN2k1NpUtGiMGK48pi5rzaZQbXrnfPbiL=brGhr4vnxw@mail.gmail.com>
	<CAMCfZKFYTE=oRsXWwRzKNKpvZdPZe8GEby+rB0BY6qCeffWdZw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 4 Feb 2014 12:52:38 +0000
X-Google-Sender-Auth: hW1L0KMGYhdxMIGj8BvQO1I__Yo
Message-ID: <CANyK_8eUyZuFm2ju7yWAXeHPcWoydCGmyoxSAcQA3pXwMArhzQ@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python package recipe
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
X-List-Received-Date: Tue, 04 Feb 2014 12:53:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 4 February 2014 10:05, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> On Thu, Jan 30, 2014 at 2:30 PM, Diego Sueiro <diego.sueiro@gmail.com>
>> To get dtbos and all python files on the package I need to add these lines
>> in my recipe:
>>
>> do_install_append() {
>>     install -d ${D}/${nonarch_base_libdir}/firmware
>>     install -m 0644 ${S}/overlays/*dt*
>> ${D}${nonarch_base_libdir}/firmware/
>> }

This looks like the best you're going to get without fixing the
upstream source. Just looked at
https://github.com/adafruit/adafruit-beaglebone-io-python/blob/master/overlays/builder.py,
it contains hard-coded install paths. You could report a bug or submit
a patch to make these respect the install prefix.

>>
>> FILES_${PN} = " ${nonarch_base_libdir}/firmware/* \
>>                  ${exec_prefix} \

What files do you need under ${exec_prefix}? Do you definitely want
all this in one package and not separate packages for the firmware and
such?

A lot of recipes have to customise the install function and add extra
directories to FILES_*, don't worry about that.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

