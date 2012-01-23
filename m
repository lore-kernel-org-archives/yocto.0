Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 613DBE0030B
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 11:40:17 -0800 (PST)
Received: by bkat8 with SMTP id t8so630928bka.35
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 11:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Dnqz/imQE/gH2VhmuzHMqdZfXIkfm0wBdBTItkU6Ies=;
	b=L95Yl+Q7oFQTGdTt8lE55URfgppvzfRbKAAg8AXB5TSztsWrvTJuX0scOviio3ZNGm
	n2e43gRK8lVNY9jZFzoq5aqhs7jahwEJpj58V6UH9JoQnF/P9UIvKPnX0wFTCAtHt6DW
	fsj4y7ir3kE+t2rGdQoRtDswvMh4/Iv97G5Oc=
MIME-Version: 1.0
Received: by 10.204.157.130 with SMTP id b2mr3833574bkx.22.1327347616117; Mon,
	23 Jan 2012 11:40:16 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Mon, 23 Jan 2012 11:40:15 -0800 (PST)
In-Reply-To: <4F1CDA14.70403@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<CAFZh4h9ka391e+wGasrwHTivP4ivOaqtiqwt1va3Lhh5OE7Luw@mail.gmail.com>
	<4F1CDA14.70403@windriver.com>
Date: Mon, 23 Jan 2012 14:40:15 -0500
Message-ID: <CAFZh4h-BDs5AFfyWNCWKZi+nMTDH_sH0bOFsa9=XyZzieO5C9Q@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jan 2012 19:40:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Jan 22, 2012 at 10:55 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> The beagle board would be building on the branch listed in the
> meta-yocto layer.
>
> KMACHINE_beagleboard = "yocto/standard/beagleboard"
>
> Everything that you've done is fine, but pushing your changes to
> master will ensure that they aren't checked out and built.

Ah, you nailed it!  Once I pushed my changes to
yocto/standard/beagleboard, the build system picked up my changes.
That is the step I hosed up.  It is working now that I corrected that!

Thanks again!

Brian

