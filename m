Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7539FE00A10; Thu,  1 Nov 2018 07:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF8E7E00994;
	Thu,  1 Nov 2018 07:04:23 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id b7-v6so1334018itd.5;
	Thu, 01 Nov 2018 07:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=/y9ZKvInxG6T7BaY0HwwEBd4Q7wtHXRpDNCEXmZYNo8=;
	b=IPE/4QH6BsuXgOSoQN1lXXZ12uhNJxA9r68JpqaLl0YDAEbJzazQvpUbZQ9AtEHkkb
	2xZSQL4TJTksfyoWfFXyt2tMpEox0VSdncGTpHAX9wJkd16YYBna9BOeVb/uVMDrBwwV
	Gs8QSsauwGAzwkCiPFDz1yCO6bFXf8gNCqByuyI7sENhr5AnVEmiKYomu5FN61EIm9eS
	AfKZSMgN9225EhlWyZTuJGjb/oFyCclBsm5DMvFzaI0TnQgrvak6zM/BBznLSm4U36OH
	rg3IaOWRV/L2jgl0vg3IsPmOYzb0FzbDnRIhY5NTyH0XX5RKS+J4a34/njMJCwP0jtoq
	thwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=/y9ZKvInxG6T7BaY0HwwEBd4Q7wtHXRpDNCEXmZYNo8=;
	b=Uns+jKOWxm6n4gad4gwplsUGTlW8rg++KlxBGEOvKxTVsdOd1xhNP+NO0gvBw+eolS
	LB7WKmPOoHqdGAtRuxF4Evr9Exsv0S8OFC0qfWVFza/lqahHQiZ4ohY4tFfU1qzbUzzk
	uxEGHXb5owG+doPvFhb6jkHrQGugA3lqmA5qG3P7X+TwYaj0bYer0SwTD/bWpnwWw4e/
	u6QQbkElnVsL50EfJMB1RGP0AmqTpVNwA1jNXYokqUAbWw3HBgfLgRQNgRnHI4SfQfTy
	D/CiF1buLuK7sRCxYxnsH9u+kZyAnRjUOrij8C34H5oy/HK50PzbVJWS5Xer+xM9eABA
	vB2w==
X-Gm-Message-State: AGRZ1gKwBxnxLcLykfSScnmUIxd0rKbiTefW+GOX/hGS0av0TEhzhvzh
	uIxQwuFjlHTCbqduByjKOY/fFCMw
X-Google-Smtp-Source: AJdET5c+uBcxqJiLpxjZEbpZAQeVJBVkpUhlWWUCNYRPNaHjqS0Rg37MP0Ctr9+NLUhoybSu9GSN9w==
X-Received: by 2002:a05:660c:284:: with SMTP id
	s4mr5348361itl.162.1541081062029; 
	Thu, 01 Nov 2018 07:04:22 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	q15-v6sm6998407itc.38.2018.11.01.07.04.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Nov 2018 07:04:20 -0700 (PDT)
Date: Thu, 1 Nov 2018 10:04:17 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org,
	yocto-advocacy@yoctoproject.org
Message-ID: <20181101140417.GA12376@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: OEDAM @ SCaLE 2019
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
X-List-Received-Date: Thu, 01 Nov 2018 14:04:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello Fellow YP/OE Enthusiasts!

There were discussions at our recent OEDEM regarding:
- our next developers meeting
- SCaLE 2019
- expanding/adding to the YP/OE presence at conferences (i.e. our own
  miniconf?)

Please see time indices: 12:13 and 16:45
https://docs.google.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8h26dkruX8zspoge7zCpk

Unfortunately, although lots of opinions were expressed, nothing concrete was
decided. Many people pointed out that their travel budgets are already
strained or maxed out, so adding another conference would be difficult if not
impossible. It's unclear how many "core" YP/OE people might show up at next
year's SCaLE. Also, given that this year's ELC scheduling hiccup is a one-off,
maybe it doesn't make as much sense to put in all the work required to run an
OEDAM at SCaLE if it's only ever going to happen once. Therefore I think I can
safely say the organizing committee for YP/OE Things at SCaLE 2019 is leaning
towards not running an OEDAM.

It's not too late to change our plans. If a large number of core people reply
to this email saying they want and OEDAM in March and will be available in
Pasadena, then we could accommodate it. It's just that we didn't leave
Edinburgh with the feeling that an OEDAM at SCaLE was feasible. Also, at this
point SCaLE isn't on the radars of many of the core YP/OE people, and
currently the conference tends to attract users rather than developers (or so
is my impression).

Thoughts?

Best regards,
	Trevor

