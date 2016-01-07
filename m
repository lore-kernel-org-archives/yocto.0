Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF8CCE00CD3; Thu,  7 Jan 2016 07:30:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7BA7E00B63
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 07:30:33 -0800 (PST)
Received: by mail-lf0-f53.google.com with SMTP id y184so334371011lfc.1
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 07:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8OpjGRrhK/SD7j3bLWBnmyQMhikfcefDJa0rRgsdLeg=;
	b=V752C4fco37Jp0flD6iyZs3wtDboOz8qHL8vsw0mIyP2usNuMJ1q4i7FxUisc4HNzO
	ERRVopm6/iRMwnS7pRq73gNWXRn6pWK5WBozvEgtnKpzr80MpWtYfZE1EhDvs0r96v0p
	vxvusYiPgNgvfGdg6gsV6h+CHA4PzRN2idcMM597E75xjgIfYq8nwqYrubiBeU7yLTVe
	LOGS+OHpT1yxRrH8AoAZk4cFywuYqZgqZGjg8UHQ0QsTDGpxyCx9fpW1UWBr80MJ4sAX
	D2KtKG4irWSnIuf8lW5A5RIn7bvi00oesAcXpBGtyJb32YN+nDwldTOOk/F5+ISC20VB
	ONYg==
MIME-Version: 1.0
X-Received: by 10.25.20.32 with SMTP id k32mr17029078lfi.58.1452180632148;
	Thu, 07 Jan 2016 07:30:32 -0800 (PST)
Received: by 10.112.84.172 with HTTP; Thu, 7 Jan 2016 07:30:32 -0800 (PST)
Date: Thu, 7 Jan 2016 16:30:32 +0100
Message-ID: <CAC+thW0JVs2_G3VugV6Z-a-YwBf1cxscGNzeXORDknWp-nk7yw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: images installing other images and artifacts
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
X-List-Received-Date: Thu, 07 Jan 2016 15:30:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi!
I'm building an image for a production system, let's call it
'production-image'. All required artifacts (kernel, dtbs, bootloader
and the image itself) are built by the process as expected and
available in tmp/deploy/images. The production machine is configured
to boot from flash.

As a production tool, I use a variation of the final target, the main
difference being it boots from SD card. The image it boots (i.e.
'flasher-image'), runs a tool for flashing SOMs (the hardware is
modular) with the production artifacts.

It would be nice to have a package installed in flasher-image that
provides all the artifacts required by the flasher tool in order to
flash production-image together with other binaries it needs. Having
such a package available through a package feed would simplify future
upgrades of artifacts on potentially many (and distributed) such
flashing stations. Being that package, say
'production-image-mymachine-artifacts' the same or not as the one
providing the flashing tool should not be the real issue here.

I've being reasoning and doing some trial mostly following a couple
approaches. At first I've considered building the package as a sort of
'side-effect' of building production-image itself but it seems like an
awkward idea since image recipes are not designed to build packages. I
then crafted a separate recipe, which depends on 'production-image'
and that I can use to package artifacts. Before trying to refine this
last approach, currently very rough (it uses hardcoded names for all
the artifacts) but somewhat promising, I stopped by to ask for some
community wisdom.

Does anyone know of any custom layer doing something similar to what
I'm looking for? Do you even think this is something
reasonable/feasible with the current tooling? I don't know of any
other part of the build system, other than the wic utility, that's
designed to use artifacts as inputs for further processing.

In the hope I've been clear enough in explaining my needs. TIA for any
clue or suggestions.

