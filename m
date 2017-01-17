Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFC94E008D3; Mon, 16 Jan 2017 23:51:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86DA5E0083D
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 23:51:12 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id f2so11691156uaf.3
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 23:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yPrlFRQv+XlBC9oV6i+PjF1lnBZ2ANLqr67AT9damAM=;
	b=nu1ubwsuK++paeyBjYp8s0lpHxdvJrZVNaNkWwmvo2ylzNdodA1KNrRGyynPqy7hNU
	eF9DuGAFoPb3edX163KDIFhY5mASunflke74l6AZQPdX/V4tBiv7zChg44+N5WB/YOz9
	jHfSBKk2s0AV++KKaDInEjXxPaHeXo0hI+M9QamxIXIR7E8g8/t3iRTzSYSR9Y7/AOAg
	Naj23vwN5o0fUBpaczBnfiEx6P4I5j8kUxryPtNRit55Q44EbeYhGKZ4yff+FZow9pJ+
	9bkdblr3U/Pi0cW42vD2CMexaYGmDzm66pU3tFgdPxaxwTda7lY4NSgIw5eak59iNkLu
	E+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yPrlFRQv+XlBC9oV6i+PjF1lnBZ2ANLqr67AT9damAM=;
	b=rieamJYZ2+xsnZDfFkAjDnkznYgI/MgQmFWSEoRyPVMMDnl8z9qjdOt6WzKF5Zdets
	8lRWy2rTlDUjWOI4xUKUO/2lMVvzN8bADURlri79n0jxnUd1QDP+Fycii8k8GVHDPv9g
	2QFdfHxp8NFmo+uySSYYZDZgYzOgRug1PEh/bv3prBxxXnSQOInMoYdJLoQ2VSg6y7+S
	wK451XdIZYEBpfMjgesG/5IW4L/6Vcasl22L/Wuc41k6+qexLDI9XwANyS7BPQUQwmW6
	HSFLOTWuWlGs1s8bXYAtubgenkbzQw+Qd9Zoc4fC1x/ife81DcScBxQ3C50O5QwhXspC
	DnLA==
X-Gm-Message-State: AIkVDXJnEQFrpgODefs4b6Y83aejFSjP2cMaBAraQqdQlR5wQARln69C0cWecTGAhx93JltQgmvtpIy0kaCJVA==
X-Received: by 10.159.37.207 with SMTP id 73mr19414708uaf.67.1484639471377;
	Mon, 16 Jan 2017 23:51:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.69.246 with HTTP; Mon, 16 Jan 2017 23:51:10 -0800 (PST)
In-Reply-To: <20170117001215.GA12017@linux-uys3>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
	<20170105215916.072b9215@nuc.betafive.co.uk>
	<20170117001215.GA12017@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 17 Jan 2017 08:51:10 +0100
Message-ID: <CALbNGRS5jaARDTK=+GHZJj9SFgXKCJq6m1w=VyjMfhxCo3VnbA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Tue, 17 Jan 2017 07:51:14 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 17, 2017 at 1:12 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi Paul,
>
> On Thu 2017-01-05 @ 09:59:16 PM, Paul Barker wrote:
>> Also, are you thinking of moving the -rt recipe to the 4.9 series when
>> upstream linux-raspberrypi declares that stable?
>
> I just want to confirm that 4.9 is going to be the next stable series? How do
> we know 4.8 isn't going to be the next stable after 4.4?
> --
Upstream 4.8 is already marked as EOL

Andreas

