Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E04DBE00E3C; Fri, 21 Jun 2019 06:48:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351A4E00E3A
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 06:48:36 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id m24so1376081ioo.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 06:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M5if6uAFrkD76KD40TUqGpQw6t9X5zK5yD7hifh+mOc=;
	b=l20hGKmXvACD4E+rnVl3essTmf5OeQqk1CXxQVaLZ7BH9bUft8pltK9DK2Nr4GxPAt
	MrWNOKPFcMAPAq+0gG5UGUWjJ8RAOfYKKRng09G06blPe698zSPaR3doPvknebE0ST7F
	hsq8p2QOrUnOkj7yA/JF1zqc+TBWv/KVevp5JLi7Ar2BAu/zKpA49HiM0qP8xHqr05fJ
	5UXm+7xTbM5I1nHNdEQpopgMMWES8UfZr82eSve2v1hJoQQuhjV0+4ZBL4PEaenDhlLH
	KtyVrgd/hvs+VqKjJtafSdQd0TY72N7gevPXCviU9i+OQLlYwrSPx5UyH1acRpluJWK5
	b3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M5if6uAFrkD76KD40TUqGpQw6t9X5zK5yD7hifh+mOc=;
	b=h9DxD7CR+QiMV9C0uR62ywQ/VLU1KHW4GTnLKFfWZP5QFHC3yAtenzGR7/aRlGUhOG
	K8FOR/0YH/ZH1GVooKUvz84i+b5EJRI7rtt5dT6FGw8YXqWQ86azHQaqZ5FYHuQ3WNzY
	9D0pdk30PToGi+JCnUAgDbyoVyQ6GF4/JBRmdl6qzuwApfP3kMXt0BsfIEW8jQrHZ2hC
	J5kDWkmYjPaiKJGt7GJ0Zbz16r6u3ilxrnRifxXPWOq27WUI5nTnN/ngf05o+pywiT5t
	zVkoAZGccAgSicydhHKHPrWQ+hKANo22fAW0BUQTUrBxGWynYhWIzIxnmMN7S2mx5eJ6
	uVJg==
X-Gm-Message-State: APjAAAVKKjTuwrhPS4LJpMdAWLh1+Fm7Ujces18LrNAo2ZxKO2b9opTW
	EUbX7YR4o4+hFL4IBTOLGc3huLqyiEsHW2HlYJePPXQJ
X-Google-Smtp-Source: APXvYqyXmoNRqtAmZXiPBX5w6QWVvYghOGPiwF3Azot0DrG+xfTch2KJJJW7ZniQ5bx3NVvjXz2EC3d0fGPaxr3hF0w=
X-Received: by 2002:a5e:9701:: with SMTP id w1mr4201545ioj.294.1561124915676; 
	Fri, 21 Jun 2019 06:48:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190611070823.367-1-Martin.Jansa@gmail.com>
	<CA+chaQfFa0PyiDx78Qba1PnKYn+fDvKGS7TqGgGuzV-Mx+g9Sw@mail.gmail.com>
	<CAJTo0LbmgN2Zg9JBaoQdvqk0CsGy+tAbTFqJ+SxuAxiap1xYFA@mail.gmail.com>
	<CA+chaQfho=Jhrvt3ZfQW_wagonLb6Jc2dtZJg7+QEoVh4UA+9w@mail.gmail.com>
In-Reply-To: <CA+chaQfho=Jhrvt3ZfQW_wagonLb6Jc2dtZJg7+QEoVh4UA+9w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Jun 2019 14:48:24 +0100
Message-ID: <CAJTo0Lap0YwMvt20QykrkQz77hO2cvtZWBtyaEezmrMD1qqE+g@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][warrior][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Fri, 21 Jun 2019 13:48:37 -0000
Content-Type: text/plain; charset="UTF-8"

Whoops.  Done :)

On Fri, 21 Jun 2019 at 14:18, Martin Jansa <martin.jansa@gmail.com> wrote:
>
> No problem, thanks for quick response.
>
> Looks like this patch wasn't merged in master as well (I thought it was), can you please push it as well.
>
> Thanks
>
> On Fri, Jun 21, 2019 at 2:59 PM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> Done, sorry.
>>
>> Ross
>>
>> On Fri, 21 Jun 2019 at 13:53, Martin Jansa <martin.jansa@gmail.com> wrote:
>> >
>> > ping for warrior
>> >
>> > On Tue, Jun 11, 2019 at 9:08 AM Martin Jansa <martin.jansa@gmail.com> wrote:
>> >>
>> >> * bc can be provided by busybox as well (e.g. if you have your own
>> >>   defconfig and forget to explicitly disable it:
>> >>   ...
>> >>   *
>> >>   * Miscellaneous Utilities
>> >>   *
>> >>   adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n
>> >>   bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n
>> >>   bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y
>> >>     Use bc code base for dc (larger, more features) (FEATURE_DC_BIG) [Y] (NEW) y
>> >>       Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/?] (NEW)     Enable bc/dc long options (FEATURE_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4 kb) (BEEP) [N/y/?] n
>> >>   chat (6.3 kb) (CHAT) [N/y/?] n
>> >>   conspy (10 kb) (CONSPY) [N/y/?] n
>> >>   ...
>> >>   ), causing conflict in u-a:
>> >>
>> >>   update-alternatives: Error: not linking /usr/bin/bc to /bin/busybox.nosuid since /usr/bin/bc exists and is not a link
>> >>
>> >>   and then whole do_rootfs or do_populate_sdk to fail because busybox postinst is failing:
>> >>
>> >>   do_populate_sdk: Postinstall scriptlets of ['busybox'] have failed. If the intention is to defer them to first boot,
>> >>   then please place them into pkg_postinst_ontarget_${PN} (). Deferring to first boot via 'exit 1' is no longer supported.
>> >>
>> >> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> >> ---
>> >>  recipes-extended/bc/bc_1.06.bb | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
>> >> index d8c8a86..3de1b24 100644
>> >> --- a/recipes-extended/bc/bc_1.06.bb
>> >> +++ b/recipes-extended/bc/bc_1.06.bb
>> >> @@ -20,7 +20,7 @@ SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
>> >>
>> >>  inherit autotools texinfo update-alternatives
>> >>
>> >> -ALTERNATIVE_${PN} = "dc"
>> >> +ALTERNATIVE_${PN} = "bc dc"
>> >>  ALTERNATIVE_PRIORITY = "100"
>> >>
>> >>  BBCLASSEXTEND = "native"
>> >> --
>> >> 2.17.1
>> >>
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

