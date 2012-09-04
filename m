Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1645DE01490
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 12:27:27 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so11643632pbb.35
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2012 12:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=MZVQEHETuU0LCs69UJTMT29TG8Hp/lel+JQCMQ7buoU=;
	b=l5fzh/9V7zgGm3FtL9/qTM0LdBlj65o4glX9PSHyWQlUds7JqWcSz4/k2CWH2Kisok
	hKKkGnAE2NsgE0UwiP1UDf8qZyTjFJrS30+BJzpz+aer7hIyKf4LL89ElbBUcU0mWJvf
	mNtT8PhPfm82zZnfR827qZsSsxal0iuQmiNjXu4D5lPJua79BQ/8og/xvnV6qq1vQL4t
	3kPFgo4+XPhUf/z5XDjyIOrug8bc/sQULTISb4dcr7pue5B2W98WRWsktn9WurLSAz7M
	EYe4WX837hUQyQEBSw7sfQOpf0oajEPWK+wWT+gjrbVW/tD+3WhVWN8Hw6ANfjXrEdgp
	si6g==
MIME-Version: 1.0
Received: by 10.66.83.234 with SMTP id t10mr43312914pay.39.1346786842302; Tue,
	04 Sep 2012 12:27:22 -0700 (PDT)
Received: by 10.68.191.105 with HTTP; Tue, 4 Sep 2012 12:27:22 -0700 (PDT)
In-Reply-To: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
References: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
Date: Tue, 4 Sep 2012 15:27:22 -0400
Message-ID: <CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Create a .bb for my aplication
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
X-List-Received-Date: Tue, 04 Sep 2012 19:27:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 4, 2012 at 1:14 PM, Raul Rosetto Munoz <munoz0raul@gmail.com> w=
rote:
> Hello,
> I have some files that compose my application, and I want to put this fil=
es
> in the "/home/prjs" folder, I know That I need to install the prjs folder
> and the other files in this folder.
>
> What I dont know first, How to create a .bb file!

I am not sure what you mean. Do you mean that if you create a .bb
file, how to include it in your image?

>
> And another question.
>
> I saw that if I do some things like this:
>
> install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/fstab
>
> I will copy the file fstab in /etc/ folder.
>
> How I can know that {sysconfdir} correspond to /etc/ folder?

these are in poky/meta/conf/bitbake.conf

> And If it is correct how to know for what /home/ folder correspond {???}.

If they do not exist in bitbake.conf, you should use a local variable
in your recipe or local.conf.

> plz Can some one try to tell me???
>
> Thanks For All Help!
>
> --
> Raul Rosetto Mu=F1oz
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

