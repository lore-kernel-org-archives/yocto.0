Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C23E002A8
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:00:23 -0700 (PDT)
Received: by qabg27 with SMTP id g27so3243947qab.14
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 06:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=gtjPJdTu2S6z/3j9AtudBQMRYZfzLi47mURhnMIhIdQ=;
	b=isRGx6PicfCnrCbORCDFV6RUxSoMVY3sBRQi1rfTRxlxSRKSt+FEv45Ao/A6u4rQup
	Fo3YXSHZngqfMgRZ9yVsI6MCt0hri0a6f0VY3m0KUKEWNlJK0gfZJv1Dei7E8dk4DaOc
	cbZwtl6GqUk01kUQGCz2JQGaKA0vDHS9n0MLJsRXL80uvOs6drUDJ9kZAGwm2Q0eciMQ
	eGG62Jdk9XrIaYQ5zCm+ATz/feRVLV06JNyHqfscLuycDErZhHLDasyHObfTYBVmwrYu
	rhH85fDESCYhWJjVXdlMjs9LjPmeM0fBTleqwvn+9QOYnV4Gwqvhp6JQVvZehYPZqmPR
	z35g==
Received: by 10.224.101.73 with SMTP id b9mr58681297qao.42.1342011623044;
	Wed, 11 Jul 2012 06:00:23 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id cg7sm3136990qab.19.2012.07.11.06.00.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Jul 2012 06:00:22 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 11 Jul 2012 09:00:21 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: "Murugayah\, Kanapathy" <kanapathy.murugayah@intel.com>
References: <DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876@PGSMSX101.gar.corp.intel.com>
Date: Wed, 11 Jul 2012 09:00:21 -0400
In-Reply-To: <DF15BBD5E5DF5B4CA9E6CE4A20BC420A2252C876@PGSMSX101.gar.corp.intel.com>
	(Kanapathy Murugayah's message of "Wed, 11 Jul 2012 08:05:09 +0000")
Message-ID: <874npexxju.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: Unable to start X on Yocto 1.2
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
X-List-Received-Date: Wed, 11 Jul 2012 13:00:24 -0000
Content-Type: text/plain

"Murugayah, Kanapathy" <kanapathy.murugayah@intel.com> writes:

> Hi I am having some issues with Yocto 1.2 on Crownbay. 
>
> After building an image (core-image-sato) with crownbay bsp + emgd, it
> fails to startx. 
>
Your problem is surely related to this:
[1442948.073] (II) LoadModule: "emgd"
[1442948.075] (WW) Warning, couldn't open module emgd
[1442948.075] (II) UnloadModule: "emgd"
[1442948.075] (EE) Failed to load module "emgd" (module does not exist,
0)

Looks like the module is absent from your image. Check that you
correctly selected "crownbay" and not "crownbay-noemgd" in your
local.conf.

Marc

