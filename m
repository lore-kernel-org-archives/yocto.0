Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D4CE013D6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 04:02:53 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so313398vcb.7
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 04:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=0W9taMMzQgvtX5hc5W5Pju1QV7yLPfSqRRF1LoKXr+E=;
	b=wBw3Y31/umoNTzEAzW6G0n165ZGtYUaKKn66kAKc3g97lx9XjHj6eum0KHHRK/EvGT
	8eGcKG5gFQI6BeqQgPWGYvyjBIEmVFLTSOSBYPGOdm+LGu9hpLLVY1t7WTPb4LPub6a7
	vN2+SeIeG8eDklwO9oQvgZxf0ZXzvvIJ4m6PrBh1ODhebscc1Ij+TODUpSQ90dUEjsZO
	CWjrISLLsbqtzP44e6kpBsbNx+4HVPiUN9TJy8OvLRqefMq/6mLfO6/agDj5KscCFfkO
	tqmI8I3YyptYxOqSyI/GBju6iveK9F3yetsrKMA5/lXU9ll3BWFyOibJrLrF69rIEfmb
	eRMw==
X-Received: by 10.58.67.9 with SMTP id j9mr6839249vet.22.1377255772709; Fri,
	23 Aug 2013 04:02:52 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 23 Aug 2013 04:02:12 -0700 (PDT)
In-Reply-To: <CAAGt+t2Mj2bpU5mvt=Ote-RaPc42zNB2Q9d2-D8OOpT-e3LJdQ@mail.gmail.com>
References: <CAAGt+t2Mj2bpU5mvt=Ote-RaPc42zNB2Q9d2-D8OOpT-e3LJdQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 23 Aug 2013 12:02:12 +0100
X-Google-Sender-Auth: jwImKsCyNZaQngaj5g3Q0y3xJEA
Message-ID: <CANyK_8cUAhXy59QL8ooF2Tht5FTM_-atXrBcQJSMxDc5Jhqyaw@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Build with Github source fails to connect
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
X-List-Received-Date: Fri, 23 Aug 2013 11:02:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 August 2013 17:57, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> SRC_URI =
> "git://git.github.com/zafrullahsyed/HelloWorld.git;protocol=git;tag=v0.1"

Try just github.com instead of git.github.com and try protocol=http or
protocol=https. Might have more luck with that. I use bitbucket myself
so not entirely sure on which protocols github does and doesn't
support.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

