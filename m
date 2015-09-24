Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC654E00D40; Wed, 23 Sep 2015 23:04:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (h4nn35.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9168E009DB
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 23:04:38 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so98068455wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 23:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=Ll12IfnDC/AcmKbfdAQLwD1qAzcLO7lKIvd5FHEt9TM=;
	b=izpRnPJ8l2bqN46+QYgu+5oMNaDeq4thnPG1fzly5TImeW2u0p56T7G6AVrpQHtFwQ
	/SsPnDUHMKFw2AXOh3/Opos1usuHaCY/i52G9i89i9/GCCUTGKDYecwFarsMhjXTMtn6
	IkqM4X5LajQ1Zq+a8A8/b9uS14U9WjFtW8H4m/pocwRd0wob8P0yi+hqoOo5a33cSUA+
	Rd+C8j+7jRZ/JD0S8z9OJZjFOEVkIdlKpbCVNBoyp5wFoNFmpg5sNhhsaUPA+e+hfh0d
	e04WTDEnmDPFSJcQ9GfMKK3eWw016LSf4utf1GQf5WDcMcGMFlDd1ZBvBT3SFdc2+7A5
	HjNw==
MIME-Version: 1.0
X-Received: by 10.180.8.101 with SMTP id q5mr8161219wia.16.1443074677706; Wed,
	23 Sep 2015 23:04:37 -0700 (PDT)
Received: by 10.27.222.203 with HTTP; Wed, 23 Sep 2015 23:04:37 -0700 (PDT)
Date: Thu, 24 Sep 2015 08:04:37 +0200
Message-ID: <CAHvQdo2iC6MdHw8Dfe=SDW8vm_RxQ_nhmmMSX3-jDGkc968_UQ@mail.gmail.com>
From: Johannes Pointner <h4nn35.work@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Thu, 24 Sep 2015 06:04:40 -0000
Content-Type: text/plain; charset=UTF-8

Hello Paul,

I'm using autofs to do the trick. It's working fine for me.

To get the umount working I use a timeout of 2 seconds, which seems to
be ok so far.

Regards,
Hannes


2015-09-23 21:28 GMT+02:00 Daniel. <danielhilst@gmail.com>:
> I agree with you that is intrinsically unworkable, if there is no physical
> media, how can it be umounted!? If anyone make this possible, maybe some
> day, in that day, umounting will be obsolete.
>
> Cheers,
> - dhs
>
> 2015-09-23 15:31 GMT-03:00 Paul D. DeRocco <pderocco@ix.netcom.com>:
>>
>> > From: Daniel. [mailto:danielhilst@gmail.com]
>> >
>> > I think that sync just flushes data to disk and umount clears
>> > the dirty bit. There is no sync.vfat that I know.
>>
>> That would seem to make auto-unmount (triggered by removal) an
>> intrinsically unworkable concept. Or is that only the case for FAT file
>> systems?
>>
>> --
>>
>> Ciao,               Paul D. DeRocco
>> Paul                mailto:pderocco@ix.netcom.com
>>
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

