Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55E3CE00D1B; Wed, 27 Mar 2019 21:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF94EE006D8
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 21:36:27 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id u2so12905395lfd.4
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 21:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nzGumh56vUvUm9wInSmVFrwQPvEleYgxZjkHth3KPrQ=;
	b=jGJyDEI0x86PXSvyhMB9CWJ1A7Svc+loi6dxcvhf1gEX8LaO3xp9Kt71c+iDhiFwmR
	sIXzZjb4W+LqeAxJtB+/8z/6JdHY1LQO9YAgQwa4PxJZsaiYGKLxfddzduWcUYPydEbn
	rViv1ADoRDFjkIxt+pKG+WFCUHSBaGBb25MVRbmFCNtp4Vjupl+vS+Vm9nmxfqrL7THn
	tIdCxuOmWHmdpxy/qWjXN6kY7qXus7MUl1tCGDOZVu56ciFbL5SIPFh2wTRD0B51251n
	ghhr8u332W+4l+ldJPcoFlrZqYgsHlQNU3Gor5nmWpYpodRMglmP+VJCSNecWUFKvdMt
	HhNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nzGumh56vUvUm9wInSmVFrwQPvEleYgxZjkHth3KPrQ=;
	b=ppUTXb48R0l2K4lvZT/8eUt+Stgg0O7lkavdvCMeL+kPht3UbU9AnfNeZid3DvQ4Rc
	SpZZfEckDZLtJnmANFWI2aHpeCW6Q3SbxJgsHsESWdyO4NH3rL2gXd9PZ6OQjDijndiO
	ioxLwZm+Iu83zO9UhbJogMXRPYHSVtiepC9tmiWdoDnQFVblvM92J9zz1r9XKOGLar54
	Yg/7izAt4wj2ma16wfojYaARS4a1JcLUFfTy7SWHah1JySKeTDeuvi/OazfKKBpCVToV
	UhljNmJzeLDpWsKDaq8PevEW6KUQ11AES/FN7cMoJ0qz3OlWrcOiK1ZuexprZN/nSnm3
	fsAg==
X-Gm-Message-State: APjAAAUL3cbmmeUWPnxFYP7FUNPehS02rPY13sg1tP5h6IYjE6rvXFjo
	lGGf1uoGwgwH+KJr6WRyViiFU1kyQH6hXyiFU8Y=
X-Google-Smtp-Source: APXvYqwD21CuNZqBfNwI/4ZeEf9m6+fd5IpIleOMUSZLV1/EK33SnskWkKmbDbr1PI06dPBEzfjrZt/P/GZmtCKsoeU=
X-Received: by 2002:a19:5201:: with SMTP id m1mr223977lfb.68.1553747786708;
	Wed, 27 Mar 2019 21:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
	<e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
	<CAAmVmroW=-u6NMC5DnEo8UY50bNooqfd7aR_UTk=p-a_OBF6Zw@mail.gmail.com>
In-Reply-To: <CAAmVmroW=-u6NMC5DnEo8UY50bNooqfd7aR_UTk=p-a_OBF6Zw@mail.gmail.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Thu, 28 Mar 2019 06:36:12 +0200
Message-ID: <CAAmVmroRz2Edu76-tBued3_JjJjiweJHCrDL9RsMB+6sb=+m8A@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK build fails at latest thud
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
X-List-Received-Date: Thu, 28 Mar 2019 04:36:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 18, 2019 at 7:21 AM Teemu K <maillinglists18@gmail.com> wrote:
>
> On Fri, Mar 15, 2019 at 2:17 AM akuster <akuster@mvista.com> wrote:
> >
> >
> >
> > On 3/13/19 9:50 PM, Teemu K wrote:
> >
> > Hi,
> >
> > I noticed that when trying to build sdk on thud it fails on latest
> > version. Actually it broke somewhere between commits:
> >
> > 1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
> > 7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
> >
> > I'm using it with meta-freescale - layer to build image to iMX8.
> >
> > I'm using command 'populate_sdk' and it works fine on older version,
> > but newer version it fails with error:
> >
> > Can you provide the steps to reproduce?
> bitbake my-image-name -c populate_sdk
>
> >
> > ==
> > The following packages have unmet dependencies:
> >  target-sdk-provides-dummy : Conflicts: coreutils
> > E: Unable to correct problems, you have held broken packages.
> >
> >
> > There is a change sitting in stable/thud-next:
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&id=af5cf78b275ab5226354337d25d8dc1c41a08904
> >
> > which might be related. Can you try that branch?
> >
> > git://git.yoctoproject.org/poky-contrib  stable/thud-next
> That did not solve the problem. I have coreutils in my image and it
> kept conflicting. When I removed coreutils from my image it solved
> that problem, but there were some problems with perl etc. From the
> working version all those are missing from
> target-sdk-provices-dummy.bb and my original image works just fine.
I see that thud-branch has gotten even more 'fixes' for this sdk thing
in last week, but the actual problem still stays. If image-recipe uses
coreutils - recipe sdk build fails there because
target-sdk-provides-dummy.bb has it listed. And if I remove that then
it fails on next package.In my case it's bash-dev.

Does those changes need something different how sdk is build or how to
build sdk with those changes? I'm not sure why they are listed there
in the first place if it overrides the actual package and does not
provide 'dummy' if/when needed.

To create sdk I use this command: bitbake <image-recipe> -c populate_sdk

-Teemu

