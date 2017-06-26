Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 218C0E00B8F; Sun, 25 Jun 2017 22:19:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82216E00B63
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 22:19:54 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id w19so1572338uac.0
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 22:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Goo7KBLTN1nzuGCLrOzYsjxkyqok28Kw/KX6h/GuAMs=;
	b=rOmQ6T+GoJ/9c49Vv/TBF6ZmabvLevL5IFqyD6IVYVFsQCvL1gM1YfHWLnLay7GX3O
	AGLOyjjKpznOpKn6l5XT7yzMQ+T5PkkpZlhQC4xdUGTSk0PZwF5OeGriaaNj+pW3iYei
	9zuqNUYmyA5HJefXg96BM2aXUXkNkLiM7X38eUtIzlOo3HMRi81gkXsvS8ypAb/Led08
	uprVUVmgn0Hz/lcFZg2u9+5zJscsaZlxqRY4owFjssZWv74JMXTTQCXOF5g8/0ofLaVC
	PLPhi/t89zVcDd1Ztv+XDwzOec8dD2GgphUR7xy3GWTcaQUP57xMD+EoapToO1z1VUGD
	x7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Goo7KBLTN1nzuGCLrOzYsjxkyqok28Kw/KX6h/GuAMs=;
	b=MS2CIedo2g3SXMfkcOPubzIZyu5Owly4+5r4syfIjd0MLVT2niF2l7wFxtK1zRNg48
	25gI+M2sAhUJmgYm4zo1KLiNZKbs6BsJT9a9XqFLTD56c88TXosfDGMaoJsqgGWy6DdT
	NEHyqHhMwQUBm3OnKyCd59tc+gVO3S/awGw4z4Y3KGyBjLPhS/AOtATQocDJ5BjSIKFo
	e0KwN6hfR3/Yv91mWH18PJKSyMEN1zTvkQHSLq4MUuP7PwAV83bs1YoevgALcS9tUgQl
	Fua2yqoL3Fe+gqzeT08vqsNqJX0+V/b1UyhZIzPriM8kHWDC4iY/Ter904nACOg8QTzk
	nfUg==
X-Gm-Message-State: AKS2vOx1TEQS4ww0BL7E3OgLRhXSX4ilTc1i0AjX3b1Sei8CYcXAu4ga
	R2boeTRfFDwROkBSGH0VGA3IkC0Elg==
X-Received: by 10.176.4.50 with SMTP id 47mr12470865uav.151.1498454394349;
	Sun, 25 Jun 2017 22:19:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Sun, 25 Jun 2017 22:19:53 -0700 (PDT)
In-Reply-To: <23EE2924AFA4488992A7D0127F20147A@PAULD>
References: <23EE2924AFA4488992A7D0127F20147A@PAULD>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 26 Jun 2017 01:19:53 -0400
Message-ID: <CAHUNapRBFvJbsJxQfOSWKYd8qGikHRxO36rWD9iphqgzzdruLQ@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current state of linux-raspberrypi-rt?
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
X-List-Received-Date: Mon, 26 Jun 2017 05:19:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 25, 2017 at 10:32 PM, Paul D. DeRocco
<pderocco@ix.netcom.com> wrote:
> Google turns up a lot of stuff about this, but the latest I found was a
> thread from 1/5/17 that started with Trevor Woerner posting a 1MB patch,
> and that ended with him posting a message saying that it didn't actually
> work.

I posted a v1, which worked great, and continues to work great.

After posting the v1, lots of feedback was given. One of those pieces
of feedback was that I shouldn't include the entire defconfig, but
rather I should use some sort of "savedconfig" setting to generate the
full config. I had never heard of this before. I asked for more
clarification but received none. I went ahead with the v2 using this
"savedconfig" technique. It *appeared* to work (which is why I
submitted the update to the mailing list), but, after a lot of
testing, I discovered that this "savedconfig" thing didn't work. The
defconfig that was generated using this technique was useless and
nobody could provide any reason why or advice how to fix it.

So v2 didn't work, but v1 did and still does (we're using it internally).

But everyone considered v1 to not be acceptable for inclusion for a
number of reasons, so it never got merged. Besides, that work was for
a 4.4 kernel, which is now considered "old".

> Is there anything new on this? I'm trying to do some compute-intensive
> audio on an RPi3, and it really needs a real-time kernel.

Andreas M=C3=BCller has a meta-raspberrypi fork in which he has an -rt
recipe for a 4.9 kernel:
https://github.com/schnitzeltony/meta-raspi-light

