Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78A8CE00BE0; Mon, 12 Sep 2016 19:17:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC82E00B78
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:17:14 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id y2so21024792oie.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=w6iCUyoe0DC5ttdyk4PNc3Jadgc6+tQdofDX4ORaeFk=;
	b=CKBUZ2xjnvo3j0//MbLwfuwNWUijB9tF7RvCK9K+lQKgiRFHYtMPmCv6WZBiDbGYl8
	rcRq8EvVZyGrHmPF5tk/+gToSMYcHtYm0TBtzhv6OzsletA4E9Nq1J5ptNzVPRPjasWM
	VPMNOc1qButruurHGxgcMjWmGLHJUQSQ/Jml/Ka2rSStgfLxiknwK8vQE4MeC+fLk6+r
	kmdiUB4B0ycJJQTpWWyHfMRjwLIdviRT4Za44ncTtLRjtjZDqvXa+oPrYihTzfjArUoI
	UGlADAGU2gUw0PW5EDB3nMI1EPSXrROXgGVUx22F3wlmjgbXUyFFQfdC+m/xX10Y26b8
	1krQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=w6iCUyoe0DC5ttdyk4PNc3Jadgc6+tQdofDX4ORaeFk=;
	b=ffgr8iQmC0Jtmm+SnNu8a0nb0w1vSzXgkYVk/64PEf3Ih9LHbmyQdussAvq2t89clA
	bzhaFiTHkAsgZ+eXDYv41ZGkcU7ZRTxruXb5b3QN+bZdf0XmYSART2/V0zMuBwFUbnYk
	YVxppOA3+Au2NTJtildhzU6+itu51Voaxnx7vRlHmkCV/RLVZCSMAco6uXmTI8SI6U5M
	wy05gVK8CZowKp1gGnnjMymfJhj6UZyweIjHwkS8MpvD6w4ExXJjCLCZPjaQa5in5d9D
	6/hr4lNKvgPbXmG1A+Jo4OUeruMgJznPUEnTxZAwQHUXv6/RwylttSOsfe2tZ/4YHWkT
	IJwQ==
X-Gm-Message-State: AE9vXwPoHXWWa7my7A78mscXaSGefEPaCr+ow9f9Ru+6IzdySERlZN+6rF69frDmYpFLvqrfoVFxxaC1tn8lNQ==
X-Received: by 10.157.26.85 with SMTP id u21mr7865585otu.86.1473733034321;
	Mon, 12 Sep 2016 19:17:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.60.73 with HTTP; Mon, 12 Sep 2016 19:17:13 -0700 (PDT)
In-Reply-To: <CALbNGRS1JFJ68hvqE58YgiHYkvpECisiNECqMsuPSj2yW43Bow@mail.gmail.com>
References: <20160817045807.17275-1-raj.khem@gmail.com>
	<CALbNGRS1JFJ68hvqE58YgiHYkvpECisiNECqMsuPSj2yW43Bow@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
Date: Tue, 13 Sep 2016 12:17:13 +1000
Message-ID: <CANwerB2GiBz3Zk6fFD=RZv=eVLVT9M0mPOSEJGMB03XusC-ZvQ@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: exclude IMAGEDATESTAMP from signatures of do_image_rpi_sdimg
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
X-List-Received-Date: Tue, 13 Sep 2016 02:17:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andreas/Khem,

On 13 September 2016 at 09:04, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, Aug 17, 2016 at 6:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> Fixes taskhash mismatch e.g.
>>
>> ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 7=
8b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5dba1b48cf5cb5ad365d991de9 for=
 /a/builder/home/kraj/work/oe/openembedded-core/meta/recipes-core/images/co=
re-image-minimal.bb.do_image_rpi_sdimg
>> ERROR: Taskhash mismatch 78b2e0830a66052318e5e7ffffeba193 versus 4b9bbe5=
dba1b48cf5cb5ad365d991de9 for /a/builder/home/kraj/work/oe/openembedded-cor=
e/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  classes/sdcard_image-rpi.bbclass | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi=
.bbclass
>> index a04204a..62df0b3 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -74,6 +74,7 @@ FATPAYLOAD ?=3D ""
>>  IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>>  IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "IMAGEDATESTAMP"
>>  IMAGE_CMD_rpi-sdimg[vardepsexclude] +=3D "DATETIME"
>> +do_image_rpi_sdimg[vardepsexclude] +=3D "DATETIME IMAGEDATESTAMP"
>>
>>  RPI_KERNEL_VERSION :=3D "${@get_kernelversion_file('${STAGING_KERNEL_BU=
ILDDIR}')}"
>>
>> --
>> 2.9.3
>>
> I had this in my layer but it still fails sometimes for taskhash. I
> simply removed stamp file to avoid this error [1]. Will anybody miss
> stamp file?

Yes, vardepsexclude doesn't completely solve the issue. See
http://lists.openembedded.org/pipermail/openembedded-core/2016-September/12=
6382.html.
I an opting to remove the use of IMAGEDATESTAMP as IMAGE_NAME already
includes date and time so the image-version-info actually has the date
twice (one without dots and one with dots between the numbers). I have
posted a patch for this.

>
> [1] https://github.com/schnitzeltony/meta-raspberrypi/commit/202a132d68ea=
70722a93251d39e5cb75c073aabf
>
> Andreas

Regards,
Jonathan

