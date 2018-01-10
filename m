Return-Path: <andrew.stuart@supercoders.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F8EE00DB1; Wed, 10 Jan 2018 12:54:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from mail.supercoders.com.au (mail.supercoders.com.au [54.215.13.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4904E00A00
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 12:54:35 -0800 (PST)
Received: from [192.168.1.126] (CPE-144-136-188-55.sa.bigpond.net.au
	[144.136.188.55])
	by mail.supercoders.com.au (Postfix) with ESMTPS id 84768630A0;
	Wed, 10 Jan 2018 20:54:34 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Andrew Stuart <andrew.stuart@supercoders.com.au>
In-Reply-To: <db4a0c733ee0428c8a3c57e0cc2fac3d@ti.com>
Date: Thu, 11 Jan 2018 07:54:31 +1100
Message-Id: <7588CACB-EDE4-4101-BC56-E2960DFC673C@supercoders.com.au>
References: <71F965A7-EE3A-4E57-ABB3-F73AD25FB87F@supercoders.com.au>
	<db4a0c733ee0428c8a3c57e0cc2fac3d@ti.com>
To: "Mills, William" <wmills@ti.com>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: beta testing netbooting Yocto on Amazon, Google & Digital Ocean
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
X-List-Received-Date: Wed, 10 Jan 2018 20:54:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi William - thanks for the feedback - when you make a new thing it=E2=80=99=
s always really aprpeciated to get any comments.

>>I looked at your documentation.  You have a section "Is bootrino open =
source?=E2=80=9D
>>You don't really answer the question. =20

You=E2=80=99re right - I=E2=80=99ll remove that - it=E2=80=99s a website =
so the question that the documentation poses doesn=E2=80=99t really make =
sense.

>>>You also say there is an MIT licensed CLI.  OK.

Yes, an MIT license CLI is planned but not built yet.

>>>>But you do not mention the server code itself.
>>>>=46rom that I assume the answer to the question "Is bootrino open =
source?" is no.
>>>>Am I correct?

Correct - the bootrino website/console is not open source.

>>> So for my own POV I would not want to give this access to my cloud =
account without seeing the code and perhaps running it on my own server =
so I can be sure of what I am getting. =20

There=E2=80=99s not really any server behind bootrino - apart from user =
account creation it=E2=80=99s all client side. User accounts are created =
on Amazon Cognito which is a service purely for creating and =
authenticating users.  Apart from that bootrino has no back end.=20

>>> I could setup a scratch account but I would worry even then and I =
would=20
still have concerns ever going to "production" mode.  I am a bit picky =
that way. =20

I understand the concern totally.  One of my primary considerations =
designing bootrino is your cloud account keys.  I wanted to ensure they =
are never sent to the bootrino back end because of the trust issue that =
anyone would reasonably have. So your cloud account keys are stored =
locally in your browser and never send to the bootrino back end - which =
consists only of Amazon Cognito anyway as mentioned.
Watching network requests from the browsers developer tools or setting =
up a network analyzer would show that your cloud account keys are not =
sent to any bootrino back end.

So, you might ask, if bootrino effectively has no back end, then how =
does it work?  The answer is that the bootrino JavaScript running in =
your web browser talks directly to your cloud REST API with no third =
party in between. That=E2=80=99s as secure as I could make it - the keys =
stay on your machine and your machine talks directly to your cloud so =
you need never wonder about the trust level for bootrino=E2=80=99s back =
end systems.

>>>Others may not feel the same way.  I wish you luck.
Thanks Bill I appreciate your feebdack and candid comments.










