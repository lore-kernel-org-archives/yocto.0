Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99383E00BA1; Thu, 21 Nov 2019 13:35:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E68E00A39
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:35:51 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id j85so3320485vsd.11
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pZViVyG0VJj4O15bi+g/U38lMzttaFN9Tpap6wzjYDo=;
	b=mvEj8yk2WdN3E7FRgmNSktjO4iTdxB2q6B+2W966Ki8XUz2jgD6vecbluBUh6sfBt3
	fgglfhFRBXBbsGMesAuMousSsbb7UtvxoTBJ5DxgEIjErX/WsrNR/98PHDhJxgehh+3/
	QLx56MveDd8/TubDsvIhHNUaQi5Rw4M1joBZeKXNdiSgeSV5lmnXQnsB+qqF+y+LCofa
	hGVpGKaaQbNX0gd3/xHuf5zNVpZs/tI9gkX9YqgFev+B7mVevzGFf6v8chY4hBIChtds
	l3gCyKQUUZPpFD7CIbwtJk2aDjUymdM8meygU/+5WCcePdDKq8IO3IWZdLrp5+hpOwzQ
	RLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pZViVyG0VJj4O15bi+g/U38lMzttaFN9Tpap6wzjYDo=;
	b=Hal1EC7DYsQCrVlBVjNkKSaQXTfNzESj180+1oQi6lvLUpujXtkiiDtybqtnJ46EKx
	pZzSNK7M1waWYQCcH0cE0h2QnjQDW94bTpInVpK8ttcimc9lndFNK5DqI714t6ztd+5u
	lM7DUYQbEKqW723y2VLJQXiCWRRaI8+xOT1vrYllbIh3CDwhA/2i8hT/Pe5XbR8ZPlYI
	/2H2M8c5mYXrSJqIRCRsOKPdAQcyWh0WwtNv7tdYNVJUCyIPW890qKV/rOyaIJTFWAS/
	PNqOvBKytU6JvZT2oNgBVp0v9Jg6TvsvuhuGlGwNTJsk2mdDT53DZva6xM+gcE1lVOMd
	/RDg==
X-Gm-Message-State: APjAAAVqBsOyBQ/3Dnv/Imfbu51B5UWAVDuviJZiwfrP7UFuNSH6EmAO
	aA2BrCMi/g5tN2keoN2IH/cgzZl7ClE6xs3Dcc0=
X-Google-Smtp-Source: APXvYqzALBu+MxCmCo3SrtmerHP0FlEcXsbCDxYkR5Or/pzL5LcT+/9W2G+EWwYFY6q1ExnidG3P1DBUYis3e6A7sDU=
X-Received: by 2002:a67:fc04:: with SMTP id o4mr7624640vsq.35.1574372151283;
	Thu, 21 Nov 2019 13:35:51 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
	<1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
	<2392384.1fjsgAbKtY@shodan>
	<8718f67e43e75680f066d1249d59eedfc4d87e97.camel@linuxfoundation.org>
In-Reply-To: <8718f67e43e75680f066d1249d59eedfc4d87e97.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 21 Nov 2019 22:35:39 +0100
Message-ID: <CANNYZj_PEEPOWSXiR+23BANdCo668pok38nE9Md1s6XQcOozQA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a rationale for YP using sysvinit as default init manager?
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
X-List-Received-Date: Thu, 21 Nov 2019 21:35:52 -0000
Content-Type: multipart/alternative; boundary="000000000000d254380597e21484"

--000000000000d254380597e21484
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Nov 2019 at 22:18, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> We got so far and after looking at the position we ended up I decided
> it was easier to switch poky-altcfg rather than change poky and/or OE
> defaults. I resolved that bug as "complete" as we now had testing of
> systemd on a near enough equal footing to sysvinit which was the
> concern people had raised. There are problems in oe-selftest and some
> other corner cases but nothing people seem to be running into day-to-
> day.
>

It is also quite amazing that the project, by design, has entirely
sidestepped the divisive init system wars that have been gripping the
mainstream linux distros for years (and still are). I'd say it hardly
matters what the default is, if the other options are well supported.

Alex

--000000000000d254380597e21484
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 21 Nov 2019 at 22:18, Richard Pur=
die &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdi=
e@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">We got so far and after loo=
king at the position we ended up I decided<br>
it was easier to switch poky-altcfg rather than change poky and/or OE<br>
defaults. I resolved that bug as &quot;complete&quot; as we now had testing=
 of<br>
systemd on a near enough equal footing to sysvinit which was the<br>
concern people had raised. There are problems in oe-selftest and some<br>
other corner cases but nothing people seem to be running into day-to-<br>
day.<br></blockquote><div><br></div><div>It is also quite amazing that the =
project, by design, has entirely sidestepped the divisive init system wars =
that have been gripping the mainstream linux distros for years (and still a=
re). I&#39;d say it hardly matters what the default is, if the other option=
s are well supported.</div><div><br></div><div>Alex<br></div></div></div>

--000000000000d254380597e21484--
