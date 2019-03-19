Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 212BBE00D13; Tue, 19 Mar 2019 01:58:59 -0700 (PDT)
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
	*      [209.85.167.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE3A2E00B58
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:58:57 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id a6so11417165lfl.5
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QboM0HS83UfNHPMn3vDhvxcEHfyXljvakBLZ6y+Pvcg=;
	b=qYRwgzSGnO+FqD+RO+SKEF/cSb9rxCL6zgQSCf8sDaOOfukjZDZ2hPnL3TZ0AaRR1z
	zkoejyb+XgP8Ua0QD/w8KQPs11VBYmQ2mYepsoxiNNZDAG9Aja57Jfi60rIK9//HLb/x
	f3TIJb84m5OnnlrxjF1oQLtjQ7w5QJnEO8pHp1wOLVu9d8rhRhLhf8TmisBOFHqTouzu
	PQRAFueXzc4M5tUHlk6d143MQVotgzrGaUI2yn8fV4MJ+IDUPBYQul98c6bMSF+Bq8G0
	AejFraGnuFdhk6+T/8ddzwTQfRsRLUWdy5PTpEuuUILlLoAWjcqdKJM2a4xdHjYZiH+a
	ZV7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QboM0HS83UfNHPMn3vDhvxcEHfyXljvakBLZ6y+Pvcg=;
	b=NlOj+rn+tpIIdGlBakuKhzviYWe4DE6vYUjX8NtZ41TUxai6j/PpmKdnSUgHX9nSOa
	dBduvo42K4vPV+CFPugF9d6+Z75j/td46fYI+Mh2qh80r5gbPHRcOm9GA0ddOlLkhHYn
	rUZ8fnbsuVWLnqnD166W0kQb0REM1Uxqc4QrRqFyxhZdGf00Bp9sQ6akaC6AuRUQHsOW
	MWkkmWMXqv4Rt1Ivgo67e7yIW/gHkvwIu8NY6R2bPttK6P+b7pb7ee5FQbmcvrK3JMcR
	zBm3vPBvLlkB0DphRoQY7LBsFueKph+BdiRFTa3odLq69CzKLWiRxoZXd5VLt5coH6wH
	gAOQ==
X-Gm-Message-State: APjAAAURsu8vroHwObByBJrbfzP5og3Cx4DMLjnTXrlW9KXibPzwEW1o
	1vN9Fb+4U8L1V2Ti/WixPdt0fx5QP+cQsQpIOpn1/Q==
X-Google-Smtp-Source: APXvYqxeu/q10lPN2EzrEZq9wSMSFpKXOMTsfJDEVHb5JVXnsa5q9DzgomUtKwz7ImQOT4FONBob3u9ut3gKjE952hg=
X-Received: by 2002:a19:40cc:: with SMTP id
	n195mr12761986lfa.150.1552985936746; 
	Tue, 19 Mar 2019 01:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
	<CAFNP8OuuixdStE_LrRLhXbAtW-XuhE_2ehqzPucFL5iETvQCNA@mail.gmail.com>
	<CAPybu_2G3zKZexmUfym49J=ea-41PnT5QnsiuKkSxwDJUnZX9A@mail.gmail.com>
In-Reply-To: <CAPybu_2G3zKZexmUfym49J=ea-41PnT5QnsiuKkSxwDJUnZX9A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 19 Mar 2019 08:58:45 +0000
Message-ID: <CAP71WjwXDPANN-bzUxScD-oPKnJwiTD3zLc0uNWp5+AKOXKFPQ@mail.gmail.com>
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: rahul chauhan <rahulchauhankitps@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Guidance to start yocto project.
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
X-List-Received-Date: Tue, 19 Mar 2019 08:58:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 19, 2019 at 9:24 AM Ricardo Ribalda Delgado
<ricardo.ribalda@gmail.com> wrote:
>
> With no doubt: yocto developer day.
>
> Excellent value for the money!

Just to add a bit of context here. The YP dev day are events organized
by the project, typically at ELC and ELC(E) conferences, where we have
beginners and advanced classes.

Here is a description of the last 2 events:
https://www.yoctoproject.org/learn/yocto-project-dev-day-north-america-2018/
https://www.yoctoproject.org/yocto-project-dev-day-europe-2018/

You can find slides about some of the previous sessions here:

https://www.yoctoproject.org/learn/presentation-videos/



>
> On Mon, Mar 11, 2019 at 4:47 PM Scott Rifenbark <srifenbark@gmail.com> wrote:
> >
> > H Rahul,
> >
> > I would start with the https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html manual.  Gets you up and running.
> >
> > Scott
> >
> > On Mon, Mar 11, 2019 at 9:32 AM rahul chauhan <rahulchauhankitps@gmail.com> wrote:
> >>
> >> Hello,
> >>
> >> I am beginner with yocto project and i want to learn the yocto project and start working on it.
> >> can you please guide how can i proceed step by step and  what are the prerequisites?
> >>
> >> Thanks and Regards
> >> Rahul Chauhan
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> Ricardo Ribalda
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

