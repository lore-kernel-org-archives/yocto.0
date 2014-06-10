Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9142EE00BAE; Tue, 10 Jun 2014 10:25:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C939E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:25:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id B3C353996E9D
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:25:10 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 1dQrL2bMIHNa for <yocto@yoctoproject.org>;
	Tue, 10 Jun 2014 13:25:02 -0400 (EDT)
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by mail.rogue-research.com (Postfix) with ESMTPSA id CBB9F3996E7A
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:25:02 -0400 (EDT)
Received: by mail-ve0-f177.google.com with SMTP id oz11so3837671veb.22
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:25:02 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.52.185.72 with SMTP id fa8mr28620879vdc.12.1402421102189;
	Tue, 10 Jun 2014 10:25:02 -0700 (PDT)
Received: by 10.58.46.129 with HTTP; Tue, 10 Jun 2014 10:25:02 -0700 (PDT)
In-Reply-To: <539725A6.6020407@linux.intel.com>
References: <CACgAsMc0XGYRvr8+Y-3DFdTOhonvACuV3K60MkqD59vRp+EWkA@mail.gmail.com>
	<539725A6.6020407@linux.intel.com>
Date: Tue, 10 Jun 2014 13:25:02 -0400
Message-ID: <CACgAsMe_vf3LfcVDjy0GOy=nEBAr8LxCTpDaPhxBg9Rhh0jFFA@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to add the same recipe twice?
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
X-List-Received-Date: Tue, 10 Jun 2014 17:25:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 10, 2014 at 11:35 AM, Saul Wold <sgw@linux.intel.com> wrote:
> On 06/09/2014 09:41 AM, Kevyn-Alexandre Par=C3=A9 wrote:
>>
>> Hi,
>>
>> Here what I want to do:
>> - Have 2 different psplash in my image.
>>
>> Here what I have done:
>> - Copy and rename the psplash recipe to psplash-desktop and modify
>> couple of things.
>>
> psplash does some interesting package name manipulation, based on what
> additional splash files are being provided.

Notice that after pressing send... but I didn't get the outsufix
option properly... I will try the explanation that Paul gave me:
http://thread.gmane.org/gmane.comp.handhelds.openembedded

sorry for same post on different mailling list forgot to cc it.

>
> I am not sure if you are trying to change more than the splash image or n=
ot.

Ok so let me try to clarify my explanation:
Let's say I want to have psplash recipe psplash2 receipe on the same
image. Let say that one psplash have progress bar and the other one
doesn't. Both will be install on /usr/bin/psplash* and this is why I'm
having these error / warning.

What will be the recommended way to behave in that case?

My mistake was maybe simply to reuse the entire receipe of psplash and
not simply append and change what I needed from?

>
> This seems to indicate that you might have another recipe called
> psplash-second (maybe a past attempt at this) and it's causing some issue=
s?
>

thx will retry from scratch? but every time I was using bibake
<recipes list> -f -c clean and checking that build folder there
nothing related to psplash...


-KA

