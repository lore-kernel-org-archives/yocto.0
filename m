Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD991E00DA5; Mon, 29 Jan 2018 20:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B7BDE00DA5;
	Mon, 29 Jan 2018 20:25:12 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id w27so13287980lfd.6;
	Mon, 29 Jan 2018 20:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cAkC2uc6sS2X5Fp1l1xutDcEbJ6T9DW6DWfHkv3h2SE=;
	b=XH7elBEPGyQ1qGVCi0hC3fqVQAPUu3/pwsXNEkt+iwfoykQCDBwblp4c/UTS7i0ok9
	uFqADu1apWMmAJzCP6joQEdIwtQR3aBj23IkzDQXn6ud02Kmr1SllKuYDyobQ8zBQgXf
	6Ttb+cEfQFt0fUJFbrSWhmiP6h30DmbJYpbojMJYMwkWuzXrVG7P+4MRObrzJ6zwk/Xw
	ysDpzrlqHbp3XhPlGzPejw4avy4h7xg7GYfTe5jBdi5B44r3JeE5RnTzF8hOVk3uxI97
	qEuLOapr9aJqjV/qg52DWfs7SwQnIm8gfPhr+tU0mLKXkrTWaps6gD+r6xsvXBoq6WdY
	PxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cAkC2uc6sS2X5Fp1l1xutDcEbJ6T9DW6DWfHkv3h2SE=;
	b=dBz4lVqu4gM29zh4D0RLK1oDP2FPSbujCx9twtQ8fRKTPRkCYqiUdvqUx2BjDtRjmM
	LXDXqGdC/AuM/Z4jQvV7z3kZDPn2H4SL5l9dGeQoJbhuJRMjBOJnDme6o1v3aFeDfM0l
	XpmOsEWLUULFyqzphfN8+dyscDLzHo8pAFLAcXlNIZNEoSChfcYKcKZJLsOIwnAl3Azi
	3cYMjBlKtkdA9V/oT9w3RW7u97RMPYgLNssP8Nmv19+MNKJzVP9inK2sCphvFtHCjv+/
	TsdmUBmYtJMtsgmxt0kbJk7pnY4uWkykSPJszWXYgLfWKfrtUmYw5qpo4NHWZJS3Fl/D
	otDQ==
X-Gm-Message-State: AKwxytcWO+hZ8TqBI7sw9gHNhQ753c1z9xdeV6lyBK3jhSlpXljD1YUc
	e8LlMxckgsb/yXWgqrUCn4sdCQ9Nyg6JoHp6FBLTDQ==
X-Google-Smtp-Source: AH8x22645ILN1eYMxaCPDY9l3hKljUJSPE2zvNyxGxTtgsoxwSntJos4J/6ySRGoP7RdC+bgtwx+df+tkoU3vLY3RUk=
X-Received: by 10.46.91.134 with SMTP id m6mr4472565lje.107.1517286311758;
	Mon, 29 Jan 2018 20:25:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.217.21 with HTTP; Mon, 29 Jan 2018 20:25:11 -0800 (PST)
In-Reply-To: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
References: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 29 Jan 2018 23:25:11 -0500
Message-ID: <CAHUNapSsTcYd=VEaSawmHuKswSV3By4V6n3FEVqm0czAcRQCUw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	eclipse-poky@yoctoproject.org
Subject: Re: Eclipse plugin plans
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
X-List-Received-Date: Tue, 30 Jan 2018 04:25:13 -0000
Content-Type: multipart/alternative; boundary="94eb2c05f360a28e7f0563f6bf76"

--94eb2c05f360a28e7f0563f6bf76
Content-Type: text/plain; charset="UTF-8"

Just to clarify... will non-IDE non-Linux development be explicitly
supported?

--94eb2c05f360a28e7f0563f6bf76
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Just to clarify... will non-IDE non-Linux development be explicitly supported?<br></div>

--94eb2c05f360a28e7f0563f6bf76--
