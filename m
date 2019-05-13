Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57A71E00D6A; Mon, 13 May 2019 08:14:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10D21E00D12
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:14:33 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id 188so11314323ljf.9
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=l9qhVVJ12v7R5yfNbFRowkTve1Kg8sqvo4vKQ85JHLQ=;
	b=xXZdAPTD4QUPBaj1CCsaeg/ZJLkZhXiTdWL3C3zE1sAWWK/5R79xQLWEoBXXnS64ip
	MiQlajIScLmYCKGgrVeXNxD3VoGjEIx+hSuCp5nlvQcFyyBf8Ay1TTOSXCOXFLuDotZV
	9PFh8+B5ptXOgMbqZTMXCpszCVHkRDOgAueXqEtfPPllKm2ulzr+YQHWpkoCHpuNGptk
	5az45j1ki8vZcNMpQTfun3UvX4/UcxY4kGTta7tSWsBCi5UG4z7TwqTof+52gHHmNM/a
	9yr3Aj+pWU5gPLwvbWQUKSdcLVesavNn/KBuvzEKzn2dSPyKsb2NXHw/QCXfzLv/HoqY
	bmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=l9qhVVJ12v7R5yfNbFRowkTve1Kg8sqvo4vKQ85JHLQ=;
	b=XWEvPca4YfnzaZff/bCcvhbch7jWq0wr5jh5rj8dRSIdnuHCzns5PupehITLisInMI
	VySha0hRl3ukccED8cSLMnpbXaCWw9SqwJ0YhRveBIwjDgisKp+Hy1V2EejLuL/FhavI
	nQAnK2eDUMxDlviDldb7MPAZG403TUYQbKv82dePMRhdT/ajM0yzW9uMSlU7zf42SwKQ
	sYxaUHCNn4RjiowRFcCCWIHi8fmyp5jcGWhhPxPYIa+WP0CVi2uehFjPcti0gfLsw330
	FwWVsvuITR5Wh0NwpDmEuE3T3xis3wxTjP5dvV242feU6BcQZTRvd7BsOOXi8wwPBuLO
	CGRA==
X-Gm-Message-State: APjAAAXWEVWYCoRCnbgvvH+DSydLUYBfwmyzTr8hVdNUITYq6NLNtG/Z
	EDT+y6lbFSEEAao4U86Q81v88yWRi9CMickKrWTARA==
X-Google-Smtp-Source: APXvYqwYAE3l6RMXc1Z8SShx2it55f66J81mY8Xtkjedyj6A+NKsA4ybMT53jYa7TkD4+5xdaqapTnwqxXNjgPL5vds=
X-Received: by 2002:a2e:2b58:: with SMTP id q85mr14134198lje.179.1557760472828;
	Mon, 13 May 2019 08:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <A084970538D2234B96D99D06FA9D974FC3799AF2@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC3799AF2@ALA-MBD.corp.ad.wrs.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 13 May 2019 17:14:20 +0200
Message-ID: <CAP71Wjyk__P5hKjoUvCWS2X-S+BPmdcgqTHdT_2PbRw++_4Q3w@mail.gmail.com>
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IEpvaW4gVXMg4oCTIE1heSAxM3RoLCAyMDE5IOKAkyBMaXZlIENvZGluZyB3aXRoIFlvY3RvIFByb2plY3Q=?=
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
X-List-Received-Date: Mon, 13 May 2019 15:14:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

CORRECTION: the next Twitch session will take place *tomorrow* on May
14th, not May 13th. We are sorry about the inconvenience , we had a
glitch in the date! The time and content of the session remain
unchanged.

cheers
nico

On Fri, May 10, 2019 at 6:59 AM Volosincu, Andreea S
<andreea.volosincu@windriver.com> wrote:
>
> Hello Everybody,
>
>
>
> The next live coding session is approaching quickly.
>
>
>
> When: May 13th, 2019, 5:00 PM CET
>
> Where: Yocto Project Twitch channel - https://www.twitch.tv/yocto_project
>
> What: Yocto Project developer, Josef Holzmayr, will show you how to creat=
e a simple layer, derive a customized image and go through a devtool exampl=
e
>
>
>
> Live Coding with Yocto Project is a live streaming series for Linux devel=
opers who want to learn how to build Linux distros quickly and easily using=
 the Yocto Project tools. The show is hosted by Yocto Project developers. W=
e talk, explore devtools and write code along the way.
>
>
>
> Add it to your calendar =E2=80=93 https://calendar.google.com/calendar/ic=
al/d7umm3pdhorsnnjbe1cvbgfhlk%40group.calendar.google.com/public/basic.ics
>
>
>
> See you soon!
>
> Yocto Project Advocacy Team
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

