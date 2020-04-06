Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1940.1586203129775511512
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 12:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrtrNMjX;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DA07E01976; Mon,  6 Apr 2020 12:58:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F410E01972
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2020 12:58:47 -0700 (PDT)
Received: by mail-qv1-f51.google.com with SMTP id c28so638460qvb.10
        for <yocto@yoctoproject.org>; Mon, 06 Apr 2020 12:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=c170JtqC9BGabJDdWdpJeEoT25jW5SB0OYJH3tvK4c8=;
        b=mrtrNMjXqCWQayekydxmtfasCf/CdClRLibdju/jbBGe1UGX4xkI3tSSHyc/PcixQp
         vobcd9eECr7/chLBfHB40CvF/u9C8UoFm02+fdRoiywY35bgHzxqdXfgrVtxRzxyGeRl
         SomLHtPyH+0YqmbVrOUuIxFjOuS6GOKBsChWeuGbXNTdrWMxMmumz8ioa6ixKAK/RDVu
         ZM8MTOenN9rXMR7MSWQiaBLDdV/3F2MYalOq+lNwzSa8EzWcHKr+ZVv7wuUFc9EMN/Qu
         dYmS5/69W5CTM4ybUbdlCiPuaXPaUrDC2DqpH/aPZIGdL7ZpQjm4K4988h/KHqxEuYVJ
         Z80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=c170JtqC9BGabJDdWdpJeEoT25jW5SB0OYJH3tvK4c8=;
        b=H0JD/SgYg386EXz61CrpI7liAInoRT5SDp7EBYhNfete0n99TvnEYAV74HTC3hbiXe
         6MDB4bGw+Y37sE/rK8nqzYcvBZ1Z+sNwuZySKtZq+d7EVZiiFw6MWC1YehydypNng8my
         rbbsLVOC3gRyBHlW/5WY+fuuPPuv2WUbUMiv1Y/u871x1ExzuN0wYya3ZoOT4zV7QjjL
         LzFOINwILq4he+c+17bD3E4nvJPoSRegDDFi7dFr2XP+DwMo8uCMgJ13pXSEQtzdGKKB
         6J1C8gMFY4aiXnX92E2GYMfCpc3MiFEgbKrkjg0eIusi77HGPe6somPwzvtBZKkMLWX+
         FlcQ==
X-Gm-Message-State: AGi0PuZSzZUyoPZ6EOmgB+byi34sECSzWDLwPpr8NkoqOQTEpUrEfMyj
	ZJ8YmcgysXpwFAWFIzKo0tOttNfkmt+QpWcIRMOEWxR5
X-Google-Smtp-Source: APiQypIhQt2Szugeu+NAVAWB8e7VSyebj4bymgOR5P3jmt/hHAxWvMRxOoO4nE6SqlAqo+OOtn+x7hUqatAuoTIFYGI=
X-Received: by 2002:a0c:b78e:: with SMTP id l14mr1585271qve.4.1586203127036;
 Mon, 06 Apr 2020 12:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJAyFxfDD-QLwRmnMO6-DUvyyDffjEeXBu=cZ5HVej30vA@mail.gmail.com>
In-Reply-To: <CAF_dkJAyFxfDD-QLwRmnMO6-DUvyyDffjEeXBu=cZ5HVej30vA@mail.gmail.com>
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Mon, 6 Apr 2020 15:58:20 -0400
Message-ID: <CAF_dkJDUdord4i1A3=-C-E46C1-HtBFXAAGsuFYbdCguZLi+Lg@mail.gmail.com>
Subject: Re: Removing URL escapes from a Bitbake variable
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 6, 2020 at 3:34 PM Patrick Doyle <wpdster@gmail.com> wrote:
>
> I have a recipe that looks something like this (I'm simplifying a bit here):
>
> SRC_URI += "${EXTERNAL_URL}"
>
> do_compile() {
>   do -something -with $(basename ${EXTERNAL_URL} .ext)
> }
>
> where EXTERNAL_URL is supplied in the environment when invoking
> Bitbake (and is whitelisted in the environment).
>
> The problem is, if that URL has HTTP escapes in it, they get decoded
> by the fetcher, and the file in ${WORKDIR} no longer looks like
> $(basename ${EXTERNAL_URL}).

Never mind.  I found it.  I did something like:

EXTERNAL_FILE="${@bb.fetch.decodeurl(d.getVar('EXTERNAL_URL',True))[2]}"
do_compile() {
  do -something-with $(basename ${EXTERNAL_URL})
}

I would still be happy to learn of a better way to have done this.

--wpd
