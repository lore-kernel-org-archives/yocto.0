Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC0F6E006B5; Mon, 28 Jul 2014 14:00:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8F5E00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 14:00:33 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id h15so4338311igd.5
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 14:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=b97Piye4sIpzL0qcA6nuAlvX/SaYWG5JwzhC+tsoQ84=;
	b=o8Df7Xh+nFZ5cGaa+2K4qIC8MK2uogn2aRsStorjlfLD/ivRyw1xwxybZ7MJ+ReDCB
	DrJSLA9ILLG9Ca3gM908lXl/9stZitp+3TjDgCYc1S97t5goOO+B/U/QnYQQ/3MhQFoE
	LJ5NCMg1R5piTagPy4XOhGAWfOIT6HybkyySXA3p3jjcXmlhjid6fkzcAp1mU/obM43n
	JlBMepgsNJenpRo88f+haXG75Xzp8Cf5AKdFInI3i93vFOjINwUkMl6szP1Z1y7RdKSw
	Ei2D/ZBumpl7aYyhGt1IuX/PQFLZyMjf1xghs9bZvYwk5EW2467D3km9Wob/4YMwnvPS
	Kuhw==
X-Received: by 10.50.134.136 with SMTP id pk8mr36764495igb.20.1406581233300;
	Mon, 28 Jul 2014 14:00:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Mon, 28 Jul 2014 14:00:03 -0700 (PDT)
In-Reply-To: <1406579728.9692.28.camel@kihei.inmotion.gotdns.com>
References: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
	<CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
	<1406574672.5096.19.camel@kihei.inmotion.gotdns.com>
	<CAMKF1srAu376FhYwHFqA9BzKXv8u6gKULqeaakML8J7eK6U7Mw@mail.gmail.com>
	<1406579728.9692.28.camel@kihei.inmotion.gotdns.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Jul 2014 14:00:03 -0700
Message-ID: <CAMKF1soT2W_W_3iot835euaERyg3v4ohNf1j6aQXOLiJYYKr+g@mail.gmail.com>
To: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
Cc: yocto <yocto@yoctoproject.org>, Darcy Watkins <dwatkins@sierrawireless.com>
Subject: Re: binutils-native 2.24 build broken
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
X-List-Received-Date: Mon, 28 Jul 2014 21:00:45 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 28, 2014 at 1:35 PM, Darcy Watkins
<darcy.watkins@inmotiontechnology.com> wrote:
> This commit applies cleanly as-is to the daisy branch.  Do I need to
> resubmit the patch by Richard Purdie, or does maintainer prefer to merge
> the commit across branches?

Backport Richard's please

