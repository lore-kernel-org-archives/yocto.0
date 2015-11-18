Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B630E00BBF; Wed, 18 Nov 2015 01:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 822B8E00BBD
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 01:34:31 -0800 (PST)
Received: by lbblt2 with SMTP id lt2so20997160lbb.3
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 01:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gvtKV+GWLxFwO0kKgCap9XQvae15YZ9Z45i6Ty3beE8=;
	b=EB1eAiOTdzqARNcg3ppx0lUgv5B2a+LhuBW0KYk1kXp+A8vnp6cwtvJn2fTVxscfGG
	5Xz7AyEiAeU5R0w6FcE1B/pNiwT0QnjWibATNnYXMd2tzWHbb/ooerU9Okm4MsAm1zGS
	XZR4NA9oftb3L+Bwl1MAYolQ/9tgphoRRJulKZxtD6f/2ibyic26Y+DV6/LzEv4JrwF3
	bqYTeWn7Upvx8Hs6Iyk88LT67YnP3wEqq1rInoSS1CIsp8Q40IWkoKvSjAF2LHaYVqXx
	M9aqRRUm6YWC6KPb1JXuspb6x/paCoOd2hoZyIPY//C/vlxqdtRarE35jvDdtSyIOTjq
	S4Xg==
MIME-Version: 1.0
X-Received: by 10.112.132.73 with SMTP id os9mr228502lbb.128.1447839269789;
	Wed, 18 Nov 2015 01:34:29 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Wed, 18 Nov 2015 01:34:29 -0800 (PST)
Date: Wed, 18 Nov 2015 09:34:29 +0000
Message-ID: <CABatt_xd_FUT9hFyphPpwryiqnK3MKxbNmkKataEp53FiDVgvw@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: aclocal
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
X-List-Received-Date: Wed, 18 Nov 2015 09:34:34 -0000
Content-Type: multipart/alternative; boundary=047d7b34405a5e28270524cd593d

--047d7b34405a5e28270524cd593d
Content-Type: text/plain; charset=UTF-8

Hi,

Just after sending the email I came across a posting on perl causing this
error so it's not aclocal, ie running
perl -e exit
shows the warning, as per the post

env LANG=C perl -e exit fixes things

or
export LANG=C

after sourcing the environment works too.

I don't know much about locales so I don't know if this is a valid fix or
not, I'll carry on and see how it works out.

Cheers,
Martion.

--047d7b34405a5e28270524cd593d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div><div>Just after sending the email I =
came across a posting on perl causing this error so it&#39;s not aclocal, i=
e running<br>perl -e exit<br></div><div>shows the warning, as per the post<=
br></div><div><pre><span style=3D"font-family:arial,helvetica,sans-serif">e=
nv LANG=3DC perl -e exit fixes things<br></span></pre><pre><span style=3D"f=
ont-family:arial,helvetica,sans-serif">or<br>export LANG=3DC</span><br></pr=
e></div><div>after sourcing the environment works too.<br><br></div><div>I =
don&#39;t know much about locales so I don&#39;t know if this is a valid fi=
x or not, I&#39;ll carry on and see how it works out.<br><br></div><div>Che=
ers,<br></div><div>Martion.<br></div></div>

--047d7b34405a5e28270524cd593d--
