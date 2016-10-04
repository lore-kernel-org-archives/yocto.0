Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B8DFE00A85; Tue,  4 Oct 2016 07:05:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 201B5E00A7D
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 07:05:20 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id n66so12199716qkf.0
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 07:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ykYrKcfKnbJIB1mqTFMxXgwpafX8L/Mj+0jw5biZ3go=;
	b=FSe4bWkaLhd99hHViiq7AwdXGu2oSpX+lBHy8AVXNKYXSJzpJyJZgLB0eyC9b40hQf
	M4AJfwJcVwt/CkBMCTXr9fcX5/Vqag4wj068wEXm0UJmPQEHAB2YeWce1bb8JT4dO8Mu
	Hs0tHXolt19WRkG21Puh0imSAHtKbVAh/xV5DeafHxw2cGynGeXm40LFTBUmMjMzjdMi
	JyyOQvugFNAQgBmDKa/lSwrVHVJw2t1aLh+1tGxUlPbIdezkv24aW8ijOI0iwpELN4S6
	xejVxIV5YCizgAbpfbsLUmHM0Pgot4bI6vJxXrnoHnnOrpB08tPktrXgqk7GwKUn2ony
	SeLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ykYrKcfKnbJIB1mqTFMxXgwpafX8L/Mj+0jw5biZ3go=;
	b=AzVqX0GNCMUtoH7l0WfWCjU1xOT1At278C99ZSIs9TzvLwlYrN9Z4aJZQLXOAbj9Ud
	0uCh3MNrIhCib5Kzml4PGShGs379mZTWXM+hDYS6g7pN+glH1WmLuZkER7WoZHyNSemn
	bwO+w5hz+BA7q3jXjFOJW5vRZk6s9ly6eWr9Xrwb3RFpDSQUSFn8CYHzANo7E4lJYV2n
	JKYNBz3mJJa8OozWQRIBNt1rgrXtqAnAOK3Ef5cyeZ4fsbl+QuX9FAsq7bI4v+Ad/pYQ
	ewDO6E50dtEID416Q+Fb2djQblUzxhTRmWFHDQyVoXCuU9B/2G0c5dJHOUZheYoStayU
	neSg==
X-Gm-Message-State: AA6/9RmFK83GxGgWDH8OD+3BmeLRK8El1yUuyG6voi11G7fAgvMOSI45kVkBtLbidpA6rq7DtHsmxtgWZ6T+Gg==
X-Received: by 10.55.20.78 with SMTP id e75mr3630856qkh.267.1475589920122;
	Tue, 04 Oct 2016 07:05:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.33 with HTTP; Tue, 4 Oct 2016 07:05:19 -0700 (PDT)
In-Reply-To: <20160916172859.GA27043@resin>
References: <20160913020611.9265-1-net147@gmail.com>
	<20160916172859.GA27043@resin>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 4 Oct 2016 10:05:19 -0400
Message-ID: <CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Tue, 04 Oct 2016 14:05:24 -0000
Content-Type: text/plain; charset=UTF-8

Unfortunately it doesn't fix the taskhash problem. It still happens on
every build I perform:

core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch
536a3bcf4ac29225841c369636b533ff versus
8fadff5d0ef51aa648ed359d5dd7f944

In fact, every time I run a build I get the exact same two hashes.

On Fri, Sep 16, 2016 at 1:28 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Sep 13, 2016 at 12:06:11PM +1000, Jonathan Liu wrote:
>> The IMAGE_NAME variable already contains the date and time so it is
>> redundant to also include the date again with IMAGEDATESTAMP
>> when writing to image-version-info in the boot partition.
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>  classes/sdcard_image-rpi.bbclass | 8 ++------
>>  1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
>> index 57cefea..388398b 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>>  FATPAYLOAD ?= ""
>>
>> -IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
>> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
>> -
>>  IMAGE_CMD_rpi-sdimg () {
>>
>>       # Align partitions
>> @@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
>>       fi
>>
>>       # Add stamp file
>> -     echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
>> -     mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
>> +     echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>> +     mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>>
>
> I like this. Merged to master.
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

