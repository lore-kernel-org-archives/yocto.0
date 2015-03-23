Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 411E2E00837; Mon, 23 Mar 2015 13:57:16 -0700 (PDT)
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
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16529E006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 13:57:12 -0700 (PDT)
Received: by pdnc3 with SMTP id c3so198948873pdn.0
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 13:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=n4qfakknCVgKQl2yflVfDSUl1J3/FQ6HxV5oS0VQjpo=;
	b=kotUcwuXlMxoG8ZIlUO8ms5LNLGi4U/ID5xv1yZFp5rP8+vttgbCQsSPW5QW0dYeW/
	3jsNCkmPNzyz3CWeUFpRz/2RP9/bzXoH0L9iRxh+Z+i05c1X1neGf6mJauV77wYGIwbj
	EhEGxmBPYdESRAVkl07SooT0dr5XxdEWx1UrUzZ52o505VezQIJOfFg3t/GCZ09bCAD+
	vuFLsvdBYZ6nGMmESTkodvuoHIU1cZ38zLwpakHvleGOeaa0CXEXrRFsIszQGwf2kTRK
	324gpKV1K6EzdDibZlIz4xXaG0oXhrxvTgabILRiyqGDQugYvWgV+ieud6paWf3WKOLk
	cl6w==
MIME-Version: 1.0
X-Received: by 10.68.69.69 with SMTP id c5mr1730666pbu.150.1427144232057; Mon,
	23 Mar 2015 13:57:12 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Mon, 23 Mar 2015 13:57:11 -0700 (PDT)
In-Reply-To: <55103860.7010503@mlbassoc.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
	<55103860.7010503@mlbassoc.com>
Date: Mon, 23 Mar 2015 21:57:11 +0100
Message-ID: <CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Mon, 23 Mar 2015 20:57:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-03-22 14:21, Andreas M=C3=BCller wrote:
>>
>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>> ---
>>   ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>> ++++++++++++++++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>   2 files changed, 43 insertions(+), 3 deletions(-)
>>   create mode 100644
>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-c=
ompiling-SND_BCM2835-int.patch
>
>
> I tried this patch (which downloaded very strangely using Thunderbird) an=
d
> the
> kernel rebuilt fine.  I now have the audio detected, but still no sound :=
-(
> Again I've tried the internal (phono) speakers as well as HDMI audio.
>
> Just to prove a point on the [brand new] hardware, I installed OpenELEC
> (XBMC)
> and it works fine using the HDMI audio.  Sadly when I tried Raspbian and
> Ubuntu
> there was no sound either...
>
> Were you (Andreas) able to get any sound with this patch?
>
Yes but I have used 3.5mm sound output - Should have mentioned that in
commit. I guess there is to enable something else in kernel config for
HDMI. Will look into that

Andreas

