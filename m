Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35A1EE00BB7; Thu, 20 Sep 2018 02:28:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B301E00BAA
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 02:28:38 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id c190-v6so7749325oig.6
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 02:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=r81f3gqhV+Ggy/kBi/Tj9VTDQVCOvxiZ/bPpWLE6wzA=;
	b=kikIQ41ZzI3lUadqP4BIGl3WeLn+GclKB26JdZH8FJgHk5HFCRX5672pxFpa8YN7yd
	v3W7DABp8Z3uwh9sTeRqN+dZrWYYbTZiQL7BLIWMFeet92ImyaKFRy/amFjtKaqmXVKZ
	frA0bm/1L70sZ6IRP9YJK0xAnU1W6Z2qMtJ6Ccz2TxIDX6ptebXZ4ZOOaRz5mA0xgU1C
	1rI1gT2Yx1DZd4NkmSVC6HG9sSw7qi2/FO3gq9pnpB8cBNgNHjLlxDVxQeS7heGMTZTt
	Csa5qUO/ToWeEmj5p2BCQvuBeTk1+VoqsL1+W8MGCbTQh51yPxlN7QUA+DhzN5BBLLR2
	ovbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=r81f3gqhV+Ggy/kBi/Tj9VTDQVCOvxiZ/bPpWLE6wzA=;
	b=QJttJK56GOhlWeymot7A4OxMoqeSnjLA1wEUIL6Os/sjl5aVXyLM/6AEBP1IJnkPZP
	1frkUkMARqgPDOFJopcvSOScpirUUeMzTeP3uqKldlv8qFnjScOP6czkVmb+kvsir2+v
	6M+yXqfYSnqq6Tgibx2MpQX29P9Ja5kjcvVTP9clGVsrSkzEQFALg3lj1TW3Q5gyWui9
	FKP5JQJI7VmVuQiT4TsiSMoUUrCV++e0fa4ObxgzxaH+H0J5N55r23GRiqMYl7E7E1HB
	/9VIIpSnBYi7ikLn5aenxPRnKJSt76uzTuu/ju51W4CS9i6WGDyRP3e5hZwinsj4idex
	ze5g==
X-Gm-Message-State: APzg51A9Up+oiHPP6LldVJUdaww+84r++DZR5c7R2ZpDhyXQ6FolYQ6m
	2VlM3SdnvR0/0HnRoucMUJGb2MBBEDdjqquhbS+F41Oa
X-Google-Smtp-Source: ANB0VdakymIlCJKmTRElqEWnNA9co2/XCQaS0UqTggR70rt6Kg8UYd2j32AyLysHhYQBmWc8yUYecpyqNUa+5nOW+iY=
X-Received: by 2002:aca:d7c2:: with SMTP id
	o185-v6mr1039036oig.55.1537435718365; 
	Thu, 20 Sep 2018 02:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
	<HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Sep 2018 10:28:25 +0100
Message-ID: <CAJTo0LZiVgrVaoaUgEkki8NFKVNa1hN+b0csKkLnQusENEDFrw@mail.gmail.com>
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Adding nInvaders game package recipe
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
X-List-Received-Date: Thu, 20 Sep 2018 09:28:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
> I had changed the source of my package, and create a new recipe for my package so it fetches from SourceForge, the new recipe does not inherit Autotools and modify the do_compile, do_install as following:
> do_compile () {
>       oe_runmake
> }
>
> do_install () {
>       :
> }
>
> but i had modified the do_install task to add it to my image and now it is like this
> do_install () {
>
>       install -d ${D}${bindir}
>       install -m 0755 nInvaders ${D}${bindir}
> }
>
> then i run "bitbake ninvaders" to check that all tasks will be passed but i got that error for do_package task
>
> arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bin/nInvaders: File format not recognized

Run 'file' on that binary.  It's possible that your hand-coded
makefile isn't respecting $CC and it built using the host native
compiler.

Ross

