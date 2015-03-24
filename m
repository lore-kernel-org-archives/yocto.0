Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2253DE0086D; Tue, 24 Mar 2015 00:21:37 -0700 (PDT)
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
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36FC8E00837
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 00:21:34 -0700 (PDT)
Received: by pdnc3 with SMTP id c3so213018979pdn.0
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 00:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=iQda8P+5WawpmYpV3bMRyJh9c6DZFm5FLspiY2kp2/Y=;
	b=QWkNahvELBWYrEfofyoXF38flvPlgJ3rMFs5Mq3vl5yjLrwSJCjWllw2HBB2XulSm8
	Wb4KK5q8COVmZx440F4gIhhHWekccClCk106wjHrinlpD/8+3srFgnCL1zxzBBclxpVM
	gFth78Jpyx0PWL3fYlVhu2e+P/fqgW2uGWHJjDSyaYDsqE4PhM4O5LcxiR7ptdtkPAf2
	OUocFRf5wtDCrweVNIEYgtTexmmvFEqHJSSVpGwoOOmtVrs0JjcD2Qem4eYEcgxAOsVg
	AfdKzdOFe4gsbi09+3FDkohvK6aygcnBB/k/i3kkxdIrWkqWzwuff9d5LUJGywS6gHu8
	uILw==
MIME-Version: 1.0
X-Received: by 10.68.69.69 with SMTP id c5mr5237285pbu.150.1427181694245; Tue,
	24 Mar 2015 00:21:34 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Tue, 24 Mar 2015 00:21:34 -0700 (PDT)
In-Reply-To: <55109E3D.7000306@mlbassoc.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
	<55103860.7010503@mlbassoc.com>
	<CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>
	<55108912.5070304@mlbassoc.com>
	<CALbNGRRfxu6XWGChZg5XrEUV_mCssteY8T=2bLS4_L3fq42CSw@mail.gmail.com>
	<55109E3D.7000306@mlbassoc.com>
Date: Tue, 24 Mar 2015 08:21:34 +0100
Message-ID: <CALbNGRQoiemJ7eLkknFF9syc30UGwnVuVfiFcuZQaZkiSE3+BA@mail.gmail.com>
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
X-List-Received-Date: Tue, 24 Mar 2015 07:21:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 24, 2015 at 12:14 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-03-23 16:22, Andreas M=C3=BCller wrote:
>>
>> On Mon, Mar 23, 2015 at 10:43 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> On 2015-03-23 14:57, Andreas M=C3=BCller wrote:
>>>>
>>>>
>>>> On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <gary@mlbassoc.com> wrote=
:
>>>>>
>>>>>
>>>>> On 2015-03-22 14:21, Andreas M=C3=BCller wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>>>>>> ---
>>>>>>     ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>>>>> ++++++++++++++++++++++
>>>>>>     recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>>>>     2 files changed, 43 insertions(+), 3 deletions(-)
>>>>>>     create mode 100644
>>>>>>
>>>>>>
>>>>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-=
by-compiling-SND_BCM2835-int.patch
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> I tried this patch (which downloaded very strangely using Thunderbird=
)
>>>>> and
>>>>> the
>>>>> kernel rebuilt fine.  I now have the audio detected, but still no sou=
nd
>>>>> :-(
>>>>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>>>>
>>>>> Just to prove a point on the [brand new] hardware, I installed OpenEL=
EC
>>>>> (XBMC)
>>>>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian
>>>>> and
>>>>> Ubuntu
>>>>> there was no sound either...
>>>>>
>>>>> Were you (Andreas) able to get any sound with this patch?
>>>>>
>>>> Yes but I have used 3.5mm sound output - Should have mentioned that in
>>>> commit. I guess there is to enable something else in kernel config for
>>>> HDMI. Will look into that
>>>
>>>
>>>
>>> I've tried the 3.5mm jack as well but nothing seems to come out.
>>> I even tried booting with the HDMI missing (powered off) in case
>>> that was causing some confusion.
>>>
>>> Did you make any changes to config.txt to get this going?
>>
>> No
>>>
>>>
>> Have my standard xfce-image with xfce4-mixer and as mentioned out of
>> the box: I can hear sound / change volume...
>
>
> Would it be possible to share your [bootable] image?
>
>>
>> What does happen if you start alsamixer - if it is installed on your
>> image?
>
>
> alsamixer looks correct.
>
> BTW, I've tried this on my RaspberryPi Model B and I don't get any sound
> from it either :-(  Again, booting with test_mode=3D1 shows that the hard=
ware
> is working, just not in Linux. I'm sure I've tried this in the past with
> success so I'm becoming more and more confused...
>
For sharing I need to create a smaller image - the current one
contains all stuff from meta-games, all browsers and more. Hope to get
that done tomorrow evening. What is the preferred way of sharing huge
files?

Andreas

