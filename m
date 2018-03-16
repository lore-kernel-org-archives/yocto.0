Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16316E00CF4; Fri, 16 Mar 2018 14:16:11 -0700 (PDT)
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
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DFD0E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:16:09 -0700 (PDT)
Received: by mail-pl0-f51.google.com with SMTP id v9-v6so6617304plp.12
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8aIuH/2nobuoBQewu7X+4dlgRw4mnAHr/w6EJE4BWwY=;
	b=SbwHWvKznrP2sRQyr5CTLvhYaIIBYMcdk3vqCfa633wA94bnuXJBCpa9uE105c3beW
	uGZZJ6efXsFp40sYYTfKoLC2C4c3lOep+mQQUHLfbXksZDXXIFyf2vewc7tvVamqzvmU
	gboDYJ8kY/re1U2NVN9PlVfHhIO1ZPZ9TTsoh+nNulTOlmsvTgAiKUQIE0GThjOK4IvN
	esHVQmDL856dwrwz2Mpy6nswONpuWQq1sf6VEK0xLvlOmQNjRtkUcKOUfO5OHw5sFBhl
	PapB0sBEtIlHbBjrWc/R6/DTlZnyEdSaTFPUvXmnHO8+WBDpenSw4f6/3TN14BxxoL5P
	8BXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8aIuH/2nobuoBQewu7X+4dlgRw4mnAHr/w6EJE4BWwY=;
	b=RDK7dc5/mxXOFAtV58YPwKRwp5W5OUd+8iuY/e1lkzmS/LA5G9rQadOhEdk8YKbpbS
	1jaa9/pHJBPDN9Y57gavXZYpEkg6yu3qTJXrHp8YlX7IIx0rZrO7zBbKZ9xeqcsWkZyV
	AqPGYFF3zKXsrABEqaCJFBkxXbMEI9RSjP14l1bKssJPk+O1TJ6FH1rjE7zNzIAxIiHo
	ddk+uT5YHKKjJgmQEryS6vTlG/XGdnhn7M++TZrWK7fpme3ZBhywM6qLHQn5YVAGoZeF
	P1C/ewQWM/cjMOBg/5s9p1Ww7GSPEJNJoaZzxd3vRQ7Po6145fUnbTq0FbS80OH1QFF1
	oZFg==
X-Gm-Message-State: AElRT7FSrGbB7tOJ8prL65jyOVymJQE0DDZAw5S/FHBIeiWJuD2bYazv
	8iagB0CEv17d9QMnQQcIqHZewIJaY0rHc1GhyCFq/w==
X-Google-Smtp-Source: AG47ELtfaj9l1vkC3JIFBg8gKSWUOuAuX19eSKW5ozlDF7GXk8YUdmnCB4R7Aplhd9y8+qwJcwC0EfOUEPYCsuT+Umk=
X-Received: by 2002:a17:902:9883:: with SMTP id
	s3-v6mr3532184plp.96.1521234969406; 
	Fri, 16 Mar 2018 14:16:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.182.197 with HTTP; Fri, 16 Mar 2018 14:15:38 -0700 (PDT)
In-Reply-To: <27471f70f26541d8add86faeec8509c1@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
	<CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
	<27471f70f26541d8add86faeec8509c1@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Mar 2018 14:15:38 -0700
Message-ID: <CAMKF1sothqiEPDCow7K+8sqFCEgMrhdEyXuJqEBNToyrMOqeBQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Mar 2018 21:16:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 16, 2018 at 2:10 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Friday, March 16, 2018 11:55 AM
>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>>
>> On Fri, Mar 16, 2018 at 8:58 AM, Greg Wilson-Lindberg <GWilson@sakuraus.com>
>> wrote:
>> >> From: Greg Wilson-Lindberg
>> >> Sent: Thursday, March 15, 2018 02:16 PM
>> >> To: Khem Raj <raj.khem@gmail.com>
>> >> Cc: yocto@yoctoproject.org
>> >> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>> >
>> >>
>> >
>> >> > From: Khem Raj <raj.khem@gmail.com>
>> >
>> >> > Sent: Thursday, March 15, 2018 1:54 PM
>> >> > To: Greg Wilson-Lindberg
>> >> > Cc: yocto@yoctoproject.org
>> >> > Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>> >
>> >> >
>> >
>> >> > > On Thu, Mar 15, 2018 at 1:38 PM, Greg Wilson-Lindberg
>> >> > <GWilson@sakuraus.com> wrote:
>> >> > > I'm building an RPi3 system that is going to use mysql/mariadb.
>> >> > > I've got everything installed, but mysqld is not starting.
>> >> > > install_db.service does run on startup, but the mysqld.service
>> >> > > file never gets triggered.
>> >> > >
>> >> > >
>> >> > > Is there something that I'm missing to get it to run? I've search
>> >> > > online, but can't find anything that pertains to yocto.
>> >> > >
>> >> >
>> >> > poke on the system with systemctl/journalctl to see whats going on
>> >
>> >>
>> >
>> >> journalctl -u mysqld.service says no entries
>> >
>> >> systemctl status mysqld.service shows:
>> >
>> >>    Loaded: loaded (/lib/systemd/system/mysqld.service; disabled;
>> >> vendor
>> >> preset: enabled)
>> >
>> >>    Active: inactive (dead)
>> >
>> >>
>> >
>> >> I've rebooted the system a couple of times to see if install_db
>> >> needed to be run before mysql would run, no luck.
>> >
>> >>
>> >
>> > It's seems that maybe I need to add a bit about my understanding of
>> > the yocto system. I was assuming that if I included mysql in the
>> > build, that it would be started when the system powered up. If mysql
>> > is not normally started automatically that I can do what is necessary
>> > to start it, I just thought that I shouldn't need to do anything.
>>
>> Yes you are right. We try to do runtime testing as much as possible and you will see
>> more and more focus on runtime testing in coming days and months. So far we
>> have had lot of build related features and stability problems to work on so chances
>> of runtime bugs are still a bit higher. You can help in fixing this issue if you can root
>> cause it. eg. check in system logs using journalctl for possible causes of this service
>> not starting up. Often times you will get a decent hint and we can help as well on
>> that information
>
> I've run journalctl on both install_db.service & mysqld.service. mysqld comes back with no entries. install_db comes back with a line each for Starting and Started Install MySQL Community Server Database.
>
> systemctl status returns exited success for install_db, for mysqld it reports Active: inactive (dead).
>
> systemctl list-unit-files shows install_db as enabled and mysqld as disabled.
>
> I was able to start mysqld with systemctl start and it showed running with systemctl status & ps. But it did not restart after a reboot.

can you try

systemctl enable mysqld

this should enable it to start on boot.

>
> If there is anything else that I can do to help understand what is going on please let me know.
>
> Greg

