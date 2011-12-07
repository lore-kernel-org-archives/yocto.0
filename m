Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D0DE006AF
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 05:52:47 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so396013qcs.35
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2011 05:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=bOkIfm3OlNOUwWyNRiC5+r5ixo7UMZunBsHs5xYKBuc=;
	b=YZXksfgi7EVRk237MkelDfBMfcS+fYS6DuC46fEZlqApu3ttye6znbKASUcf7dKrue
	9K+rDWE/ClEsyxjEK9t5KBSLxroKwRedj/d+l29TBM7A4iURPc2k7Yx2J+7FAxkl/5RF
	KEeWCrNcb0H3M3BbCH/nPJLe7axaOavDsCPQE=
Received: by 10.229.49.143 with SMTP id v15mr2536682qcf.220.1323265966841;
	Wed, 07 Dec 2011 05:52:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.73.200 with HTTP; Wed, 7 Dec 2011 05:52:25 -0800 (PST)
In-Reply-To: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 7 Dec 2011 06:52:25 -0700
Message-ID: <CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
To: =?UTF-8?Q?David_Nystr=C3=B6m?= <David.Nystrom@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 13:52:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 7, 2011 at 6:44 AM, David Nystr=C3=B6m <David.Nystrom@enea.com>=
 wrote:
> I'm trying to create a setup for qemuppc.
>
> Goals:
> core-image-minimal + virtual/kernel.
> core-image-minimal + virtual/kernel with modified .config for debug flavo=
ured kernel.
>
> Problems:
> PREFERRED_PROVIDER seems to be restricted to local.conf, distro and machi=
ne.


This is incorrect. It can be anywhere in the configuration metadata.
bitbake.conf includes a variety of config files, not just
distro/machine. Read that to see other existing files which get
included. Further, you could create a .conf/.inc which you include
from your machine .conf, if your goal is just to avoid duplication.
--=20
Christopher Larson
clarson at kergoth dot com
Senior Software Engineer, Mentor Graphics

