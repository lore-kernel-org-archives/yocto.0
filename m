Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89FDBE00DE1; Mon, 15 Jan 2018 07:23:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F4A0E00AF2
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 07:23:31 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id c69so8039874qkg.6
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 07:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uY7Y6iR2HD0LuiqOhVz/yjaqp4dtqFUA//A5oRxDOQQ=;
	b=sLowfBR/rDVC6q24yyGTYYrCcs9Dru50uag0vR00lBI591gosCwHz/imsjahejJxiW
	Le9DaHJ5jeV1iN/AO4KG8R+16cXGphx+DVU5+YYZ5nty5PTSnZLH2OEChWWR3ymCn26r
	4eJfdZjC4bYTWUiShgbutDv66FUMouIlYBaq/0nX8yPzV37eR+s1XeBTx3scUHiIzpoY
	kx1f/ZyLjgDm5O1hvQNxK25WEcOis02YTBoiFxhi4xTiN48ov+dkie6KYi+Akrmc2qqP
	O63910ZV7qAYNZqICnmDl9YaBE8R53vVluw9DMOaf5dO69nOPjL1qsDBu89o2H1y6aZI
	9o5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uY7Y6iR2HD0LuiqOhVz/yjaqp4dtqFUA//A5oRxDOQQ=;
	b=U3MFPiHhEJvgdyUWvihCTd/IVct097/hVlERFAgT5jnM8T5DfQy81OXq2OMVy253xX
	gGJD1ZbRRpvD24lROYuy8QnQsb6840DVmyzJ6E46v6+JE8wzCyUvTlzeJx1aySBjtaAr
	WNbVaG3KmPNPn4ygEHi657N82p65+7OwKmRKPmCimrnvcRv+kM0F4uxAYHJJc6gkA4nv
	si1JAUwpZS4PDOHfcrWvN+d9RP90JqCX4o4xNUHFrE5OCQx5GRucX5/rjH++sIxDM9yi
	v0Nc8518OBxFYPz0+6kMfWXlY3iExw+cgIFTzPVThP5XgisFmZiL8zCcREfjS7u06nKK
	iEow==
X-Gm-Message-State: AKwxyte/5yXGQPMEkFZcG4zkHnPUKXvOhS8bLRfGijnlZb9YyW4e5Xjo
	/uiIQ340WZue0+NRfhnFSrxeQyAuZ4WETRJRi1gpBNyj
X-Google-Smtp-Source: ACJfBovShQoo7CiK5WCkVtoMXBNBmNfO2/sTRvV1WRAw9Itlf0eg4WYBv4YoFybKTzv0e0RsU+Xjo8Wf1iTGxFHV7a4=
X-Received: by 10.55.103.18 with SMTP id b18mr9599457qkc.56.1516029810909;
	Mon, 15 Jan 2018 07:23:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.214.82 with HTTP; Mon, 15 Jan 2018 07:23:00 -0800 (PST)
In-Reply-To: <5843f4b7-ecc9-4195-42a4-e7ea69bd2e2e@intel.com>
References: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
	<C0207330DF60C5409302EC78C3FE68F34B0AAD@PGSMSX105.gar.corp.intel.com>
	<CA+NJmkdJnEUdxrUZDTrE-nDWrNsVweovs-VTuxkxwUL2wCc5hQ@mail.gmail.com>
	<5843f4b7-ecc9-4195-42a4-e7ea69bd2e2e@intel.com>
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Mon, 15 Jan 2018 18:53:00 +0330
Message-ID: <CA+NJmkdA+14=K9iMWHa-sOhZ-KxJG9i64zLcbYYhszczQtK=Og@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: conf/machine/<machine.conf> in my custom layer doesn't get parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 15:23:32 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Anuj,

On Mon, Jan 15, 2018 at 5:47 PM, Anuj Mittal <anuj.mittal@intel.com> wrote:
> I hope that this machine name, colibri-imx6, isn't being used in some
> other included layer as well ...
>
> meta-freescale-3rdparty/conf/machine/colibri-imx6.conf? Can you try
> changing the name?
>

You are a lifesaver. Bitbake was picking "colibri-imx6.conf" from
"meta-freescale-3rdparty" and ignored my conf.
I thought conf files can be overridden but apparently just one
machine-specific conf can be provided.

Thanks Anjug.


Here is more info if someone had the same problem:

I reordered the included layers in BBLAYERS variable defined in
conf/bblayers.conf so that my layer be at the top of the list:

BBLAYERS ?= " \
  ${BSPDIR}/meta-mylayer \
  ${BSPDIR}/meta \
  ${BSPDIR}/meta-poky \
  ${BSPDIR}/meta-openembedded/meta-oe \
  ${BSPDIR}/meta-openembedded/meta-python \
  ${BSPDIR}/meta-openembedded/meta-networking \
  ${BSPDIR}/meta-openembedded/meta-webserver \
  ${BSPDIR}/meta-freescale \
  ${BSPDIR}/meta-freescale-3rdparty \
"

Apparently the assigned priority for layers is only considered for
*.bb/*.bbappend files and does not have any effect for conf files.

Placing my layer at the first layer causes bitbake to pick up it's
config in very early stage and ignore other machine specific files.


As I wasn't sure whether other config files are dependent on MACHINE
value and applying any configuration based on machine type
colibri-imx6, I decided to keep "colibri-imx6" the same for now.


Bests,
Isaac

