Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00155E00777; Mon,  9 Mar 2015 14:07:54 -0700 (PDT)
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
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82AF7E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 14:07:52 -0700 (PDT)
Received: by padfa1 with SMTP id fa1so69371028pad.3
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 14:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=/Xz6dUq5JFSY9gSzU6PVpc8i9Ng/ipcPGNDaVGEd/dk=;
	b=NseubGPffZgxia0gCVVNaaMw4Fm/rM/P31Z59hfh1nM6uUpQIg9w2bI3IIgJHWfneq
	UTesnm55qw8NhSdZ95s9WoZq9dJeuaMNqjs+BcBrt31PnJIVCu0YeR3aspGt34pdS1wn
	K8jeUI8uWbvti2/gWQ2wgPmCkecvplZmx53Bhn8VjYoeMVGS24urSVHrV5qydKPQCtMv
	5+Wpq6T7UbEuiX5Q0K5yrj64ert9+8Ns9LeRXVURmSyo+eIuW9gfCToKlP+JkeIxKcS7
	KPmD6iwqFIr96YdrehNnnV9Z3aim10KUOjX97kzWnNsJ2gdMnm+fihijIdSTcGspM6AL
	IVdQ==
MIME-Version: 1.0
X-Received: by 10.70.140.104 with SMTP id rf8mr57820915pdb.89.1425935272700;
	Mon, 09 Mar 2015 14:07:52 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Mon, 9 Mar 2015 14:07:52 -0700 (PDT)
In-Reply-To: <54FE098E.5020701@mlbassoc.com>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
	<54FE098E.5020701@mlbassoc.com>
Date: Mon, 9 Mar 2015 22:07:52 +0100
Message-ID: <CALbNGRQ32k1jxRuNNOYUP+Aj-syQHyYoO81hMaL7dHzE1MgcfQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 09 Mar 2015 21:07:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 9, 2015 at 9:58 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-03-09 14:50, Andreas M=C3=BCller wrote:
>>
>> On Sun, Mar 1, 2015 at 1:14 AM, Andrei Gherzan <andrei@gherzan.ro> wrote=
:
>>>
>>> Hello,
>>>
>>> On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mab=C3=A4cker wrote:
>>>>
>>>> The following changes since commit
>>>> d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc:
>>>>
>>>>    README: Github repo changed (2015-02-14 02:00:57 +0100)
>>>>
>>>> are available in the git repository at:
>>>>
>>>>    git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
>>>>
>>>> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_=
layer_prio
>>>>
>>>> Petter Mab=C3=A4cker (1):
>>>>    layer.conf: set high layer priority
>>>>
>>>>   conf/layer.conf | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>>
>>> Patch merged to master. Thanks Petter.
>>>
>>> --
>>> Andrei Gherzan
>>> --
>>
>>
>> This one breaks xserver-xf86-config for me
>>
>> | Function failed: Fetcher failure for URL:
>> 'file://xorg.conf.d/10-evdev.conf'. Unable to fetch URL from any
>> source.
>
>
> Are you trying to build for the RaspberryPi2?
>
> I [temporarily] fixed this by copying the missing files.  In
> the meta-raspberrypi layer, do
>   % rsync -a
> recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi{/,2}
ctoproject.org/listinfo/yocto


I checked both (I have simply copied xserver-xf86-config files for
rpi2). Increasing Layer priority above 7 fails for me - have no idea
why. What should this patch solve/enhance?

Andreas

