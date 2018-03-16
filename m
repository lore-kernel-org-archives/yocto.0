Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8A5FE00C4D; Fri, 16 Mar 2018 14:51:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55173E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:51:50 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id t186so4591674pgc.4
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ge/P8eeISaRA+cUrI4RDJUdpIBmvHPDPKVu/s7P0SXo=;
	b=T4RODa1lZRmk1uC7x+IzzWJ7xAwAEgqBTN9N+H6gwLLxI47QI4YQ7s4e7Etw6Hu9+q
	Gbw0jxlSqZIsT+ZV2BqMzfNuCRWi+JtH0n7vqqMdlYV9jv1JlSD45pfHtT8TvUOVRVJQ
	r9bNOwi88jZ0PIBnKOMy3u3XFrSf1/u6rwOPdn0cilOchUsicQcAibVovu7UEEIDKPWJ
	ES6aeumrC/bC0kEywsGQUmfUrLtkFBiwgE54rWmtc9wJaXdtGDWgGYVc5T94DgceRSOv
	TJz3tkzUcxkNUFThIp5gu3HcCv9/bBfWImKuD7bZcPGCBKjA9L5GAVe+465Giz0nD51d
	rnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ge/P8eeISaRA+cUrI4RDJUdpIBmvHPDPKVu/s7P0SXo=;
	b=l1eSiMDZbK+LYC6EsRUmnDyFWKERriz1MI6vJ1Iq6F4YVHnVfomgKLJvc5Fywao2eI
	AvzV6dU26uxMsPlu4wb1GxOVJQIUj1VNmAeBeRUoJqp5OrupCXndwCPSn9/JOqx6Xcxk
	PqkIywtaVgFyKW/izdn2NkTL29hDOlNwSezeeVCNVg/l71jWi5KuanE6UP5UO5ftjDMO
	bWkF/Lhcw0zg5Gq7q59Pjip0poyHNaeeuDol0S/kRnHt3AGTjHz97U+s0nuj6UJ2V4Mh
	tTGGF5vhbIa6lEBS2jGCTffAo1QWaDMJyUmJ5eTh5KnGmVKpGCxps+RT7IJwXMdd9GPm
	ftEw==
X-Gm-Message-State: AElRT7HoLZksPA9eQSmXb5KhY196tU2m/j5LoX0muOMl5zVoRAfAQiWm
	VQxW9GDalfbwADtaavkkysd2BAkdLl3btduftgVjRg==
X-Google-Smtp-Source: AG47ELsJEvgXYsewqkTaYgXh5gbsiUlG0Lc22iq3d4wclkpS6ohczrp4mUPAhMwbsmJw1rVXalPnuQ24V0v0+skZcPM=
X-Received: by 10.98.46.197 with SMTP id u188mr2929259pfu.32.1521237110452;
	Fri, 16 Mar 2018 14:51:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.182.197 with HTTP; Fri, 16 Mar 2018 14:51:19 -0700 (PDT)
In-Reply-To: <12270a1aeed348d7bdabbbeca64fb6ef@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
	<CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
	<27471f70f26541d8add86faeec8509c1@sakuraus.com>
	<CAMKF1sothqiEPDCow7K+8sqFCEgMrhdEyXuJqEBNToyrMOqeBQ@mail.gmail.com>
	<12270a1aeed348d7bdabbbeca64fb6ef@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Mar 2018 14:51:19 -0700
Message-ID: <CAMKF1spQj+MOCbe0fxLax3rBQY_cbnuNyUsESSpegbzSX5HB_w@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Fri, 16 Mar 2018 21:51:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 16, 2018 at 2:22 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Friday, March 16, 2018 02:16 PM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>>
>> On Fri, Mar 16, 2018 at 2:10 PM, Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> wrote:
>> >> -----Original Message-----
>> >> From: Khem Raj [mailto:raj.khem@gmail.com]
>> >> Sent: Friday, March 16, 2018 11:55 AM
>> >> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> >> Cc: yocto@yoctoproject.org
>> >> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>> >>
> ....
> ....
> ....
>> >
>> > I've run journalctl on both install_db.service & mysqld.service. mysqld comes
>> back with no entries. install_db comes back with a line each for Starting and Started
>> Install MySQL Community Server Database.
>> >
>> > systemctl status returns exited success for install_db, for mysqld it reports Active:
>> inactive (dead).
>> >
>> > systemctl list-unit-files shows install_db as enabled and mysqld as disabled.
>> >
>> > I was able to start mysqld with systemctl start and it showed running with
>> systemctl status & ps. But it did not restart after a reboot.
>>
>> can you try
>>
>> systemctl enable mysqld
>>
>> this should enable it to start on boot.
>
> That did create a link and it started on reboot.
>

OK thats expected see ./meta-oe/recipes-dbs/mysql/mariadb.inc

SYSTEMD_PACKAGES = "${PN}-server ${PN}-setupdb"
SYSTEMD_SERVICE_${PN}-server = "mysqld.service"
SYSTEMD_AUTO_ENABLE_${PN}-server ?= "disable"

its disabled on install. you can set it to be enabled via a bbappend
in your layer

> I take it that something is happening in install_db and among other things that link is not getting created?

its calling

mysql-systemd-start pre

but it depends on mysqld.service so I wonder if it was not working
because mysqld.service was disabled
so may be now it works

