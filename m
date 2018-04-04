Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDAB1E00A75; Wed,  4 Apr 2018 09:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6147DE008F2
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 09:14:15 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id u46so23632270wrc.11
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 09:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Q6QyUvHYMmub4nfrwA1MTSKFA0WDiXOoPLlIOWFuMgA=;
	b=LdTk6CTkzQhCAE4l4vX5SQ2SOyVwv5tuy8bvWlrVzGF351yNCKF7HRbK/viWC13SgX
	F+9Sr0B6tJAqp+BXp4pjg3tqsNTUHk3XDaAWnrP6rLmZIi98QZrca9VhLhegZ+xtjIjo
	K+B1YoAqGlH8GkVULWAezy7TFM7lWvY4qPoOr6MgxTNLBbnNXlH9TyMPZgOT2LQP5eaO
	+234pGBbw4BU/2K7UsHQWcE5ijofKTGs8sBKO+VXwcrYMI0jYUwOWrYsuLiU7b5JviLc
	Pr4atQLlpAv8nrA19RjnH8aZSIHxlABPQ3fLiiHN4Qm+XEgl/njIfX+TXwAr0mikvF9z
	pf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Q6QyUvHYMmub4nfrwA1MTSKFA0WDiXOoPLlIOWFuMgA=;
	b=pghKztQw6djwDB40eqMJ/hW8ufrzXmHIzZHQOqfV65HTp+6fCYMSMak40im0zyOt30
	qj9NGURPbUSaYBbI5wLwfO4mTET+f/Itk8mS3wXCWD/lKqYcHe3qsmo7Un/eGTbOQmG0
	UsD00N3PQEuoHnTjCvFW2XLG+1sXmx2LdBTvecrv/6tUOGD32CynFHwMTE5i6QzXN9kN
	SaD8wYaFCd4W3mvMHoMbnES8ZS6O9eVZSD2RG1aJvmTqftz6wgTfIU5aqVEO8UvUcVSK
	tlmOATVBYDCzafEvquavK5WqT6tZLDs78YNCkMiXUvxwxOkAol4F0Jdze66ZKzqXRirq
	Hh3Q==
X-Gm-Message-State: AElRT7EM8umfb/U5SRyIW7M9ZjPfwPvyTNAxCd7umUhKwc/2Dh6a33Bl
	fIaZn8NXg2TimAahcdax6w97JrYh6NkccLrUoGd7cQ==
X-Google-Smtp-Source: AIpwx48ibRSqYjVTtofkwclIpPBdycfPHq0isn71gLijQgNBMOY9w1xVt5F57jEQt6V3gOy0a1+2UragEsmJXSk168Y=
X-Received: by 10.223.177.213 with SMTP id r21mr14367979wra.89.1522858455128; 
	Wed, 04 Apr 2018 09:14:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Wed, 4 Apr 2018 09:14:14 -0700 (PDT)
In-Reply-To: <CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
	<CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 4 Apr 2018 09:14:14 -0700
Message-ID: <CAJ86T=WU2VakRhBpTZ6gRjSZdrntJpm25p45jbB3aZnt=J5ATA@mail.gmail.com>
To: Chris Elledge <celledge@digitallumens.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Wed, 04 Apr 2018 16:14:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 4, 2018 at 8:06 AM, Chris Elledge
<celledge@digitallumens.com> wrote:
> Thanks for the feedback. I rolled back binutils to 2.28.0 by copying the
> yocto-2.3.3 binutils recipe directory into my custom layer. That has
> resolved the issue.
>
> I can confirm that binutils 2.29.0 also has the problem. I went from
> yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously. There are
> also reports that openssl and libavcodec are broken when targeting an ARM
> Thumb2 platform with binutils 2.29.*

Yes, that makes sense. The binutils change is in both 2.29.0 and
2.29.1 (and also in 2.30.0).

The next useful experiment would be to stay with binutils 2.29.1 and
apply a patch to revert the one particular commit which caused the
change in behaviour:

  https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff;h=e645cf40b111daef4518a58547de577eb9379ccb

