Return-Path: <henry@kittyhawk.aero>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3312E005BB; Sat, 28 May 2016 12:44:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9928CE00522
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:44:51 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id h19so133874647ywc.0
	for <yocto@yoctoproject.org>; Sat, 28 May 2016 12:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kittyhawk-aero.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=F8y3JbchGyCzw/dfnoMMI1Ohx4EOos9o57+/EsejL0E=;
	b=1tTh7doZRyWX8tnifFqs5Msfvu2F5XswrICMyGrUpG7tlDJ3+3bI5MqtFiQZnLygBn
	UMbdKazMBXlOKQBbDGPzO1SNFEGcteZiwjMHL31Z3r/A29Uje8zyFJfVIM1WiZgNDQ/v
	s2f+U45lYKvlGNx0Brc85p5AT8DN0+YtVNi07fNfna6Bi02/UkqtjnpnKP4yJBfUHlbw
	TtXkKywSYrjK7d+jlZ4rnV2N/jHw5McWVPXN/Cm92LyHh2jSRxLKr6r9W7qx7oTwMMyg
	A3ftMwlpiRrgBXun5PP2lv2dHgHj1xtiW9x1cujbFwU0EUgvf4qLgJ1OLbttqNMQIu3m
	nneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=F8y3JbchGyCzw/dfnoMMI1Ohx4EOos9o57+/EsejL0E=;
	b=Oe6bo0Pqr6IDfVEJsGhJIdl8Z36xpBDCMA+DV5Djrp+ZGagvbF5iKf8l1yoK2QreqQ
	jZQQVTeL0JnntcYio0YOOTDPYAb8ANAnujttotJDa2fVOt81aJIRDc+T8w1IzsbVGxni
	AtgtsinZGc7VJ5rLhUK1zBpwuQvUjORKPQ4GDXKJG1xbqTTzRLi/nWd+Lez5FD2IhHNH
	aFU0vP67cRvbhJbCQCdCLlTt8/hKMBQP0ZpmNo4mJZ2tCj/jUZbJCuHy6tthWkLnYYvB
	3XGbUn18r2TzfVjeycdI0fKmuGMMtwMS6A+/G29nb2rOmRYHx5nX3tltWHM93U1/M9ED
	DJvg==
X-Gm-Message-State: ALyK8tISifzSmdX2c9TVaz7a6fFeECE/bYFyVwGPp1ai/C4egLqQP7bx1PoN7Nwg70PwKYEJKe8vyFBSOGqOXjIV
MIME-Version: 1.0
X-Received: by 10.129.20.214 with SMTP id 205mr2598159ywu.161.1464464690396;
	Sat, 28 May 2016 12:44:50 -0700 (PDT)
Received: by 10.129.89.8 with HTTP; Sat, 28 May 2016 12:44:50 -0700 (PDT)
In-Reply-To: <CA+21M5ARVPuecHSmEOUR2jftTS=4RhTrJbmwV=VGQKRUyQO-bg@mail.gmail.com>
References: <CABvT5oUNfyd1Q8z9cZeH4Xj=rttdr2D_h94=WoCQLkesv42PVw@mail.gmail.com>
	<CA+21M5ARVPuecHSmEOUR2jftTS=4RhTrJbmwV=VGQKRUyQO-bg@mail.gmail.com>
Date: Sat, 28 May 2016 12:44:50 -0700
Message-ID: <CABvT5oXhY_u368BRe9HW76_vOUGkCzTKirtNoJjjVNAUP3xcbw@mail.gmail.com>
From: Henry Hallam <henry@kittyhawk.aero>
To: Renato Caldas <rm.santos.caldas@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Problem baking 'perl' on Debian-unstable
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
X-List-Received-Date: Sat, 28 May 2016 19:44:55 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 28, 2016 at 12:35 PM, Renato Caldas
<rm.santos.caldas@gmail.com> wrote:
> It's not just Debian, there's a bug report here:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9673
>
> I've already submitted a patch that should solve this:
> http://patches.openembedded.org/patch/123675/

Much appreciated Renato, your patch solved the problem for me.  Looks
like Debian introduced a new version of tar (1.29-1) last week.

Henry

