Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76733E007AA; Sun,  7 Sep 2014 22:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3408E004F5;
	Sun,  7 Sep 2014 22:25:04 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id p9so3525347lbv.38
	for <multiple recipients>; Sun, 07 Sep 2014 22:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=1FREffO6WYRY6exXSgaeYH71Yxdx0rnq4/tF0tU8cfI=;
	b=KXGjZlY9sUeFhr7+OppUtiEETYXXbMIMo95PF+9sMzB/SxrsFINLtVtMPRzvkcf1LU
	lVJiiSp7udvY8NUUOZnjeIY59ZzjuO9tUmi94qmQcUQPyhF8mbILmSFR6nYWZfmY5Fuy
	BTM4OyCuvfC37lyOkE+ta1GFIcem+TB6S4ZkZFtnuy2DR2xSssLXaxb2GtPbtfievPMZ
	TSAKXPLHXf8moDbOTwNZqxcoScxfdpMCAw28ZVo4chSLFjrW8VJqR9hxGlTmsjSZl8bY
	9Ki8jNf8W2whIy8BYs9tMQo51fMrzwFZ4bWFER8Tl1LbDjV8atKRZQ1gNXDx2gMtnZci
	WoQg==
X-Received: by 10.112.158.199 with SMTP id ww7mr25384168lbb.71.1410153902712; 
	Sun, 07 Sep 2014 22:25:02 -0700 (PDT)
Received: from [192.168.50.237] (ip-178-200-74-182.hsi07.unitymediagroup.de.
	[178.200.74.182])
	by mx.google.com with ESMTPSA id bi8sm205826lbb.45.2014.09.07.22.25.00
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 07 Sep 2014 22:25:01 -0700 (PDT)
Message-ID: <540D3DAD.1000304@gmail.com>
Date: Mon, 08 Sep 2014 07:25:01 +0200
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: jags gediya <jags.gediya@gmail.com>, 
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAP3RZogHv9R=+fG_e3xHeZ-L2WJgWwGMRAqi3UaBYh_dWYsDgg@mail.gmail.com>
In-Reply-To: <CAP3RZogHv9R=+fG_e3xHeZ-L2WJgWwGMRAqi3UaBYh_dWYsDgg@mail.gmail.com>
Subject: Re: Building own kernel instead of taking from git
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
X-List-Received-Date: Mon, 08 Sep 2014 05:25:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 08.09.2014 06:21, schrieb jags gediya:
> I want to build my kernel source code in yocto. For that i have
> modified the required linux-imx.inc file.
> 
> Inside that i have given kernel source directory in SRC_URI and S variable.
> 
> Is this approach fine, or is there any better solution i can get?
> 
I would always create my own layer and add a .bbappend for the
kernel-recipe I want to modify. There you could of course change the
SRC_URI and S variable but you could also provide your changes to
linux-imx.inc as a patch.

Then you could manage your changes to this layer via git. And you don't
lose the opportunity to pull changes from the remote repositories
without destroying your own changes.

