Return-Path: <twoerner@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C73E0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 18:03:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadp15 with SMTP id p15so1511469dad.35
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 18:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NhCfRrA07i3JrrTjdwJYVryR4fmckbZcPnHLy55YJbU=;
	b=A2JM1dlVg6NYLID/Olr7/UE4VcLXLpHEaZf8mG0hqKqsbK02pkrRdUiRGYx9l3xAXl
	BRi+jQ0N38zlPACnyM9RUU5pu3Jk0K/H0wJzGV04HaJaNruv7vq73pxOtR0TxQP1TMSn
	DN/Swn7d/GAxm1Hxjz7bNen/dekrNn/i6ixes=
MIME-Version: 1.0
Received: by 10.68.33.42 with SMTP id o10mr9922264pbi.52.1322791415242; Thu,
	01 Dec 2011 18:03:35 -0800 (PST)
Received: by 10.68.25.4 with HTTP; Thu, 1 Dec 2011 18:03:35 -0800 (PST)
In-Reply-To: <20111202013554.GA10127@sakrah.homelinux.org>
References: <CAHUNapSdefCpWo1DwBz3K0k=OX8WwXQH0tJDrAp42a+vAmagzw@mail.gmail.com>
	<20111202013554.GA10127@sakrah.homelinux.org>
Date: Thu, 1 Dec 2011 21:03:35 -0500
Message-ID: <CAHUNapQzxYm68LJ08WZ-KswaX6yz9Ncd3sQOno9hbFLt9DQx0g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: raj.khem@gmail.com, yocto@yoctoproject.org
Subject: Re: override SITEINFO_BITS?
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
X-List-Received-Date: Fri, 02 Dec 2011 02:03:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 1, 2011 at 8:35 PM, Khem Raj <raj.khem@gmail.com> wrote:
> so whats NO32LIBS set to in your local.conf ?

Ah, thanks. That's what I needed.

