Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 379A3E009B8; Fri,  5 Jun 2015 02:19:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521E7E00947
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 02:19:31 -0700 (PDT)
Received: by wibut5 with SMTP id ut5so14636310wib.1
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 02:19:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=s5PENB+pK87PErWATKJeb6iIj4f81/tOur+Ug0k0dsI=;
	b=ad6lLwiVv/oSDfVxJeH02zFpE4WwoK6jy1Kwqj/hDbaex/uMAFp7H4RhFED5rpcHKV
	w4vUUzwFWFpQ83Myy31s/0ADGv2RIWDM/ek3Z5TMbUd00NiqTM4jGnI+otkFuM9iSK67
	OBFhJXE6nny5XMvszFdfp+nutlY0RhINt7Wwq5NP0sDnK55LMydXUQkee8ze3IfgnZrl
	9YbxPNSDHrCHWokT3xgPf7i6upQMhqrDEc8qjghuzvPdbtcwbBO9AKKyw6Y9Th7rgJ1F
	No4L1d0XxzP+TZN7zG6U24Nfn+rw4nRiwNTW7kr3J8HNVHQp2LF0RFOHJlKgnLbAVHF4
	foxw==
X-Gm-Message-State: ALoCoQnpxs5/yeDuGynDeKoxM+jUnlYrIObXb2msusf7lxEWlFuSAOpyqefhOBWD3XaRqbRhxarV
X-Received: by 10.180.100.194 with SMTP id fa2mr60131834wib.8.1433495970366;
	Fri, 05 Jun 2015 02:19:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.61.87 with HTTP; Fri, 5 Jun 2015 02:19:09 -0700 (PDT)
X-Originating-IP: [87.63.77.14]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 5 Jun 2015 11:19:09 +0200
Message-ID: <CAK18fxGPHFJhGHE-9srhKOb6QGxE0REcayF4V9EH=JMNBs-dzQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	thomas.perrot@tupi.fr
Subject: Re: [oe] [meta-raspberrypi][PATCH] If SERIAL_CONSOLE is already define by another layer, this value may not be good.
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
X-List-Received-Date: Fri, 05 Jun 2015 09:19:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi guys,

eMails which end up in different mailing lists get confusing. Anyway,
about this issue:

On Fri, May 22, 2015 at 3:01 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-05-22 06:49, Thomas PERROT wrote:
>>
>> Hi Gary,
>>
>> I know it is incorrect to define this variable in a no machine layer
>> but that can be possible.
>>
>> For example, by using the meta-systemd layer, the recipe
>> systemd-serialgetty define SERIAL_CONSOLE, so when the raspberrypi
>> machine layer is applied, the SERIAL_CONSOLE isn't changed and the
>> value is invalid.
>>
>> I know that it's incorrect for the meta-systemd layer to define this
>> variable, so I have submit a another patch to fix it.
>>
>> But I think replace "?=" by "=" in raspberrypi machine layer is more
>> robust.
>>
>> I also send this patch on the rpi mailing list.
>
>
> IMO, the best solution would be to replace it totally since SERIAL_CONSOLE
> is deprecated by SERIAL_CONSOLES.  It should probably be:
>   SERIAL_CONSOLES ?= "115200;ttyAMA0"

I definitely see the point of this patch even though, if someone
overwrites this VARIABLE should be because that someone is you and
wanted that for whatever reason (via local.conf for example). All the
layers out there *should* not overwrite this variable. I didn't find
the specific recipe you are pointing to in meta-systemd but in
oe-core. By defining that variable there, the machine one won't get
overwritten because it has precedence in parsing. So as long as
systemd-seialgetty weakly assigns SERIAL_CONSOLES, it only provides a
default value and won't overwrite machine definition.

So, in my opinion, we should be safe in the current implementation.
Now, as long as this variable is really carved in stone for
RaspberryPi, maybe actually making it hard assigned would be a good
idea and avoid any strange situations. As well, i'm voting for a patch
which includes the upgrade to SERIAL_CONSOLES.

Regards,


-- 
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

