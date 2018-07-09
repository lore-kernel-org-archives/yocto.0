Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7436CE00C77; Mon,  9 Jul 2018 15:15:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4CD1E006B3
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 15:15:18 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id t4-v6so11239042vke.9
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 15:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=M6eqLq+OqAFoHPQoB9i5XFPp4C0+hKnhy1y3c03hlW0=;
	b=p/Fc4NOetW3APUZt+0tk7qVvW59dZ4CxzUhsXrKZrWs06oblQTs1tFFijA+8AVCfb0
	PW81Le73s+35dPC2J1+Gu+0gSwMCYNxo+NC5311rfgMcLdNHI1b6n/j+7YiTY0KtyNR9
	E+oXG2wke+/0Rx2QitavVUnM1sg1/dhCGfhPTVnxCRd/tMBrS4KbPzDYzZoI2/aziNFh
	hO5hhz3dthsq2VLHvswovo+KwQEOzNNwjz+vuNw/p7HpCZ2bhC1tTcfTvDU73yxYZfNg
	iFWp4/JCipUbWLsnirBVMjPHiodv/nir3Wc/o5/rROstyCu7gMNb7juy5mZozQ9F11J4
	JYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=M6eqLq+OqAFoHPQoB9i5XFPp4C0+hKnhy1y3c03hlW0=;
	b=PnzYWtaRIgPlTyB7WKKbYon3m+LC1yJ0cepJ3Gd075eqFQ0Mj96CElaeu68sbKyQFw
	ffH40IC+UqS+7/Aif7SsCyHQ9keOajew0picpCANkgGBCsnVpoRHpcNVqA/8CtA/1NtW
	fSsHOZWDavO9wb/Nc4uBCKFWwGlhsRn9LkYqTSbOwkFj8eqKVlc5510xgeg+lDPEqjw6
	NND35llC3BZRhP7uJyRkd1LsQnqSYZyEXEv+E4xE2yUuH6X17H8FaCEX2BtMs/X6qTq3
	3+nw7xkfSG74m3Kv5Eqxxze/diJDC58DruMEBJzO4XmpKLq5rusSLHTOMOQPN9F43Nz3
	cfkg==
X-Gm-Message-State: AOUpUlFwp+0PmlShtJ/bY9FRAqLotCVlo0n+crJSNohgf2l2dtaqFDb7
	qwIqI4dksAK7sZIoD+GfQ2Blae5eZAxC06T95Vg=
X-Google-Smtp-Source: AAOMgpcGwP6dAU4o7uiD+CXbKJfkSyur0fN82Lxt6VcS4F3Fh/QwNQ0S6kgtahZCQ+343WlNaFzH3P3k9tdVSrLGODs=
X-Received: by 2002:a1f:9704:: with SMTP id
	z4-v6mr4030732vkd.174.1531174518179; 
	Mon, 09 Jul 2018 15:15:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 15:15:17 -0700 (PDT)
In-Reply-To: <CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
	<CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
	<CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 9 Jul 2018 15:15:17 -0700
Message-ID: <CAJ86T=U7SaXgaoPc4sYJf3FeVvAY2rqHEkZ=9Z92nzn3vH2KDQ@mail.gmail.com>
To: Michael Allwright <michael.allwright@ulb.ac.be>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Mon, 09 Jul 2018 22:15:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 9, 2018 at 3:07 PM, Michael Allwright
<michael.allwright@ulb.ac.be> wrote:
> Yes, it ended up in the development package in the do_install_append
> attempt

How did you confirm that (ie that the header ended up in the
module-a-dev package) ?

> , but I couldn't #include it in the second module (file didn't exist
> in the include search paths).

Did you add:

  DEPENDS = "module-a"

to the module-b recipe?

> I would point out though, that I am interested in what is the correct way to
> do this, and not just in finding some workaround / hack so that it works...

That's good to hear.

> On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, <armccurdy@gmail.com> wrote:
>>
>> On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright
>> <michael.allwright@ulb.ac.be> wrote:
>> > Hello,
>> >
>> > I think it would be useful to extend the hello-mod recipe in
>> > meta-skeleton
>> > to demonstrate some slightly more complicated scenarios. For example, I
>> > am
>> > trying to find out how to have two external kernel modules A and B,
>> > where
>> > module B #includes a header file provided by module A.
>> >
>> > I have made module B depend on module A, however, I believe I am still
>> > missing one or two steps in my recipe for module A such that the header
>> > file
>> > is copied into the shared kernel staging directory where module B can
>> > find
>> > it.
>> >
>> > So far I have tried the following:
>> >
>> > FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"
>> >
>> > FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"
>> >
>> > do_install_append () {
>> >    install -d ${D}${includedir}/linux/mfd
>> >    install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h
>> > }
>>
>> And what happened after you tried the above? Did the header not end up
>> in the -dev package for module A? Did the module A recipe not create a
>> -dev package? Something else?
>>
>> > In module B, I want to be able to:
>> >
>> > #include <linux/mfd/module-a.h>
>> >

