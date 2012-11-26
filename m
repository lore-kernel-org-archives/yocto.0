Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4223E0045D
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 08:52:28 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id h2so12864800oag.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 08:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JlKYUxYAqX0glCBJcoVmFJTJDzHkWx8Nb8msoclMgjg=;
	b=XcbpWB5BwXn5MJuGfi5+RYZ9MLO05Wqq7dyUB60HpqCTNrYJioJoIImDzm2pP0Us9w
	3XeoDqNxBUkrEa4O1dOH5hWbLgyLWC6wFHMO1ks93Qkfhaupz0vle+L3fOLwgPQI1hiY
	6bDggENT8v4W26Rl0Np+gSvSfwncWoJW+3T/1qRgqtdc6jIwJY77Ip5lt6k+51o2Emhj
	0v66EJv6DQrVMRus90x5Q0bvHNxOOJZX999QfhOJv7yYxFjuEN4/X40GpXoCdor7jLBz
	F3qqVnhc4SAX5mvWwn6cM31gZfMMz7rtunTVDT13kLQcvTUeZdbqI2NAK8QQGA5XVQE/
	6Y7w==
MIME-Version: 1.0
Received: by 10.60.26.38 with SMTP id i6mr9643282oeg.23.1353948747945; Mon, 26
	Nov 2012 08:52:27 -0800 (PST)
Received: by 10.76.167.165 with HTTP; Mon, 26 Nov 2012 08:52:27 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1211211443060.4010@oneiric>
References: <alpine.DEB.2.02.1211211443060.4010@oneiric>
Date: Mon, 26 Nov 2012 11:52:27 -0500
Message-ID: <CAMAb8ZNU4sTV24ZdTQtmntf3TNn_1rJryi=39k6mqoLbUgOajQ@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: my wiki page for using OE and meta-ti layer to build for panda ES
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
X-List-Received-Date: Mon, 26 Nov 2012 16:52:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Love it! Any chance you could add an 'Advanced' or 'Next Steps'
section that shows how to go beyond a minimal build? Like, how to get
a working Qt stack into a custom image on the PandaBoard?

On Wed, Nov 21, 2012 at 2:44 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   not strictly related to yocto but i figured some folks might be
> interested in a recipe for using OE and the meta-ti layer to build a
> bootable system for a panda ES:
>
> http://www.crashcourse.ca/wiki/index.php/OE-Core%2C_meta-ti_and_the_PandaBoard_ES
>
>   feedback welcome.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

