Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BDBBE00837; Mon, 23 Mar 2015 15:22:43 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D7AE006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 15:22:39 -0700 (PDT)
Received: by padcy3 with SMTP id cy3so204765696pad.3
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 15:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=3gyLTOBq/iqec54VgerJlFnpuj8WI9UgTGdT+g5/N2A=;
	b=dv48OxB6JsN3PjeWbKgXAux+eMdnC2LvwrXqLLJ87FVA+m8CcSqd1/WdFvrszQWNyr
	pC9Xewu/RsJ6FwroqEEK7lpJFCdp4fv/FpRKyZDuQryyOH+BNehZngr1wPx4T6F0vMqZ
	DGYNqV5f4U3Iak0OKMcmHnvAUUCffVvocQHS5tGO9OsXsNhWkMsRhH0E7PVOMaX/e+EZ
	S7g1qXtV25A3KYRX0h/wgwTNxnfRuNhwnedsuKPu3KlS6TPI2Nvtlk23VNDvPyn/D9X3
	TuN/erSL0MBZx5e02OtmLESckKJiwjX4jzMr4PEKGXdJPEyBYm+xfShr0AXleVoC3QME
	IH0A==
MIME-Version: 1.0
X-Received: by 10.70.64.193 with SMTP id q1mr2341103pds.94.1427149358925; Mon,
	23 Mar 2015 15:22:38 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Mon, 23 Mar 2015 15:22:38 -0700 (PDT)
In-Reply-To: <55108912.5070304@mlbassoc.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
	<55103860.7010503@mlbassoc.com>
	<CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>
	<55108912.5070304@mlbassoc.com>
Date: Mon, 23 Mar 2015 23:22:38 +0100
Message-ID: <CALbNGRRfxu6XWGChZg5XrEUV_mCssteY8T=2bLS4_L3fq42CSw@mail.gmail.com>
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
X-List-Received-Date: Mon, 23 Mar 2015 22:22:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 23, 2015 at 10:43 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-03-23 14:57, Andreas M=C3=BCller wrote:
>>
>> On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> On 2015-03-22 14:21, Andreas M=C3=BCller wrote:
>>>>
>>>>
>>>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>>>> ---
>>>>    ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>>> ++++++++++++++++++++++
>>>>    recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>>    2 files changed, 43 insertions(+), 3 deletions(-)
>>>>    create mode 100644
>>>>
>>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by=
-compiling-SND_BCM2835-int.patch
>>>
>>>
>>>
>>> I tried this patch (which downloaded very strangely using Thunderbird)
>>> and
>>> the
>>> kernel rebuilt fine.  I now have the audio detected, but still no sound
>>> :-(
>>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>>
>>> Just to prove a point on the [brand new] hardware, I installed OpenELEC
>>> (XBMC)
>>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian an=
d
>>> Ubuntu
>>> there was no sound either...
>>>
>>> Were you (Andreas) able to get any sound with this patch?
>>>
>> Yes but I have used 3.5mm sound output - Should have mentioned that in
>> commit. I guess there is to enable something else in kernel config for
>> HDMI. Will look into that
>
>
> I've tried the 3.5mm jack as well but nothing seems to come out.
> I even tried booting with the HDMI missing (powered off) in case
> that was causing some confusion.
>
> Did you make any changes to config.txt to get this going?
No
>
Have my standard xfce-image with xfce4-mixer and as mentioned out of
the box: I can hear sound / change volume...

What does happen if you start alsamixer - if it is installed on your image?

Andreas

