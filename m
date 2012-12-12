Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A2EE006C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:48:24 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so502865lah.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mAuLItwTOR8W0lWeTkSdMCSWRy9X33mIIc8GJsM+3tU=;
	b=Sj3KIKTmTUIxEto9yYNGhxm8fvzazfCKIpLLO9Mq1wxP2sg9q4GdRrFNHgscvAATDD
	712yaOIsypyAAd1NIFzmJw7Ks9q3vtMEnXAPfiCpLWYryezflT+aXRwq1ZymBBa6K/I2
	pPgUsi71OIQFYxrfETaITIwr8IRsJdGyB6bT/TVkVVDAnvjlEjeSsb3KAsE4zDs8NLLs
	vQmt/0VfckRorIl2zvNNEfR2sFIS+yrX6MYIpWC6rMFQDshutTiZ0lnUndfy1eJo1/FQ
	G87dzRwgRgQGv94LCGFZhBVUfVl+uWeE7MKWVF3YZDORNBkB0YNP7+8zzKxzQTVDcr7r
	2AUA==
MIME-Version: 1.0
Received: by 10.112.84.168 with SMTP id a8mr310057lbz.75.1355312902559; Wed,
	12 Dec 2012 03:48:22 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Wed, 12 Dec 2012 03:48:22 -0800 (PST)
In-Reply-To: <50C81C46.1010802@intel.com>
References: <1355190925-2727-1-git-send-email-twoerner@gmail.com>
	<50C81C46.1010802@intel.com>
Date: Wed, 12 Dec 2012 06:48:22 -0500
Message-ID: <CAHUNapT+Hv8JtJ1eDMaWObmA6RJ6yetT+3jTmRNoLkGjs_ZZBQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH runqemu] runqemu: add support for FSTYPE=vmdk
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
X-List-Received-Date: Wed, 12 Dec 2012 11:48:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Scott,

Thank you for reviewing my patch.

On Wed, Dec 12, 2012 at 12:55 AM, Scott Garman <scott.a.garman@intel.com> wrote:
> This looks ok without having tested it personally. Could you just add a
> signed-off-by line to the commit?

D'oh! Sorry about that. It has obviously been too long since I last
contributed to a project :-)

