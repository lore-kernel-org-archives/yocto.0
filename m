Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7B68E00754; Mon,  9 Mar 2015 13:50:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E963E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 13:50:02 -0700 (PDT)
Received: by pabrd3 with SMTP id rd3so51476563pab.5
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 13:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=9MkGw875vHqTbSnu+QDLXFy48iHTeNiDH/YPM6vwS24=;
	b=vnsasyUvB1meN706Up7Sr9J/HuZf7ha+X3BfXhQKaV6n5oUXINYlnL9Mgd8UHztK5W
	xzhOUDeoCP21tdtLS95gAMSStlnFrJ8ZXFoUv5LwG0+c+6tgsTwVqZG1lOWYvgz90oe4
	w34JyCVj4+1dXsF2/KkcVGsa7vowc0dJJA/OQMUghxrkR4XKvWCxe5XwSjs4KKVOsG+I
	xhXCtJ1Sgz3tB3FlQ4b4rI1gUQK+JznvqS/sCjzIOOaefzFpWwFY9Um3la0C9hgIJloA
	i4qL3imEXx8Brw6s8Cyd8MNmPcVutmWxNltw/lfsPd0lRHDac5SMOfcOcOAUIyHM1VSi
	05aQ==
MIME-Version: 1.0
X-Received: by 10.66.119.238 with SMTP id kx14mr57883466pab.2.1425934202007;
	Mon, 09 Mar 2015 13:50:02 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Mon, 9 Mar 2015 13:50:01 -0700 (PDT)
In-Reply-To: <20150301001450.GC22308@gmail.com>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
Date: Mon, 9 Mar 2015 21:50:01 +0100
Message-ID: <CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Mon, 09 Mar 2015 20:50:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 1, 2015 at 1:14 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello,
>
> On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mab=C3=A4cker wrote:
>> The following changes since commit d8bf60ce6c4a6c6371527c6df2e3243d2771c=
0cc:
>>
>>   README: Github repo changed (2015-02-14 02:00:57 +0100)
>>
>> are available in the git repository at:
>>
>>   git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
>>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_=
layer_prio
>>
>> Petter Mab=C3=A4cker (1):
>>   layer.conf: set high layer priority
>>
>>  conf/layer.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Patch merged to master. Thanks Petter.
>
> --
> Andrei Gherzan
> --

This one breaks xserver-xf86-config for me

| Function failed: Fetcher failure for URL:
'file://xorg.conf.d/10-evdev.conf'. Unable to fetch URL from any
source.

Andreas

