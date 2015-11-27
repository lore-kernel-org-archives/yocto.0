Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10078E009C5; Fri, 27 Nov 2015 11:55:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBFE2E007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 11:54:59 -0800 (PST)
Received: by ykdv3 with SMTP id v3so127149893ykd.0
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 11:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=t5Zf9hnTZODYxiWb4SInR2Nn2j+SRFatnKSGt2b9IWY=;
	b=gEFZ9/SA7wBgLYfwjdpFB+0dRLKsDvlX0f9TrK28Nyml+S+3yVPGwTWfVG3VEucFPE
	ep1qEHPNCkGF9FVRaJdomFU2UUVH4sbgw6nAl7CcbJbxvyCbncl/WUWkcglOsIj9X0OK
	CwmdS/2dloNEg77SfxJlPEguL1hDOu/bR98JKZlE3vl4peH2WQCX3oq38vj/N2EIldwF
	ej6fklie9Aiywu6Xa3rZcwS57NUUih0nDSE7r213p2gx3OZLGa7GpPsUnDd/F1UJ2ATF
	c7G9evuuMl2vqqFjuVtTA9N8yNVRB+ck0todUqOteBK9OCtHAj0TKvbEHF3p6+QzaSr+
	Eaaw==
MIME-Version: 1.0
X-Received: by 10.13.236.10 with SMTP id v10mr48961876ywe.231.1448654098637;
	Fri, 27 Nov 2015 11:54:58 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Fri, 27 Nov 2015 11:54:58 -0800 (PST)
In-Reply-To: <CAM_pFj8cycNEx3vwds=d2nXo39Kmfqpn-XxwEjKS0v6yUfda_w@mail.gmail.com>
References: <CAM_pFj_cwoDAC30cBcPB1besMJwZuO=mh6E4-n8Q5=5=2j_VWg@mail.gmail.com>
	<56570C02.4050709@windriver.com>
	<CAM_pFj8cycNEx3vwds=d2nXo39Kmfqpn-XxwEjKS0v6yUfda_w@mail.gmail.com>
Date: Fri, 27 Nov 2015 17:54:58 -0200
Message-ID: <CAF3SDA4Wx1mrSqcXBskQZ_PNM-X-EZPNHOUsgnfE-P1XhwShUw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Deepika Teriar <deepteriar@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Copying the kernel in the poky directory
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
X-List-Received-Date: Fri, 27 Nov 2015 19:55:01 -0000
Content-Type: text/plain; charset=UTF-8

A suggestion,

Fork the wanted kernel tree and add a .bbappend at a custom layer.
This way you can follow forked kernel updates and keep poky recipes
clean.

If you insist to keep things local, maybe this helps:
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#local-projects

Regards,
- dhs

2015-11-27 4:55 GMT-02:00 Deepika Teriar <deepteriar@gmail.com>:
> Hi Bruce
>
> It was not successful. Its giving me a fetcher failure.
>
> WARNING: Failed to fetch URL
> ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz,
> attempting MIRRORS if available
> WARNING: Failed to fetch URL
> git:///home/deepika/bbb/poky/kernel-3.14.29;protocol=file;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository
> '/home/deepika/bbb/poky/build/downloads/git2/.home.deepika.bbb.poky.kernel-3.14.29'...
>
> error: object directory
> /home/deepika/bbb/poky/build/downloads/git2/git.yoctoproject.org.linux-yocto-3.14.git/objects
> does not exist; check .git/objects/info/alternates.
> fatal: git upload-pack: cannot find object
> dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8:
> fatal: The remote end hung up unexpectedly
>
> ERROR: Function failed: Fetcher failure for URL:
> 'git:///home/deepika/bbb/poky/kernel-3.14.29;protocol=file;bareclone=1;branch=standard/common-pc/base,meta;name=machine,meta'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/deepika/bbb/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/3.14.29+gitAUTOINC+6eddbf4787_f6aa7aaca8-r0/temp/log.do_fetch.26206
> ERROR: Task 75
> (/home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb,
> do_fetch) failed with exit code '1'
>
> Can anyone help
>
>
> On Thu, Nov 26, 2015 at 7:11 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>>
>> On 15-11-26 02:39 AM, Deepika Teriar wrote:
>>>
>>> Hi
>>>
>>> I am customizing yocto for beaglebone black
>>> I do not want my kernel to get downloaded from the git after I clean the
>>> build directory. So i have kept the linux-kernel directory with the name
>>> kernel-3.14.29 in the poky directory.
>>> And in the linux-yocto_3.14.bb <http://linux-yocto_3.14.bb> file i have
>>> changed SRC_URI *from:*
>>>
>>> SRC_URI =
>>>
>>> "git://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
>>>
>>> <http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta>"
>>>
>>> *to :*
>>>
>>> SRC_URI = "file://${COREBASE}/kernel-3.14.29"
>>>
>>> On compiling core-image-minimal I am getting the following error
>>> *
>>> ERROR: ExpansionError during parsing
>>> /home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb
>>> <http://linux-yocto_3.14.bb>: Failure expanding variable do_patch:
>>> ExpansionError: Failure expanding variable SRCPV, expression was
>>> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
>>> Fetcher failure: SRCREV was used yet no valid SCM was found in SRC_URI
>>>
>>> *
>>> Can any one tell me the error?
>>
>>
>> You still need the git protocol, the fetcher can't determine what to
>> do with the SRCREV.
>>
>> Try:
>>
>> SRC_URI =
>> "git://${COREBASE}/kernel-3.14.29;protocol=file;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"
>>
>> Bruce
>>
>>>
>>> Thanks
>>> Deepika
>>>
>>>
>>>
>>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

