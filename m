Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0DB7E00D25; Fri,  5 Apr 2019 16:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35295E00D15
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 16:42:51 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id v13so6631408ljk.4
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 16:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Eq+FXIdR1sE19GLJVLNz71Wb7+WgVWXgBgfnbkcGnw8=;
	b=Chp8CR2/yr8P9Fhty3xd6m9ljboJChBRNhYJVFAYlmScbjpOB1Hf8rxZ4ixuc6QEfA
	Kbc6ODtkuatoAVq7hYlCL4a2yRF1By4DVLvyOuRZAFRCe0E0Uh545lGxG51zb2IfN137
	ZQfyWidmvFLaT2vGpS/Inn1Kn4oqk+pldY55097/2LKy2ip/MKkV0Z1aAYLWbqFlMVWk
	TVdsX3qLGXi/elB/eyDggmw5kVUIeP5xBepBPOLx41ZympOGDWxJvnHT8RUWvqNLOm5O
	FQtFVi8kNtjMD2sc9VQeemro6om0x096OcW+MwpLjulmzDSzUkvt5eazskuPlMneRJZ/
	0ubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Eq+FXIdR1sE19GLJVLNz71Wb7+WgVWXgBgfnbkcGnw8=;
	b=lv2WfbMCVBs29mK4Nb0ams28+SLV5eGmDKx2umPfA7A+rxzuzPIrLJPj3+rFFwyIQG
	CcKNNsdMCiaPSRUfDr+Eld/jtv/YZrIqN0Afqv1cxYs8BegwQa9uX5ApyEY9pNdE4XIg
	x5QaymwEp7OtVF3faAWxjafYol2SbhAV9L0VZA/xEn4ws64He6HHKH1rqIbGkKqDbl0n
	uze+Q+96gR8ESZWTSUWSf7zHrq4so0eG0LpqTwUj1hycwd6XCKwc/d1zfLAga6MdZyYy
	myq0fnCltfoCDtZ4atNXr5xnObQpiWdqpOFTMjBojxs87zYab3IW5462iFt16I7DmEbS
	D4rg==
X-Gm-Message-State: APjAAAU6OGSFjGk+Uihn7kQvhIj9gT9K7f/N1mY3mpAJGlxNjTqgxYvT
	bYpyTLjB2x0rln+Vamm4BXRWAxRq/BWfpKW6OmA=
X-Google-Smtp-Source: APXvYqwCWyIk3VqyJtaYGpDzOtd6GNDV1MDNVSQUQzF3E/G9QKgZY0BwkZQk+P5mkv163l/5gEj+ETHBwonw+FX6xqw=
X-Received: by 2002:a2e:8888:: with SMTP id k8mr8482073lji.43.1554507770045;
	Fri, 05 Apr 2019 16:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <cfd56541-43c4-5128-3d41-cddc356a3cb8@gmail.com>
In-Reply-To: <cfd56541-43c4-5128-3d41-cddc356a3cb8@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 5 Apr 2019 19:42:39 -0400
Message-ID: <CADkTA4MT3JctYMTFjLZXtJYgaxj6HG=G_nAAe+w0A-JRGXRFxw@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Worries kernels supported
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
X-List-Received-Date: Fri, 05 Apr 2019 23:42:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 4, 2019 at 5:28 PM akuster808 <akuster808@gmail.com> wrote:
>
> Hello,
>
> I noticed there are 3 kernels in Warrior. 4.18, 4.19 an 5.0. Do we
> really need 4.18?
> I see its the default version for poky-tiny. 4.18 is EOL but maintained
> by Windriver.

4.18 needed to be around through M3 to backstop some layers and references
that were being updated.

I may delete it as part of M4, but really, since I kept it through M3, I may not
churn it in M4.  I handle all the support load on the linux-yocto
reference kernels,
so it shouldn't cause any one harm one way or the other.

I keep a very close eye on the versions, so nothing is around by chance or
by mistake .. and best to just copy me on the email, since I can
easily miss them
in the noise.

Bruce

>
> regards,
> Armin
>
>
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

