Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B4DAE00837; Mon, 30 Mar 2015 16:17:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7B0E00779
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 16:17:47 -0700 (PDT)
Received: by obbec2 with SMTP id ec2so821511obb.3
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 16:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2xOS64hi+wtJuscqpFLNWhsQe1ElNAWs9PzBjQGFGBQ=;
	b=DKdFyMFvzWaKqMX8/0iuqkm+3FpcqJKRSZdVT+BwVTgsA1MskUl7MO7GXVdMtrDS9O
	L9QyyaU1l6+d7XenfuunXfs6BHNC8qG2iGew8vr+rHHTdSWOw2yx0H9/JX00HBK0efku
	PKUmG7YSRNc/TbTcfG22j+Lt7AY9xZZx4no3c0VJDsdrEym2MqNUr5y2TCBKZ1Oc299O
	wkR73hVLUo4siaED4I69T87RiI5ZTOSOs8RkK3Iu+aD8kcmFJERjp4i2HlPd131U/GXT
	mB0HK1e8kAl39o8WWVa30Mzdjd2S6jMCha/BwmBztlZbtvKPVb2FmC5YmgzcCKKOh4Ba
	6X3w==
MIME-Version: 1.0
X-Received: by 10.60.133.176 with SMTP id pd16mr29580529oeb.78.1427757466429; 
	Mon, 30 Mar 2015 16:17:46 -0700 (PDT)
Received: by 10.202.49.216 with HTTP; Mon, 30 Mar 2015 16:17:46 -0700 (PDT)
In-Reply-To: <5519D366.4070506@gmail.com>
References: <1427748653-20274-1-git-send-email-challinan@gmail.com>
	<5519D366.4070506@gmail.com>
Date: Mon, 30 Mar 2015 19:17:46 -0400
Message-ID: <CAME0jBSLHmMdKa8UH-YDmUfA-JoLxBxQCA1PaajvJu0bqBbXLw@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Gracefully abort if rootfs.img gets to big
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
X-List-Received-Date: Mon, 30 Mar 2015 23:17:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Armin,

Great catching up with you last week, and thanks for looking at my
patch.  I supposed it's a double edged sword.  If we make it a
variable, it can be set wrong and the build hang again.  OTOH, 128MB
is probably way more space than we really need to reserve, and I
supposed if someone were just banging up against the limit, they might
want to tweak it.  I'll defer to the collective judgement of the
group, and resubmit if that's the consensus.

Oh, and silly me...I figured the mail list daemon would put the
[Yocto] tag on the patch. Since it seems to tag our posts, that is a
mystery to me.  Maybe Michael can enlighten me off list. :-P

-Chris

On Mon, Mar 30, 2015 at 6:51 PM, akuster808 <akuster808@gmail.com> wrote:
> Chris,
>
> Should the hardcoded value '4160800000' be a variable so it can be
> overridden?
>
> - armin
>
>
> On 03/30/2015 01:50 PM, Chris Hallinan wrote:
>>
>> See https://bugzilla.yoctoproject.org/show_bug.cgi?id=7541
>>
>> Current implementation of live image type cannot support image size
>> greater than 4GB. If the image gets too large, the build simply
>> hangs silently, without any clues or debug output to indicate why.
>> This patch prevents the build hanging on rootfs.img getting too big.
>>
>> ---
>>   meta/classes/bootimg.bbclass | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
>> index b1c03ba..e143e24 100644
>> --- a/meta/classes/bootimg.bbclass
>> +++ b/meta/classes/bootimg.bbclass
>> @@ -84,6 +84,13 @@ populate() {
>>         fi
>>
>>         if [ -n "${ROOTFS}" ] && [ -s "${ROOTFS}" ]; then
>> +               ROOTFS_FILE_SIZE=`stat -L -c "%s" ${ROOTFS}`
>> +               bbnote "do_bootimg(): rootfs.img size =
>> ${ROOTFS_FILE_SIZE}"
>> +               # Actual limit is difficult to determine
>> +               # This leaves ~128MiB headroom for initrd and boot files
>> +               if [ ${ROOTFS_FILE_SIZE} -gt 4160800000 ]; then
>> +                       bbfatal "Root fs (rootfs.img) is too big for live
>> image"
>> +               fi
>>                 install -m 0644 ${ROOTFS} ${DEST}/rootfs.img
>>         fi
>>
>>
>



-- 
Life is like Linux - it never stands still.

