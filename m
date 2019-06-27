Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40647E00D63; Thu, 27 Jun 2019 01:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B005EE00C74
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 01:24:31 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id h6so2927009ioh.3
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 01:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=c5F4H8SP4B+xLTmn5SyVE7/jWufDr0js3hmcG98gQ8g=;
	b=OVS5q2zQRjvhjg1i+WDh6iJDwxQJuB5qoUv36/51Pgp7QeuF9IxuxOeXXddZKyuoxy
	atPd8Y/F0yfMZFkX9nARB75C1RS8OoG2uTSUSVQUElyTHTHfTVsGNKlrJolr7oAUvDgK
	jh2S7SQZEKSMsOIgBshF4lEpDQkM4y2Sssm8Au+9N4ZcLH+HcDpVnI2vIYvAdP2Y8q0d
	I6WOgNUPia6GYN45WPakNt5UKp3fwuu90K4TqEiIfYpifwwVilHYulyVEV3EnS6ldtaT
	byXLZYWi2/n8N1JqDlHN3z5lOO3zZDvLKyeP4UFv2hLX3uk08EMWlVgSNZn2xedbl81U
	8s9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=c5F4H8SP4B+xLTmn5SyVE7/jWufDr0js3hmcG98gQ8g=;
	b=gy4H8nfFFwJ8fDQ/S1jhND30sKxSt3tuIjZ7snjkXb2iDxFo/jq7wYsCNMQxqg5V8h
	iACL2UlHcyBkl11F9a8FRCF8X3ktgzMxiZXnC0/TQjpCeoNoAbkJYIeaWNIkMLKq4KlW
	FwaWitZ5wU15vKPkvXvF25gD05SPr1kqductIwFKygYvZWiMvs9+Z10FNQhfmw/Q3EmF
	AdX5t1dGWEitHYAoXND4+PkCCtuM51eu2+9urdGkThbhLHNmqbGqZp8Olyd2EsRD6jHB
	Ua/vi7HaIZszUUmsr3iTzsiXxon0NHcOO2QP0JLy7ukE/gnBs4CWE5ttp1CwHr2EK3qV
	UYSQ==
X-Gm-Message-State: APjAAAUkxNs2LekM19i1fwV7bDwIgAnOcFG47SnVDvBGsnUPL3Uy+po6
	qUNVxU2QINtSvoGCS9xiDIYWL19ztbumLKHoToV/dugm
X-Google-Smtp-Source: APXvYqyKp9dtXi2d/uzx41dgOvKJY/+fgkoqNso2h3epsDDLKLVJCdd17DQERgDAM1XSwjSDv9WD6SOkaWpVEb1l9ZE=
X-Received: by 2002:a02:3217:: with SMTP id j23mr3147876jaa.79.1561623871125; 
	Thu, 27 Jun 2019 01:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
	<CAJTo0LY4vYE1SZo3Hp7mUeyiXvhfY67uhx+2+ZgwM9wBjU9ZRw@mail.gmail.com>
	<CAEmXcAwD9J=XzU87Rv9NOa5bXg1oL_F2XHR0n_i4yHxtjLmA8w@mail.gmail.com>
In-Reply-To: <CAEmXcAwD9J=XzU87Rv9NOa5bXg1oL_F2XHR0n_i4yHxtjLmA8w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 27 Jun 2019 09:24:19 +0100
Message-ID: <CAJTo0LY23qW0_N9t9A6AT5Dk28ctWzaXvmvdvMjP+wgwuyBjcA@mail.gmail.com>
To: danwe <daniel.wenninger92@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 08:24:32 -0000
Content-Type: text/plain; charset="UTF-8"

Then ensure that the oe-core or poky or whatever provides your meta/
layer is at the same version as the meta-bbb expects.

Basically this should all be in the meta-bbb instructions, and if it
isn't then ask them.  I've never used meta-bbb.

Ross

On Thu, 27 Jun 2019 at 08:53, danwe <daniel.wenninger92@gmail.com> wrote:
>
> Hi.
> Thank you. Could you tell me how I can ensure that these are on the same branch? There is just one meta-bbb I can download...
>
> Am Do., 27. Juni 2019 um 09:37 Uhr schrieb Burton, Ross <ross.burton@intel.com>:
>>
>> The problem is that oe-core and meta-bbb are different releases so the
>> versions don't match up.  Ensure that oe-core and meta-bbb are on the
>> same branch.
>>
>> Ross
>>
>> On Thu, 27 Jun 2019 at 07:33, danwe <daniel.wenninger92@gmail.com> wrote:
>> >
>> > while using the command:
>> > daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake core-immage-full cmdline I get the following ouput:
>> > ````
>> >
>> > Loading cache: 100% |############################################| Time: 0:00:03
>> >
>> > Loaded 1358 entries from dependency cache.
>> >
>> > Parsing recipes: 100% |##########################################| Time: 0:00:12
>> >
>> > Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65 skipped, 0 masked, 0 errors.
>> >
>> > ERROR: No recipes available for:
>> >
>> >   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>> >
>> >   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>> >
>> >   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
>> >
>> >
>> >
>> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> >
>> > ````
>> >
>> > How can I solve this?
>> >
>> > Thanks.
>> >
>> > Daniel
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

