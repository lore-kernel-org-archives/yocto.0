Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E295E007A2; Tue,  4 Oct 2016 17:01:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3F2E0074C
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 17:01:16 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id o21so2145947itb.0
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 17:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fWtzxe8Vc3P1LJXNeT3ZuraYf7synql7qH6dXUA0FXc=;
	b=XskGdRzEtVnw1ZDhSBDGit4fwikiMNrkbeQA0P+AuTQu3dRNiZgcnqlWGKTzXfkXOw
	Z56mLNSa1Vp6bYgOfvtNOnz1zT2HLwrFgPnJLjarMZP9arHU57vWIULwkK0alA9n0wu3
	BfJwbvr//S+OIWD0kQ8l8wBIXeQpA3Vxx3lvX6ew6gh8CE7W90cHLYkVoTY7Ly5+I8Aj
	XMoljUGcM5VpQYul9UeDS6/s/FW4WmzeKuvXrWPaxE2nN8CidXVg3OjkBBkZnygE6OOR
	37nwvXSJlWcj+H++nAXzpokcI1f0I9vbmRLASrOwmISGJ9eoVaEp6hpEnwna/iqzwwnw
	CJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fWtzxe8Vc3P1LJXNeT3ZuraYf7synql7qH6dXUA0FXc=;
	b=Y+70SYLcCElIv2KOYkKXHBbHRdOsJb7ByH5wJ4Yc/7BZu6R3CRRWuKnzfyfWYm9tno
	ZmVjiFnRJViYxoqoc0FW93HUwmHi+qpNZ2/UornQBftCxx4lXbYwYtkksj9IFOlwNhkD
	Fxq76/0ws/64Iscfc2pQhaxQdyfl74MfS4mPSH0Z1g8R/rypGYI2CsBM1XrjtNjuVYPr
	gtIUHA2DLcNo9Oj/fhsh7QfrUXY6JvZZxK53apLJFFxUhBe/aomvCa0g0hf5235ppMEB
	HlbuZhHrjW0iE/ystq25tYb/NDeBP0WDWm4Vf5nFqLdCcatZGEHJ4VF++6LJPTGAzZpc
	DbrA==
X-Gm-Message-State: AA6/9Rkb4XPtov7LlKn13lW3rrsrRqJzRU/VzGJQRmSv62ijLsKnT4/Ee/th0xg593dIUiZBYLjHIKRNJcbtyA==
X-Received: by 10.36.135.138 with SMTP id f132mr7202977ite.101.1475625676060; 
	Tue, 04 Oct 2016 17:01:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.60.73 with HTTP; Tue, 4 Oct 2016 17:01:15 -0700 (PDT)
In-Reply-To: <CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
References: <20160913020611.9265-1-net147@gmail.com>
	<20160916172859.GA27043@resin>
	<CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
Date: Wed, 5 Oct 2016 11:01:15 +1100
Message-ID: <CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Wed, 05 Oct 2016 00:01:20 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor,

See if the following helps:
bitbake -c cleanall core-image-minimal && bitbake core-image-minimal

Regards,
Jonathan

On 5 October 2016 at 01:05, Trevor Woerner <twoerner@gmail.com> wrote:
> Unfortunately it doesn't fix the taskhash problem. It still happens on
> every build I perform:
>
> core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch
> 536a3bcf4ac29225841c369636b533ff versus
> 8fadff5d0ef51aa648ed359d5dd7f944
>
> In fact, every time I run a build I get the exact same two hashes.
>
> On Fri, Sep 16, 2016 at 1:28 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Tue, Sep 13, 2016 at 12:06:11PM +1000, Jonathan Liu wrote:
>>> The IMAGE_NAME variable already contains the date and time so it is
>>> redundant to also include the date again with IMAGEDATESTAMP
>>> when writing to image-version-info in the boot partition.
>>>
>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>> ---
>>>  classes/sdcard_image-rpi.bbclass | 8 ++------
>>>  1 file changed, 2 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
>>> index 57cefea..388398b 100644
>>> --- a/classes/sdcard_image-rpi.bbclass
>>> +++ b/classes/sdcard_image-rpi.bbclass
>>> @@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>>>  FATPAYLOAD ?= ""
>>>
>>> -IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
>>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
>>> -
>>>  IMAGE_CMD_rpi-sdimg () {
>>>
>>>       # Align partitions
>>> @@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
>>>       fi
>>>
>>>       # Add stamp file
>>> -     echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
>>> -     mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
>>> +     echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>>> +     mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>>>
>>
>> I like this. Merged to master.
>>
>> --
>> Andrei Gherzan
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

