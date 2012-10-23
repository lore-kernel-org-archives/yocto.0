Return-Path: <marc.ferland@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C75EE00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:41:38 -0700 (PDT)
Received: by mail-ia0-f176.google.com with SMTP id h11so3756098iae.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=sRQbm/P3Qg0ouS4igNZidKqMK0Fi5t40j9MT1l562mw=;
	b=Xpyr+R5rS4xLOXsAvSfHhA+wcfXd9jUN2DlsUPNx0+IZceLM1bi8VH6M8HUUTlMElT
	THi31gORj/xEYQbQRnUqrwtp/nvOIYJ/LrwvLlcQxtex/tvArUpqOSXSE1dV4zXkIW4/
	/ydBT/cF34042SJfUmdheP6lmZWu24AqPHfI7eLKWnXRoM9ev2DE6ryqsdUwXm9xYLqx
	TRSEjSkGir8tJhmKoEwfSM1Vh4ZsRqmb6CXCB737XJVpe6/iE6PZCQVoQfMyQjnsMT/V
	rIWkEJNrE7tF0m0eExD7xKrYZSPq7GnIHyH4EKvbt2wevgDla6V+urV4nTzkK8LJq+zn
	wYiQ==
Received: by 10.50.209.71 with SMTP id mk7mr177714igc.34.1351021297836;
	Tue, 23 Oct 2012 12:41:37 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id rd10sm157208igb.1.2012.10.23.12.41.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 12:41:36 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 23 Oct 2012 15:41:50 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
	<DDDB9E6645DE24488B8485B41A051F471D96912E@Mercury.usurf.usu.edu>
Date: Tue, 23 Oct 2012 15:41:50 -0400
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D96912E@Mercury.usurf.usu.edu>
	(Jonathan Haws's message of "Tue, 23 Oct 2012 19:34:29 +0000")
Message-ID: <87vce1x9fl.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unreadable menuconfig
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
X-List-Received-Date: Tue, 23 Oct 2012 19:41:38 -0000
Content-Type: text/plain

Jonathan Haws <Jonathan.Haws@sdl.usu.edu> writes:

> When I run 'bitbake linux-yocto -c menuconfig' I was not getting a
> menuconfig - I had to tell my local.conf to use screen because auto
> was selecting a gnome terminal which would resize itself to something
> too small and menuconfig would exit with an error.
>
> Now I can get menuconfig and make changes, but it is extremely
> difficult to read.  I have attached a screenshot of what I am talking
> about.
>
> Can anyone point me in the right direction on how to fix this?  I
> would like to use the correct commands so that I don't mess anything
> up.  Right now I have resorted to running menuconfig down in my build
> directory where the .config file is stored with the kernel source.
>
> Thoughts?
>
Try:

OE_TERMINAL = "xterm"

in your local.conf

Marc

