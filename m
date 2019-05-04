Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9847E008F2; Sat,  4 May 2019 04:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D452CE0043B;
	Sat,  4 May 2019 04:50:07 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id q65so11984585itg.2;
	Sat, 04 May 2019 04:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jIrY+16ttOT+vcizR20thgqoyhFP/eCJOgZKjok/PzM=;
	b=lemHb1QJjr3VriSf0/o9Kz0Q6JG0djvUrM6aFfcDTElgPAA5tItcDmYOTtXs7CYHra
	iiBhqJtzaIXNz4mAYEfleKrKEPxFIYKk+q/QT7VSFzWQxvyGbj1wxHWG6fbf16XhmFdS
	tCEbmDYujvL0DHtZ8LKmpmCcBhk72Kj0LPpz+cMnpgj691PP5YfmPNWsCBTA+rnL/IGK
	bWzsiEBlXcgNrRkSEa0czeCBlFWn6ai6yILuXAS8MTPKR8fOkdHo5Ugoc0NIJcbRzr9O
	wRa4D0pcFP088Zxp39laMCacx1RXNGJDyAONbUDwxSEWw7z1KjofQutOxiBcYH3QUThf
	45Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jIrY+16ttOT+vcizR20thgqoyhFP/eCJOgZKjok/PzM=;
	b=Q9lVa3/VRWXXZw/mJQGnvvWQKiW1sBDP/fiLjHS/cS+6X80NH/9A1RI6U12mYmiKL+
	W6o3XOUk8/V2GOgYsZOGtNBOuDaZ51ydHlEXrilb60iaxaJ96BBAMVTcV7RVi5JN1GGz
	wDslw1G4ylsNGao/aOHGgaNwYKCJ2eOn0fyWJ/8Np4qAscKBJ2E00lOH0gObx6CBl4oX
	h2SWbA3a6TSaLrDBKEEMef59EWBOcSDPDbuvvJWFGlZgQjWOt+w6o4nVtzL2Twn3JhxD
	a+0GgCfPLwmapPi9rgLQs5gO9As6muHw4AELiLd9Q5yt7aR7DeCop8AsSWOVTx7s8YXr
	tVZw==
X-Gm-Message-State: APjAAAUCQzbOwW3OLZ8hDmSb+wWf5N+1MdueEgMee44UlvZco6jkld6m
	+7W42+LoQJyrkNN9g7aXVTCw3jmhiLvrwfFBJOo=
X-Google-Smtp-Source: APXvYqzbksQKjhwNqKbyRXB+kP8YREusuK8Oy3RwRK/2maJpzZCjJG/skXv1I014m/zoMCRd8MzJhaG8X8WtxHaW54k=
X-Received: by 2002:a02:43cf:: with SMTP id
	s198mr11262534jab.138.1556970607216; 
	Sat, 04 May 2019 04:50:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Sat, 4 May 2019 04:50:06 -0700 (PDT)
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 4 May 2019 21:50:06 +1000
Message-ID: <CAA=hcWTKgW_WU_ZsfDXUsbxHC9mAGyuVNFAHwHeo_8mHp9rwXQ@mail.gmail.com>
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
X-List-Received-Date: Sat, 04 May 2019 11:50:09 -0000
Content-Type: text/plain; charset="UTF-8"

Any planning to have a conference to Melbourne Australia in the near
future? I am keen to help.

Thank you.

Kind regards,

- jupiter

On 5/4/19, Volosincu, Andreea S <andreea.volosincu@windriver.com> wrote:
> Greetings,
>
> Yocto Project is pleased to announce the plans for the upcoming Embedded
> Linux Conferences in NA and Europe.
>
> Here is a snapshot of our schedule:
>
> ELC NA - Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront, San
> Diego, CA
>                    Yocto Project is a sponsor. We'll see you on the show
> floor
>
> ELC NA Dev Day - Tuesday, August 20, 2019 - 8:00AM - 6:00PM
> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
> Level: Intermediate - Advanced. Participants will receive beginner material
> (videos and presentations) as pre-requisites
> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with light
> appetizers
>
> ELCE - Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
>               Yocto Project is a sponsor. We'll see you on the show floor
>
> ELCE Yocto Project Summit - Dates & Times:
> Thursday, October 31, 2019 - 8:00AM - 6:00PM
>                November 1, 2019 - 8:00 am - 6:00PM
> Set-up:
> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 & Classroom
> seating for 40 (for maintainers and users)
> Includes:
> Morning Break for 2 days
> Buffet Lunch for 2 days
> Beer & Wine Reception with light appetizers for 1 day
> The goal for the second day of the summit is to build and bring the
> community together. We are interested to hear your opinions and ideas on how
> that day and those rooms should be used for. Please send your ideas to
> Andreea Volosincu and Philip Balister.
>
> We will call out an Advocacy meeting in a couple of weeks to go over plans
> and vote on the ideas for the second day of the summit.
>
> Thanks!
> Andreea
> Yocto Project Advocacy Lead
>

