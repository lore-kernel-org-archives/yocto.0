Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0291DE00D53; Mon, 13 May 2019 13:09:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5446E00B43;
	Mon, 13 May 2019 13:09:42 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id r7so16033144wrr.13;
	Mon, 13 May 2019 13:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jWlZe8z2yP4T82iSMevrJA2itT/UsR35KEV+om/ptFY=;
	b=kDRAdPgdphL54ENgB391yPKQq/Bc9FIpBio1zct7pXGj8HP5aKME96N/toA3iCNllY
	rGD8YMkSRJFZKyCoxA01uaFeqlZtMKaCQAZtVuNvcFDVLjt2Y/Cp0CQirTWG1Omt+ps8
	I9b098kQBwg6wDxKwKTZPpV7wqAvUhd8PtHrH5TjOntlkng/AF8xVzACLGoc4eWygqr5
	ebb4rF2rF+G/K/mjHNG2nWeuJsSGm9eOb92fxWfZsrwb/v3MarUvAqmOS3BL+59LmZxo
	lvol8DREDiIo9WRWf/Ld81aAZS1X/gzDQtFiYMA/7FsteXYc1YE8heOa6IufKYEP0H2J
	qqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jWlZe8z2yP4T82iSMevrJA2itT/UsR35KEV+om/ptFY=;
	b=GXtLH/SmzAASjuPNo9vaoy15VMpwXoNE19FA7hvh6yeRlVbe4kvO/hNJWd76DwaFwu
	QrCy5/sq7dwv6YiXBmdRJCBeWCRmZcAhNTCQSrdOmchdA+NmGjhO5CM7N1ji0F1Ip+qG
	8hRj2BdPFzH1jni0yeswrmgggRii4fY+Uu7jCFEhj10FJqmaqBOb0FgxXN128Mu/lNrB
	LlH5TK9CtzZ83TIt3OMMRAxUoZBNBTQeO7/CkFIrbp/R/n++Ql1K9NaHomRyL7F0kGsj
	YV+KYLe7b8tuwcNR89aE1S0AA3bCpHkUno0rYFg/bsL1XH9YRBWjlmvm8cdyv1O1hQA5
	96RQ==
X-Gm-Message-State: APjAAAX5mo+2XU05ekMZNHk11zZG3oAeNbSR/TQkyOf7yOQCWzG8rF/M
	OWvlZdZtd1pLzAoF89b/qSBgDy+rlyNj0r4Ooo0=
X-Google-Smtp-Source: APXvYqzn1d7/M/zIEejoCphqWxv/Tu0K3MIOPnHDRVe/jGDQWBltrlPOUm5V2W9d5XsuDaCRoNl+nxs905098F8BsYA=
X-Received: by 2002:adf:b641:: with SMTP id i1mr18798535wre.288.1557778181892; 
	Mon, 13 May 2019 13:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com>
	<A084970538D2234B96D99D06FA9D974FC378F01F@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378F01F@ALA-MBD.corp.ad.wrs.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 13 May 2019 15:09:28 -0500
Message-ID: <CAJdd5Ganw=jc=mhZLumjdcnEi1v+qCk-jkuPmMvpREbs-y3pRA@mail.gmail.com>
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>
Subject: Re: Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Mon, 13 May 2019 20:09:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 6, 2019 at 12:43 PM Volosincu, Andreea S
<andreea.volosincu@windriver.com> wrote:
>
> Hi Joshua,
>
>
>
> The event will be listed on the co-located events page and there will be =
a cost associated with it. Please check this page in a couple of days - htt=
ps://events.linuxfoundation.org/events/elc-north-america-2019/program/co-lo=
cated-events/
>
>
>
> You will be able to add this to your ELC registration.

Thanks. I'm hopefully not being too annoying, but us there an ETA on
when the registration will be open? The early registration deadline
for the ELC is May 20th, which is basically 5 working days, and I will
need a few days to push the paperwork though, so it's getting a little
close for my comfort :)

If it isn't going to be available soon, I do have a few questions:
1. Is it possible to register for the Dev Day after you have
registered for the ELC?
2. Is there a rough (preferably upper limit) estimate for the cost?


>
>
> Thanks!
>
> Andreea
>
>
>
> From: Joshua Watt [mailto:jpewhacker@gmail.com]
> Sent: Monday, May 6, 2019 8:07 AM
> To: Volosincu, Andreea S <andreea.volosincu@windriver.com>; yocto-advocac=
y@yoctoproject.org; Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] Yocto Project Upcoming Conferences and Developer Day=
s
>
>
>
> On Fri, 2019-05-03 at 18:01 +0000, Volosincu, Andreea S wrote:
>
> Greetings,
>
>
>
> Yocto Project is pleased to announce the plans for the upcoming Embedded =
Linux Conferences in NA and Europe.
>
>
>
> Here is a snapshot of our schedule:
>
>
>
> ELC NA =E2=80=93 Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfro=
nt, San Diego, CA
>
>                    Yocto Project is a sponsor. We=E2=80=99ll see you on t=
he show floor
>
>
>
> ELC NA Dev Day =E2=80=93 Tuesday, August 20, 2019 - 8:00AM - 6:00PM
>
> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
>
> Level: Intermediate =E2=80=93 Advanced. Participants will receive beginne=
r material (videos and presentations) as pre-requisites
>
> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with light a=
ppetizers
>
>
>
> Is there any registration cost for this event, and how does one register?
>
>
>
>
>
>
>
> ELCE =E2=80=93 Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon=
, France
>
>               Yocto Project is a sponsor. We=E2=80=99ll see you on the sh=
ow floor
>
>
>
> ELCE Yocto Project Summit =E2=80=93 Dates & Times:
>
> Thursday, October 31, 2019 - 8:00AM - 6:00PM
>
>                November 1, 2019 - 8:00 am - 6:00PM
>
> Set-up:
>
> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
>
> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 & Classro=
om seating for 40 (for maintainers and users)
>
> Includes:
>
> Morning Break for 2 days
>
> Buffet Lunch for 2 days
>
> Beer & Wine Reception with light appetizers for 1 day
>
>
>
> The goal for the second day of the summit is to build and bring the commu=
nity together. We are interested to hear your opinions and ideas on how tha=
t day and those rooms should be used for. Please send your ideas to Andreea=
 Volosincu and Philip Balister.
>
>
>
> We will call out an Advocacy meeting in a couple of weeks to go over plan=
s and vote on the ideas for the second day of the summit.
>
>
>
> Thanks!
>
> Andreea
>
> Yocto Project Advocacy Lead
>
> --
>
> Joshua Watt <JPEWhacker@gmail.com>

