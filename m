Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BE5FE00DF9; Sat, 27 Feb 2016 05:49:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978FFE00D61
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:49:08 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id p65so18017127wmp.1
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=loruohY29jnH0whvzYA0JRUStwiFFd0QeGOPV1t0c/4=;
	b=CHIZ7oTgg8bRIr9aTxNBtnT3Mv0s/U5PqfKAv/Vu3zHf0P4cKoJHZTvOPlspa0jyW5
	6hkstnRdPGYcc4a56DtfrPVSrfD5Hp2fdySVXEZsF/FANvuVxXbJY6ZF6lJplSEryln2
	u0uYvPnfJYH9cSexhc2cvDj0zWW+xHbzU3IySv0tYCJ/mVUAFcdT17pL9PyA/veWpTRL
	WRKSMOLEV5ruGxrbWa3JctJRnX+LANRZGXlI09XV/DRH6NIhixYIv/Nsjs0BE95qKRAC
	WrzNhbXnvLnOHItUb4p1khMKQj/2WhN/VcQ+xWF4vdJiEgxOHd2XJxtfxs2hZ6hpychL
	i3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=loruohY29jnH0whvzYA0JRUStwiFFd0QeGOPV1t0c/4=;
	b=S85SGCEGqR3LEprC4MQAnOPpfL2lfvRpRr64IRl/CoQoDW4AeAZfDJKG4EzkEpRdEP
	QStM2x5Tq/8Trv9zfwQIYE1gRMD9QPhEK426AWgU+yJPvGHCKYaTiJib7GuvIlNlDTfT
	UxD328vhfOXstQv87IaUL8R0PHWYkchLcStKBc8vVgu9sfJ++yWg+sVKbR0Upeo6gqhb
	TvVVrGxkBAYhJRhCG/Zo6xsFYTbU8CVuVHzKANT4ZBvRuaLt5ysyOM8dVFeCDsnSbf2e
	AXIYwbGvqFvLJ2GTo4xvMHuYhwiqjBD32zdsVZEAN1hN+jRNurrnm1WLw2I9YvO5GkuI
	DxVw==
X-Gm-Message-State: AD7BkJK4q2I16eIv2CAUGUPJk03zCtStba0EL6892Hn+XRV71Wwc0LiUsSorifQcoEMBv5qM0xF4mtXNs8zW7A==
MIME-Version: 1.0
X-Received: by 10.28.171.8 with SMTP id u8mr2798518wme.97.1456580947568; Sat,
	27 Feb 2016 05:49:07 -0800 (PST)
Received: by 10.27.9.133 with HTTP; Sat, 27 Feb 2016 05:49:07 -0800 (PST)
In-Reply-To: <20160227125601.GB28071@resin.home>
References: <1456492868-19761-1-git-send-email-net147@gmail.com>
	<20160227125601.GB28071@resin.home>
Date: Sun, 28 Feb 2016 00:49:07 +1100
Message-ID: <CANwerB0GuLWxL5Rsane0Ws7DUK6tOuSm0nohnw9M89oTaHp4zg@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: fix host-user-contaminated QA warnings
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
X-List-Received-Date: Sat, 27 Feb 2016 13:49:16 -0000
Content-Type: text/plain; charset=UTF-8

On 27 February 2016 at 23:56, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sat, Feb 27, 2016 at 12:21:08AM +1100, Jonathan Liu wrote:
>> Explicitly chown the installed files to fix host-user-contaminated QA
>> warnings for libavcodec, libavdevice, libavfilter, libavformat,
>> libavutil and libswresample shared libraries.
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>  recipes-multimedia/omxplayer/omxplayer_git.bb | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
>> index a0690a0..8816273 100644
>> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
>> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
>> @@ -61,6 +61,7 @@ do_install() {
>>      oe_runmake STRIP='echo skipping strip' dist
>>      mkdir -p ${D}${datadir}/fonts/truetype/freefont/
>>      install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
>> +    chown root:root -R ${D}
>>  }
>>
>>  FILES_${PN} = "${bindir}/omxplayer* \
>> --
>> 2.7.1
>>
>
> Actually the problem here is how the package does the dist target.
>
> Makefile:
> ...
> <-->cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
> ...
>
> This means that even if ran in a fackroot environment, this will preserve the
> user id and other file attributes generating the warnings you pointed out.
>
> In order to fix this I would vote for a patch that would change the archive
> flag to a simple -R (-P is default anyway). What do you think?
>
> As well this patch should go upstream too as I don't see the idea behind
> copying those while preserving the file attributes.
>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan

I have submitted a pull request to omxplayer to use -P. No point using
-R as it is just copying libraries rather than directories.

Regards,
Jonathan

