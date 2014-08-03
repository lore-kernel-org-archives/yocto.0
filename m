Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F34CE0079D; Sun,  3 Aug 2014 09:40:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA24E0030B
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 09:40:48 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id g10so8326758pdj.1
	for <yocto@yoctoproject.org>; Sun, 03 Aug 2014 09:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=A/ZJJzzbyG3lfyjUL1unhnHryfY07waNORrA/Rxbdg8=;
	b=LKl7s/pP/m1hZ9q+z1BVVOJ33IPz/+HtbI6WQTwq/6HgYCEVMQp2ZefGZEcF9GXT+X
	JzjR6zZHBTuYecX//T5kyQhURuTjSP6nemYRY4G8GgpekhgdCCcJU61lW6Rd6xdCKZMe
	Mgg50qrgnwe+yVCY44iIat2NZWdhGwyYpgr9Up+ulTmqvW7ho16BIBFo/yNbEX4gA13R
	TfhA5OO8buc/iLh+zyIJKbun59H8+AaFC2N0JLSVKnGlKM+dt1HuhVND7GYjYjnqS48X
	jmkZSE88fqJtzmVzRrj0AFhWodJP1zS6X9lGsmfo2cmy+BMJ80xdR3QpyrAsjaZe6R+j
	TGNA==
X-Received: by 10.70.36.7 with SMTP id m7mr3221247pdj.91.1407084047526;
	Sun, 03 Aug 2014 09:40:47 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	kq7sm14844495pbc.90.2014.08.03.09.40.46 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Aug 2014 09:40:46 -0700 (PDT)
Date: Sun, 3 Aug 2014 09:43:50 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20140803164350.GA4788@haswell>
References: <alpine.LFD.2.11.1408030324460.11951@localhost>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1408030324460.11951@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: does no one find the "bin_package" class of any use?
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
X-List-Received-Date: Sun, 03 Aug 2014 16:40:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-03 03:26:47, Robert P. J. Day wrote:
> 
>   throughout the dozen or so layers i have on my build host, i have
> yet to see a single use of the "bin_package" bbclass file. just
> curious as to why it seems to be utterly unused.

it is for packaging prebuilt packages e.g. rpms etc. and mostly I expect
these things to be in vendor layers who have to deal with third party
software with closed licences.

