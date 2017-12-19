Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E22E00DAF; Tue, 19 Dec 2017 07:32:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717B1E008FB
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:32:00 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id n9so4681924ual.13
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Yy18YtdVGONFwi8hP7VNQX7FL6eV+d/zLZLxNKI9nnc=;
	b=nCyA4eYXPqlO782EYE+1WS7SfGT89tu+uSZ/WMlZ4EDb9Qs903KOxvObMWWQyzf+Gs
	8CEey1AczY31lGholXhzzoiPdDfjkzq/JRTVvYgLauXNajlwRPH2U4DdREKQo37XKHHa
	nK0ibtKn7z7vwqI93QSHjG7z8evo4o9UZ7yi0qgzl6xRYYDRfcXEHW7uOowJzivdDezu
	maS6EdPZjLRq/XMs4wFpBPXBMJvrSKIIwD7i+U/VAlLEbTfptieNUalL+mvdb0hZuNMC
	D7BboD1pohOM/J8oSuw9bzQwLr3ajpToMUtDh3tl/nqvzcm3ppAcQwoLOAmSr7qmWlVb
	F+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Yy18YtdVGONFwi8hP7VNQX7FL6eV+d/zLZLxNKI9nnc=;
	b=bi/aIvKSoh0s6hQGu0ZvBaWKWSR/NGODrYiEVXhAXQcTZHENZy80oewlmaaE0Nq6kQ
	6Ypd+WM2sqgTRBcRJpwDeiICkZi30KNv4wf+QTT0R0GqdKdPHGw2cuCtRH1ml1mhBEyk
	Ta+sGii2C0lDfYJRazcdMdRGhNG/oYM2qZSas9knzlcwtsyszjR54m7f4p8LiaChj2L7
	jXr+2MbxAj9RhmzZOGe7LIisg4RAQUVWqyJ3VSC2kvZic7jW/pwPb2nFLTcLqyAgvqx+
	2j5pgnB1v1zUnuFfPlH3GxjU5uAHUz3V/js9KpKeuONjPIkCX96IZf2yROYdQReHWNY9
	bnvw==
X-Gm-Message-State: AKGB3mKdwXOUX+P94gJWgLaoCkCvyEeI+ZGxEQsQQ1FlGI7CneZvTVpF
	KjcfrlFyesFCKquRZK0TmrC6HCnQQ9f3cA+LE8E=
X-Google-Smtp-Source: ACJfBovI/JrCaHJDwanmgxZSyEdfnWmISUvXQwII5WZjmd7CQZi98JS/+VNhSCH7k9j6hMMZ70UklUiTpPYBtetfkZQ=
X-Received: by 10.176.4.117 with SMTP id 108mr3998099uav.160.1513697519516;
	Tue, 19 Dec 2017 07:31:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.153.76 with HTTP; Tue, 19 Dec 2017 07:31:59 -0800 (PST)
In-Reply-To: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Tue, 19 Dec 2017 10:31:59 -0500
Message-ID: <CAMRMzCCkbJ4RQh03_wNoTK20Gg2fKwioC0Jk3DhoJuNq9d3LTg@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Tue, 19 Dec 2017 15:32:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 19, 2017 at 10:23 AM, Sherif Omran
<sherifomran2000@gmail.com> wrote:
> i used core-image-minimal for a raspberry pi 0w. But i get rfkill can not
> open control device. when i give rfkill , i get the syntanx output, this
> means it exists.
> the wifi driver is installed.
>
> What is the rfkill device? is it /dev/rfkill ?
>
Use

rfkill list

to list all devices. Then (for example):

rfkill unblock bluetooth
or
rfkill unblock all

to unblock the bluetooth device or all devices (resp.).

Marc

