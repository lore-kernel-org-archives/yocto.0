Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA8CAE00B47; Wed, 21 Sep 2016 01:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E068E008D3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 01:32:55 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id v2so2161532ywg.3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 01:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=f8No3j3VMPHIO235Mr8i7xdsCVYzQ8P9JoU1a7k+Q+o=;
	b=yB1TJdIVFc80egGBsmCcqJ4s2ojZ7wmTgy7fiC34cjOT/7rY/unqM1GhQ1dlIFdjVQ
	nwxGiehaqmgkIVZsaTgYh3N8GzQMattn/wOlcmko9RlfJ1CV7JB/s5Xd2duujD8XBvft
	l+QG7yYhw65u6RqhbBqG703vqgFN47HZTtdHztegkY1F0aYCq078o39pdy6h0r+4Airn
	VzaV8OBA56kZtcZrTghmtfk7PEgIlm0vaQRQ7wzzUYdzOvXdR0WoLPAO4nmihZFnzCmH
	cCF+f++Yq9ZpmF2QFroj9ID/7791bD2ANRX/yS71Feu0F55KN2o3OJbdhDYDbsEP163/
	ICSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=f8No3j3VMPHIO235Mr8i7xdsCVYzQ8P9JoU1a7k+Q+o=;
	b=RUfni5MIAvqDDApOCxS+uCatGCtvnyS21Gq5FFXxoGiKYAKtKYMiv+2BV5ROEvGwQO
	68u2YP3Oop56LlHstnDiQNGlNHdM//ar2aEOPU3qsWiXjws09R1lRZgWb6T1/XmPCNhm
	X0hIS6UNRxKwAoPE2QwX16HKv452ZFofkNXeeXqe6gWkEi5SYi7w+lAhITssNSO8uPNk
	Xtn7ZXwNjzh9EW9PZpiBrk+PIYI/rVDFiidhlCQvH2xhL3Vgg/X0OZj5rqNAXjT4931x
	vnUA0tIVe17DmJ0M/b+TgBX3txzlTpF4Hc0bIvlSnQahYQumAw22SrYyeHmhQkcmBB7M
	7iQA==
X-Gm-Message-State: AE9vXwM53FTu7byrE3A/Oy+EEIN3JpXxjMAs1F8W1iSe+yn7vbFhqPzZMjI3Qz2PYEhzj7ljRrGOeGbYtYjB1g==
X-Received: by 10.129.75.7 with SMTP id y7mr16307570ywa.152.1474446774713;
	Wed, 21 Sep 2016 01:32:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Wed, 21 Sep 2016 01:32:54 -0700 (PDT)
In-Reply-To: <31a906ff-24af-7ec6-26a6-a10519317428@mlbassoc.com>
References: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
	<CALbNGRTDF3YdM5P+kt2xDo+9RwiiE4GzfKMRbwC_VKN7tYk=OA@mail.gmail.com>
	<31a906ff-24af-7ec6-26a6-a10519317428@mlbassoc.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 21 Sep 2016 10:32:54 +0200
Message-ID: <CALbNGRQEcHQmwie4UQC+0DQXzHpZ_ecSh8sA_jbvdiprTuqCzA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix sdimg generation
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
X-List-Received-Date: Wed, 21 Sep 2016 08:32:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 9:58 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2016-09-21 09:54, Andreas M=C3=BCller wrote:
>>
>> On Wed, Sep 21, 2016 at 9:26 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> Track changes in OE-core variable names - needed to be able to
>>> build an rpi-sdimg image file.
>>>
>>> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
>>> ---
>>>  classes/sdcard_image-rpi.bbclass | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/classes/sdcard_image-rpi.bbclass
>>> b/classes/sdcard_image-rpi.bbclass
>>> index 388398b..ad245f3 100644
>>> --- a/classes/sdcard_image-rpi.bbclass
>>> +++ b/classes/sdcard_image-rpi.bbclass
>>> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT =3D "4096"
>>>
>>>  # Use an uncompressed ext3 by default as rootfs
>>>  SDIMG_ROOTFS_TYPE ?=3D "ext3"
>>> -SDIMG_ROOTFS =3D
>>> "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>>> +SDIMG_ROOTFS =3D
>>> "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>>>
>>>  IMAGE_DEPENDS_rpi-sdimg =3D " \
>>>                         parted-native \
>>> @@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg =3D " \
>>>                         "
>>>
>>>  # SD card image name
>>> -SDIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>> +SDIMG =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>>
>>>  # Compression method to apply to SDIMG after it has been created.
>>> Supported
>>>  # compression formats are "gzip", "bzip2" or "xz". The original
>>> .rpi-sdimg file
>>> --
>>> 2.7.4
>>>
>> Isn't that the same as [1]?
>>
>> [1]
>> https://lists.yoctoproject.org/pipermail/yocto/2016-September/031961.htm=
l
>
>
> Yes, it looks like it is, but that one is still not in master :-(
> so I thought I'd give it a nudge!
>
Yes - there are many things missing in master e.g VC4...

Andreas

