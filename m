Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA0C1E00D1E; Tue, 15 Sep 2015 18:13:47 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC41E00B7A
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 18:13:46 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so195714217pac.2
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 18:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=3nrrV1cz8GEOPx281p58dmfXsn/yVJuo4NKoX/4a+Lw=;
	b=hqfEJfzOZ3ni6vEI3njQfG/1j+a98e0K0vWLhthV3rWNwx7hfOW2Ds5jTt+UsFjsNB
	M2Yic96ac6BHykVPq8ROXInbRbNJUl8ha7vaCSVUATG7EIPJOjMBQsH1pKrT5fy/Oqkb
	wY6FAgRbGCymlQswrlSDlPmH3zsEwSu4vnFhsy+LwUat9X5JLVotupOQ1wANxqtAt/1y
	lNwyhs1JTJKoBP1Q1g4gbsyNpXtqHd3gpYT4WcS4kVrX4sx9REO+5ptGJ+PZBkIc79H9
	1qPJiy/w1dpHm8qPq2v4/4wlWzHCaR18n1Q/VkAwKkDQhmzZ+cfXd8E6ZB3yxXE+/2is
	baIw==
X-Received: by 10.68.192.9 with SMTP id hc9mr53532861pbc.57.1442366025646;
	Tue, 15 Sep 2015 18:13:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:61fd:c4c7:ba6f:7fea?
	([2601:646:8601:4580:61fd:c4c7:ba6f:7fea])
	by smtp.gmail.com with ESMTPSA id
	jv5sm24302161pbc.47.2015.09.15.18.13.44
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 15 Sep 2015 18:13:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <55F82F8A.0@gmail.com>
Date: Tue, 15 Sep 2015 18:13:44 -0700
Message-Id: <F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 01:13:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 15, 2015, at 7:47 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> On 09/15/15 04:26, Paul D. DeRocco wrote:
>> My embedded system has enough room in it for full-featured command =
line
>> tools, instead of the wretched busybox. Does the Yocto meta-data =
include a
>> layer that provides such tools? Or does OE? And how would I disable
>> busybox in order to use the better tools?
>=20
> +1
>=20
> ...although "hate" is a strong word, I have been tripped up numerous
> times in the past by writing a script on my development host only to
> find it doesn't work on my target device due to the restrictions of =
the
> various busybox executables. The "embedded" system of today is the
> desktop system of only a couple years ago. The only place busybox (and
> toybox) are needed today are in the MMU-less-type systems, such as
> Cortex-Ms etc.

I agree on busybox differences but sometimes its not about the utilities =
they are needed for some sundry work.
What would be interesting to know is how much size increase is caused by =
replacing all busybox functionality
with other utilities and also RAM consumption. That can give valuable =
information for someone who is assembling embedded system stack and help =
him/her the decision making. embedded systems of today might have more =
memory and what not, but they are also running more
complex applications than in past, so software bloat has caught up with =
more memory, in the end you still need to be cautious about the =
footprint and equation remains almost same.

I believe once we have a busybox replacement package group we can get =
the information I asked in para 1 which is a good thing.=

