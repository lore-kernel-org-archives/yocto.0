Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C08E013D6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 02:41:08 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pb11so290347veb.11
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 02:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=3QNxW8wtDHvi+C3/mS00Sx5bKmnyAA21A8pUGcmtsZo=;
	b=n/q1E6yXYH2SzyXKNKaUE4/IHAS2sKSs3QNTn93qkTFVmZL44AMkX6RCwQOzoWjJqp
	ZoQJC6aP3zc07JQ57JQdzo6JGN+joEqKrhYUNRK3DUlQG195D68iPnL7Azs53UiMN4LJ
	w1TsgLocY/5houPR8/CmHS8K3YFbI0yc8zWrtj9k/l6nSkbiXyJ6zYdPetErM+cLKbyK
	zL4y/NQPBHJyQ4KSoBzD2h22a21cEmdUNHMvMk9PRlWQxs3LsPJp4c14Dl+lJ3gnEDEx
	Lt2lnaofW4oT6LQiFAyff0BQS9erL+Wfy5pfMASxY66Q8VNRlYxerb4bMPndAXHYEo/W
	PBkA==
X-Received: by 10.52.76.38 with SMTP id h6mr12774483vdw.10.1377250866937; Fri,
	23 Aug 2013 02:41:06 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 23 Aug 2013 02:40:26 -0700 (PDT)
In-Reply-To: <1377018158-2983-2-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-2-git-send-email-andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 23 Aug 2013 10:40:26 +0100
X-Google-Sender-Auth: yuL0OCFdvLneP_qckRtNwgIllAA
Message-ID: <CANyK_8c5n3wu7Q0JNCjx-nPpQxReZuMP7wZL7fNAJZY52WdmyA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 02/11] linux-raspberrypi: Update to 2013-08-20 rpi-3.6.y's and rpi-3.2.27's snapshot
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
X-List-Received-Date: Fri, 23 Aug 2013 09:41:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>

I also got a successful boot with commit
d996a1b91b2bf3dc06f4f4f822a56f4496457aa1 on the 3.8.y branch, it was
HEAD at the time I checked it out and the Makefile says it's version
3.8.13. Perhaps we could add this as an alternative kernel version,
even if we keep the default as is.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

