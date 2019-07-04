Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0425E00D35; Thu,  4 Jul 2019 05:43:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52923E00C37
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 05:43:30 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id z4so4372089qtc.3
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 05:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=/UAzX1cqHNg5KGYNQ5ZkDiKSbgbAm3sKLlHVsQ5gN7U=;
	b=CN9/26Wnf7oT0hRF7P5ZjTKEhHDpW8XE9nJFaZ4qDjDA3JS8DGcO0I26Qadhg6PBhH
	ko2RQbozbvMXI7/RtO3yxLOkUupDaacjqKRNvp9aF78psqxnhi77XaR5GcIyLOG/ZvBI
	pX8xKhLWQweuw01np616z+JVV+mz3lBoOKZL8rIZaoQIFDoiVu5L+O4dGMpUyCayg8kW
	IgyrtkQuQFcMcIE6DeuAKeGe4m23dKdjfRi7qjr5IWlqkks65iG0Z1D1J23NYGW2HVer
	GxXnm5S+KkJm4vIliBI1jW28Pcyuh9Sek2xCXK6k4fWchijJqEwaR5zTg67OQqdoHcAG
	zZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=/UAzX1cqHNg5KGYNQ5ZkDiKSbgbAm3sKLlHVsQ5gN7U=;
	b=hF0vl4FWrlEOXLp+OHOyMzw6RAha54WUxZOJj+ux8chKG2g6Go2xmEwKXFBAdKb3xh
	F+x2MtHLfUF9EmnstkS7O8478y5qiJTyO6rWqw2wd6BVpMjCnzDLY6CQsmuRzDKUtC90
	ofPatqVw8gDglIqSQxA09cQF3uqp69GEdksdVtAH3zqQBt1WfJyey26EGIsPDhAyjt9H
	mAYrxRulR0MAyKS1pCLp3f7zZFgorR70JYqHV5at2jTp8Y3ropZ2r5oseneueCIJHdoz
	kAooujygj4aqbphRp075s4iTZBVgG6vpK+I+hx6FZKPTDZUA8GoBE8GLfzKQgCld4ZBC
	MGVg==
X-Gm-Message-State: APjAAAXXozlhXPhxNRDBlS8DjMLkjNqXLavfzW1f5PNX5BP6ShWJv67a
	gWy2WMIf+o7sib1BmLUrtHADhEGOCRwPS367gASHcqg3
X-Google-Smtp-Source: APXvYqzbcTktltFrM1iO74plqY4D8EpBzx0fGneke+fbZaeVoiumc4oPn6V9T7QzZ5AD/p63cPq28VSND6D8OuQ1EdI=
X-Received: by 2002:ac8:877:: with SMTP id x52mr34892180qth.328.1562244209597; 
	Thu, 04 Jul 2019 05:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
	<CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
	<CAGAf8LymkVusvHg8x7f0eo_s_AnazjyHvFg9eio2Wdhq34_8Cw@mail.gmail.com>
	<CAG+Ob8ZaBEqTO9Kou1260HwjXwuj_7rPCQeCDedW10e7J++KfQ@mail.gmail.com>
In-Reply-To: <CAG+Ob8ZaBEqTO9Kou1260HwjXwuj_7rPCQeCDedW10e7J++KfQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 14:43:18 +0200
Message-ID: <CAGAf8LwqFPbqs-yq=df0U-34QDW_Z_Pd1Gtu0i0E4FwVNPCBow@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 12:43:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for letting me and us know. The good stuff is the following:
if you attach yours fixed local.conf as the reference to all of us:
[1] As referent model;
[2] As something very valuable we also learned from you (not a joke,
believe me)!

Thank you,
Zoran
_______

On Thu, Jul 4, 2019 at 2:38 PM Onur Eser <onureser12@gmail.com> wrote:
>
> Thanks everyone, the problem was a line missing in my local.conf file. No=
w understand what is wrong. My image is booting! Thanks again, have a good =
dai!
>
> Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 4 Tem 2019 Per, 15:2=
2 tarihinde =C5=9Funu yazd=C4=B1:
>>
>> > Weston is arguably superior to X11 in most respects, and for new
>> > platforms which are not tied to a classic X server I entirely
>> > recommend Weston over X.
>>
>> Never opposed that. The idea was to (as first step) do the easier and
>> much better documented part (X11 build), and then do the next harder
>> and more challenging step, Weston protocol.
>>
>> But this is only me and my thinking. ;-)
>>
>> Zoran
>> _______
>>
>> On Thu, Jul 4, 2019 at 12:16 PM Burton, Ross <ross.burton@intel.com> wro=
te:
>> >
>> > On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
>> > <zoran.stojsavljevic@gmail.com> wrote:
>> > > Why Weston protocol? Why not classical X11 Client Server in user
>> > > space? Which DeskTop are U using in Ur YOCTO build?
>> >
>> > Weston is arguably superior to X11 in most respects, and for new
>> > platforms which are not tied to a classic X server I entirely
>> > recommend Weston over X.
>> >
>> > Ross

