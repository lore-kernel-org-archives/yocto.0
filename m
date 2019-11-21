Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 038AEE00EBC; Wed, 20 Nov 2019 23:23:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE1FE00E40
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 23:23:38 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id 94so2043398oty.8
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 23:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=hEtK1ZqJ93BuchFHcpERYWYlDzBL7CADQqmMuxkYx4s=;
	b=IKFmbbYCTuTPTM3DB3CorgPUAMf0VYmdrAtj1X3PFDKaoRC7M7tY0hsZM6JfcJQ52o
	htdXn0Mqk57tedHoQXBG+vC3y3pbqzDknqVWUdTHCLZIr1j6WP1dzfqnDp6/swQSRPr5
	E//hMcJ+ZeNCXyMEtdqurCmWhbSS7FEpCKTXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=hEtK1ZqJ93BuchFHcpERYWYlDzBL7CADQqmMuxkYx4s=;
	b=ds/ZfC1KsGELqtC/Cc+SYZKwnkOWr/szyk7R4aKxf017y1gY+jqNNSaQ2kxeQ4/APv
	cZqh5UBouhOPkVrtU9laaVSIsPgo/3vxLeZvUQZTyOpnakTl567zMRdWfH/H2fZdrM5u
	Lf5ozgQCVtoKmdMHm+ze0J7pzJ/QNGotKhZNJMXBQk+E4sdHthgTQIcqiUsY6oS5Ywjs
	DDIFeZS5sRZWApzdvdSTcmetqSvYkFCnTYn4OIyyYdTKD16q0OwCdJi5J5yT8f6oHEcA
	pcnvhoK2JsiUT97fMcWi6mT/g33ZyIEUKEN7NdnHUw6izacZ5kdNgLflqcuDrkP1O4Js
	QjXA==
X-Gm-Message-State: APjAAAVa+UAoTutJr3bjn26wPtQkLJQ+s2lYQWa6QYj1dd+LhhdewWDt
	wtQ8+laRXFmfBAjBT56tK8Ur/muoICwua85NjkmMqg==
X-Google-Smtp-Source: APXvYqzGG+arJ+6q/UfDQ1kAggTMPuBaJS7wqulqqS+o+jfF8E8L9iVnukF3EOJiYBvpitAGRV+F5Q6cewPMwPHvCN4=
X-Received: by 2002:a9d:328:: with SMTP id 37mr5030814otv.228.1574321017518;
	Wed, 20 Nov 2019 23:23:37 -0800 (PST)
MIME-Version: 1.0
References: <e0299795-a076-faba-6cd2-1a6ccf295f76@linuxfoundation.org>
In-Reply-To: <e0299795-a076-faba-6cd2-1a6ccf295f76@linuxfoundation.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 20 Nov 2019 23:23:26 -0800
Message-ID: <CADfgfoYzWFVsY_KhETe-vto0t7v-uHnKAkzuSoSRvekKtmovWQ@mail.gmail.com>
To: automated-testing@yoctoproject.org, conferences@yoctoproject.org, 
	eclipse-yocto@yoctoproject.org, linux-yocto@yoctoproject.org, 
	meta-amd@yoctoproject.org, meta-freescale@yoctoproject.org, 
	meta-intel@yoctoproject.org, meta-lsi@yoctoproject.org, 
	meta-mentor@yoctoproject.org, meta-ti@yoctoproject.org, 
	meta-virtualization@yoctoproject.org, meta-xilinx@yoctoproject.org, 
	poky@yoctoproject.org, toaster@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-ab@yoctoproject.org, 
	yocto-advocacy@yoctoproject.org, yocto-announce@yoctoproject.org, 
	yocto-bsp@yoctoproject.org, yocto-infrastructure@yoctoproject.org, 
	yocto-security@yoctoproject.org, 
	Discuss website content updates <yocto-website@yoctoproject.org>
X-Mailman-Approved-At: Thu, 21 Nov 2019 01:12:37 -0800
Subject: Re: Mailing list platform change November 21st
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
X-List-Received-Date: Thu, 21 Nov 2019 07:23:39 -0000
Content-Type: multipart/alternative; boundary="0000000000000314ff0597d62d6f"

--0000000000000314ff0597d62d6f
Content-Type: text/plain; charset="UTF-8"

The window for the mailing list move has shifted forward to November 21st
from 4pm to 8pm Pacific Standard Time. (2019-11-22 00:00-04:00 UTC)

Moderators please tend to all pending requests today.

Thank you,
--
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

On Fri, Nov 15, 2019 at 4:25 PM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> After backing out of the first attempt to migrate we are again moving
> our lists from Mailman to Groups.io. E-mail to lists will be delayed
> during the move window on November 21st between 17:00 and 23:00 UTC.
>
> A new account will be created for you on the Groups.io platform and most
> users will only need to update their list mailing address from the
> @yoctoproject.org to @lists.yoctoproject.org.
>
> Moderators please attend to all pending requests next Wednesday November
> 20th.
>
> Please read more about the change on the wiki:
>
> https://wiki.yoctoproject.org/wiki/index.php?title=GroupsMigration
>
> If there are serious issues we will rollback the changes. We will e-mail
> all lists when work is complete.
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>

--0000000000000314ff0597d62d6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The window for the mailing list move has shifted forward t=
o November 21st from 4pm to 8pm Pacific Standard Time. (2019-11-22 00:00-04=
:00 UTC)<div><br></div><div>Moderators please tend to all pending requests =
today.</div><div><br></div><div>Thank you,</div><div>--<br>Michael Halstead=
<br>Linux Foundation / Yocto Project<br>Systems Operations Engineer<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Nov 15, 2019 at 4:25 PM Michael Halstead &lt;<a href=3D"mailto:mh=
alstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">After backing out=
 of the first attempt to migrate we are again moving<br>
our lists from Mailman to Groups.io. E-mail to lists will be delayed<br>
during the move window on November 21st between 17:00 and 23:00 UTC.<br>
<br>
A new account will be created for you on the Groups.io platform and most<br=
>
users will only need to update their list mailing address from the<br>
@<a href=3D"http://yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">y=
octoproject.org</a> to @<a href=3D"http://lists.yoctoproject.org" rel=3D"no=
referrer" target=3D"_blank">lists.yoctoproject.org</a>.<br>
<br>
Moderators please attend to all pending requests next Wednesday November<br=
>
20th.<br>
<br>
Please read more about the change on the wiki:<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/index.php?title=3DGroupsMigra=
tion" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wi=
ki/index.php?title=3DGroupsMigration</a><br>
<br>
If there are serious issues we will rollback the changes. We will e-mail<br=
>
all lists when work is complete.<br>
<br>
-- <br>
Michael Halstead<br>
Linux Foundation / Yocto Project<br>
Systems Operations Engineer<br>
</blockquote></div>

--0000000000000314ff0597d62d6f--
