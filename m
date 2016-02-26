Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27364E00DAF; Fri, 26 Feb 2016 13:03:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7455BE00C23
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 13:03:11 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id q63so57767187pfb.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 13:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=DvIuedeER1PnBcaA1lLm6AEpmCdhCgHdej9jojof1Og=;
	b=rYGDCWq0Vus86CUJvQMyC5BNeU4rB6jHv8SP36EKRz5arNzJCxIqxE/a1EuL+idEsT
	XNF54fzbZbzzjxTiqHar9lKaNzWEjTZt+oVsFfulUT1JjERVlXocqbqkSJGp52zMG+q5
	KBaT0gdYp/S3+zkno+xi8tYwDnin0WWkjopiXWaWsp/qDMngI6YfImuEe4BIXG3OensD
	qL3PBHe/lCoSnPVA/ZC5qWyLtyQUkVzpEOZFhLnLxCXx3Gb1iVtez/8MxCK0+CSJCKbw
	vri3J4FTEsMvC9unf8TzutI+qs1Ijy2pTlplkrQTEr1Z8d+euIXw7yoHrloiMRU/llaA
	xUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=DvIuedeER1PnBcaA1lLm6AEpmCdhCgHdej9jojof1Og=;
	b=UT4BpEtHM7qzQ3TJLKewgtrA//thRoAdbsaKQkl75E9wxMudpFVnngeH27CXMfSYQp
	YX/4CY8v/mnfZ+TXU2dADcvVfG/6hKnvCRDkBPX8LdEyd4i+/Qu7JHUoCqFQJURtZT6S
	tOBqujaj6ueFWQTe+/HnFcWiBS/cs/MV4RBio69LqKX85alCfVYv+zaJUOlCrm9ldp3t
	g2tHrMy0MtSRk2IsXYrjQNKaDhfsqF1ejPPgu1cGxkqZcJoJCC51mDwlppLnbS4JH8HH
	vywX3RLfQnj/64Ay8vdVsZWgWoCVW4o+OpNwTVMRzWWcTo0+njgHxnofUSfFMhLKt6O5
	oFXA==
X-Gm-Message-State: AD7BkJLSuK5KVn23DhNDpWgh6HnPLVHRT+EclzDa6WtUWnm4br72n5XwjPlsRIyjDRrKQ3AZDqih2DfmMFqq7Q==
MIME-Version: 1.0
X-Received: by 10.98.87.5 with SMTP id l5mr2838298pfb.101.1456520590769; Fri,
	26 Feb 2016 13:03:10 -0800 (PST)
Received: by 10.66.155.201 with HTTP; Fri, 26 Feb 2016 13:03:10 -0800 (PST)
In-Reply-To: <20160226195505.GB27062@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
Date: Sat, 27 Feb 2016 08:03:10 +1100
Message-ID: <CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 21:03:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 27 February 2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
>>    --
>>    Andrei Gherzan
>>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mab=C3=A4cker
>>    <[1]petter@technux.se> wrote:
>>
>>    2016-02-26 18:14 skrev Andrei Gherzan:
>>
>> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
>>
>>      The path had libexecdir hardcoded so it was no longer correct when
>>      libexecdir was changed in meta/conf/bitbake.conf from
>>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk recipes.
>>      Fixes "No such file or directory" error when executing
>>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
>>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.in=
c
>>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
>>      a/recipes-kernel/linux/linux-raspberrypi.inc
>>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c
>>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
>>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage=
" ;
>>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader
>>      trailer to kernel image to enable DeviceTree support -
>>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
>>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
>>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
>>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
>>
>> Back alive. testing this.
>>
>> --
>> Andrei Gherzan
>>
>>
>>    Hi,
>>    I think we should use the older patchset from Maciej Borzecki (that
>>    solves this and some other minor stuffs) instead. It also keeps the
>>    rpi-mkimage structure:
>>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/02827=
1.
>>    html
>>    BR Petter
>>
>>    Very good catch Petter. I'll test that PR.
>
> Merged the patch set sent by Maciej. Which covers this patch too.
> Thanks,
>
> --
> Andrei Gherzan

Note that Maciej's patch doesn't really preserve the path on older
branches like you expect.

On master branch:
${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage

On daisy branch:
${libexecdir}/rpi-mkimage expands to /usr/lib/rpi-mkimage/rpi-mkimage

Regards,
Jonathan

