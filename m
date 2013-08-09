Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40898E00404
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 10:49:28 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id wc20so6816345obb.0
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2013 10:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=UujLHiWa8sq5qZVzNFKLv4pGV3Pc6gFDtXYiWyG3wT8=;
	b=e/bWoaQfka8wYEQGf5oUaFkyhAA5rNA1Bnl0r1Y8+/RgcJwzoSrhkJ6/G/3JC3Je4t
	N4YdgeETUuZiBPNUhE/3q3of8jflsISorEYax73MMP0GsHcTjzKFuxkvUQVM+LiTo5WQ
	LnhoyNJ7ATkXNR0DLK7QamngM9ZxrxxSj18oRGQKDHwVTo4bqAtSSpMu5l7JDo1ytswn
	NzNV5ySuDHr7QziVunA0zRlgQFpmuc6KKaqBbZ6A/BjxH9f41b23sQ4DpLuKFopmD9jG
	PdgqHTld9swnqqXYlii9QZ6X79d69RJrXhN4pfrsPQww9QsHexEh05E3fZYffd6i8Mbi
	vJcw==
MIME-Version: 1.0
X-Received: by 10.182.225.134 with SMTP id rk6mr1417259obc.40.1376070567826;
	Fri, 09 Aug 2013 10:49:27 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.182.232.166 with HTTP; Fri, 9 Aug 2013 10:49:27 -0700 (PDT)
In-Reply-To: <1375711257-18041-1-git-send-email-otavio@ossystems.com.br>
References: <1375711257-18041-1-git-send-email-otavio@ossystems.com.br>
Date: Fri, 9 Aug 2013 14:49:27 -0300
X-Google-Sender-Auth: oFVAIdR79fjJSCnJknlEikjXjLI
Message-ID: <CAP9ODKpjs-4X0ctJfqYB95t=xPg9sn+LA-_HrpzPqO98viFLnQ@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: yocto <yocto@yoctoproject.org>
Cc: Evan Kotara <evan.kotara@freescale.com>,
	Lauren Post <lauren.post@freescale.com>,
	Otavio Salvador <otavio@ossystems.com.br>,
	Daiane Angolini <daiane.angolini@freescale.com>
Subject: Re: [PATCH] poky.conf: Don't force the addition of extra DISTRO_FEATURES
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
X-List-Received-Date: Fri, 09 Aug 2013 17:49:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 5, 2013 at 11:00 AM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> The DISTRO_FEATURES shouldn't unconditionally append items to it. This
> makes it impossible to override it inside of local.conf or in a distro
> based on Poky.
>
> This moved the definition to poky.conf and created a new variable
> (POKY_DEFAULT_DISTRO_FEATURES) which easy overriding of this, for Poky
> based distros.
>
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>

Saul,

Did you queued this one? Is there any feedback about this patch?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://projetos.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

