Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 630C4E00A6B; Wed, 23 Nov 2016 06:30:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.195 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A44EFE00A0A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 06:30:01 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id n34so861725qtb.3
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 06:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WlcIfnzZ6zZDwmbRta/ALmoXGS9is06SixGPNAF9Rg0=;
	b=0eNKSzDOtpPBcloftb2/C8U8JBSOvEzKgKvgBE3HP66xFcbC2n339CQ2t2WJOYOt4B
	GG1QYl9rVQ9QBtzs6Oa3LHl+VY4qOXr5L74ywjBsMEhcWMagXTDvIGkhwGqwCa2c3rKL
	WBvFlhk5K401VzrRjEHq7q1XQUuCprW/DKXZT5N0jKZzj9VpSFx7BFoD1PenZXkJNvZe
	cu43K/hyGeRs8zMDNCPNnggpVFSN/XUVM0h6bZO530Qo3cyJMvNHSB/wOz2aiOhVKLOM
	Aus7/z6iETXeTNGoj/0p8YxZIJPytTj0lxs4dkj6T0C6+tP5o9yAoFQgHfKXp1TLXkVV
	owJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WlcIfnzZ6zZDwmbRta/ALmoXGS9is06SixGPNAF9Rg0=;
	b=Mz1G75XK5UXDRuhQWw2WoEPYUMDJr5otxEj+8hsTpwh7lS8pkkkGJTjysncBvY09iz
	pKajgI4X5AgL05V8WWsYb3Jjy/qsyFqc/xOjZLa4aH5p4fopBzQyq4UVsJLBX15Q7mvS
	MJ8xsmGyLj5ewLhGL2rEKyxmqWNU6VEVVA5+AKGNIDvqpPBzh3q566rrtBjKJVSKjCiX
	ijoMQaCbymRW0a6bcHq1ihTCr1cpEq2bijut+T47cDZSs6hERLJrf0b3xDeyWtRmDsC2
	41MovqkE/4Wyur3Mu9zx8fW/Fu4lhNQwXrm+x9gldoURTK/IJ98vTat+VPK1DwHM4jsU
	9nZw==
X-Gm-Message-State: AKaTC03euZCPcVz30WbvDTHxhBHGajc/W3pSS6tRGlJ+LWJgEkkFJOgfLeenizR3b1cw2FpP2+BVtjGJt9whIw==
X-Received: by 10.237.49.230 with SMTP id 93mr2625109qth.109.1479911400564;
	Wed, 23 Nov 2016 06:30:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.32.99 with HTTP; Wed, 23 Nov 2016 06:29:59 -0800 (PST)
In-Reply-To: <004201d24538$5cfdaea0$16f90be0$@neuf.fr>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<20161122151027.GA11632@openSUSE-i7.site>
	<001d01d244dc$d4b41030$7e1c3090$@neuf.fr>
	<20161122183028.GA18396@openSUSE-i7.site>
	<004201d24538$5cfdaea0$16f90be0$@neuf.fr>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 23 Nov 2016 09:29:59 -0500
Message-ID: <CAHUNapTL-GvW8_zqDQ1abG9uCU87UVXow7KN2Z0eDys8eru2Kg@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Wed, 23 Nov 2016 14:30:06 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 22, 2016 at 10:19 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> No, that would be me missing a patch in my branch... :(
> It should be 4.7.10, and it did compile yesterday.
> My mistake, I'm adding that right now, please retry.


Awesome!! Builds and boots :-D

