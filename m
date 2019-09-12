Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35E7FE00E11; Thu, 12 Sep 2019 02:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 116B9E00DE4
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 02:06:12 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id q11so3760657lfc.11
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 02:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=O5AIjF2x5rICQRgJTBbhPJsfhj1C2lsM2xMYH93VzlA=;
	b=ZWhfXhAgGZUnfQziTnyNfJ41yFr28eEihqVJaPtSTHf/lGgCSwyxXFZhfmf9UKc4lW
	BiKtNdoucW2bUOiJupBrVu6qD4oJU0oPuhmTMpZko1dO0PcESFUieg2cRYn7Np8aMaVx
	8SWutMg+W0NvLKlBqLIl4CsFDwQZnY0rj6ZgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=O5AIjF2x5rICQRgJTBbhPJsfhj1C2lsM2xMYH93VzlA=;
	b=MSK4KgYPuVeH0KW28KXp0NbquqxqB/mnXr1ArPGkLNXj69F8nVnsfHUQjNRhLJz/Np
	aqjpJ0G5oSq3eT3RLDNZ7H58auoOgf+rAJee68cvlfHMhfEqUK8/AQhQ+rUoXPoGWVFr
	rpuDTGl65CQ7Fer0dOfFYgTbLP3S1grfDj+RZU2faYw7+YOxD5Z1EYRA2AzlTtyZMUP/
	VQJMpu3xHkvsAzqvTwgNTausGkIzBI+PJAqbNHlaxd4bGt+7XhUib2D6DGuEtB/nxOKK
	vOyDXvy5PZQ0mDsG1vAEs41RenkkGbWZWOuTXutSxgNn8sjZReFBg9JleF/H7v8ZMIXA
	rZEA==
X-Gm-Message-State: APjAAAU0INEE6vjnmJxgwVjKuTOkM34sD5ZUGlzA9bL9mVY1wF/9hX98
	Ube/fZLCAZDCXqepFakSEfPcF3dusSYlRmtqBkWTgg==
X-Google-Smtp-Source: APXvYqzsJ5eIvCnzakDfz07ru2xRTjz2/xdw2Zq4y/HENVJYijM9VxHGNkvDRrOWgq2YgLD/FbXKm6WqK30rP3kPSCA=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr27458879lfp.61.1568279171887; 
	Thu, 12 Sep 2019 02:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <6F3C5ED776614BD8B5EE2E8DCAFBFAA3@PAULD>
In-Reply-To: <6F3C5ED776614BD8B5EE2E8DCAFBFAA3@PAULD>
From: Jussi Kukkonen <jku@goto.fi>
Date: Thu, 12 Sep 2019 12:05:55 +0300
Message-ID: <CAD5=o+ostuMAdfPEwvWzo95woVGdEGVY8Ddyp5paaDhYVzhLGA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: One second timestamp resolution?
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
X-List-Received-Date: Thu, 12 Sep 2019 09:06:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 11 Sep 2019 at 08:53, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
>
> I just noticed that I'm getting one-second resolution on all my
> timestamps. This is for both ext4 and vfat partitions, and shows up in ls
> --full-time and the stat command. What could account for this? My uname -a
> output is "Linux CHROMA1 4.10.17-yocto-preempt-rt #1 SMP PREEMPT Wed Oct
> 11 12:33:54 PDT 2017 i686 i686 i386 GNU/Linux" if that's any help. Also,
> my ext4 mount options are "rw,noatime,nodiratime,data=ordered".

I think file timestamp resolution on ext4 is one of the things that
depend on inode size (ext4 does not enforce reasonable values because
of compatibility with earlier versions I guess). So maybe check inode
size (should be 256 bytes I think?).

Jussi

