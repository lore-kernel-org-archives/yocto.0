Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34853E00963; Mon, 13 Apr 2015 00:00:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66C3E0080E
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 00:00:29 -0700 (PDT)
Received: by qkhg7 with SMTP id g7so165248523qkh.2
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 00:00:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ZWeo6E9RA6m0qQ8Sz+GQ8uAJF9H/HPh7vx2G6ZR+sC8=;
	b=WjMI4vF7KlmTImRKM4PZshJGwKTAHl26wZRmRUK3+6GFk7q0sHP69YniKVb+E1e2d9
	K77kMRIdJ/8DuOSBfjnboUlX8Y/R1c81jA1IiVTF7ztJWQ6rLS0A/3ejBA0Ddu4B6+91
	zkPbL6XAFheaDSIoE7z8WJ6qrydOYL1QAfpdmRFvr9je5x51priktkSPxiSBp8n7AtFr
	ZRqYTfO0pjVrfHxWttGQNs/atk4bXwgrIiD4t0Kd+/LfmCY2OsH35mmQx2d/M16mdG3J
	8um9+rHpw/Pl/ZS5r7t8nEHSBcoxkHM9kwqquUXwq0p46YuNgDdXAx5xoiwEUnb/6Cca
	4lsA==
X-Gm-Message-State: ALoCoQkwm/ZRyfQZ2vQeD7aHY8tpIFcLXLZLDPCNownxEBNE28f1mEaGWWSPB/ICZ77JdZN8B20i
MIME-Version: 1.0
X-Received: by 10.55.22.40 with SMTP id g40mr26215121qkh.103.1428908426347;
	Mon, 13 Apr 2015 00:00:26 -0700 (PDT)
Received: by 10.96.184.133 with HTTP; Mon, 13 Apr 2015 00:00:26 -0700 (PDT)
In-Reply-To: <CAAPegz3CO7QUqyK-UqVCyqk8hwgCH23Bu1vGkPs=u94H03XZNA@mail.gmail.com>
References: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
	<1428681803.3152.24.camel@tkkaskin-mobl3.ger.corp.intel.com>
	<CAAPegz3CO7QUqyK-UqVCyqk8hwgCH23Bu1vGkPs=u94H03XZNA@mail.gmail.com>
Date: Mon, 13 Apr 2015 09:00:26 +0200
Message-ID: <CA+AhUGxxhkyJWyN9ECn4R1o-iw02Ancoj8Mp=fsPS=3MxU1uew@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@pelagicore.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
Subject: Re: pulseaudio without x11
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
X-List-Received-Date: Mon, 13 Apr 2015 07:00:33 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 10, 2015 at 9:09 PM, Chris Morgan <chmorgan@gmail.com> wrote:
<-- snip -->
>
> After a few minutes the service did shut down. It may have been due to
> configuring the loop back module though I'm surprised a misconfiguration
> would have resulted in pulse shutting down.

I think the default behavior is to shut down after a certain time if
idle. Try passing --exit-idle-time=-1 to disable it.

Cheers,
Erik

>
> Chris
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

