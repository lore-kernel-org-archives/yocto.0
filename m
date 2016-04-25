Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D67E00849; Mon, 25 Apr 2016 09:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2865E00756
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 09:58:33 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id b10so23735713oig.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=QTtSvUJ08RtuNdxmEa3B/Bo4PtEDN2U5LMFl5cvhkAQ=;
	b=NWR4ZEsDjOK+buC5EPYU5Bp64zkaDEN1P8baNac7PESzomraxncEDMG2hFvIMgwinI
	Hmspa34nSunUHo1LH4lWVI76Udz0RAVMqetsYCdT6nwtjycozXLVq+Tluk8IyEdbN7bK
	ggldOobu2XZXbMogLZzVjAf3cfyk/JkU4kr7kBleuABl2oEclrm2MtZxB0tgBI+KfiSc
	D9RPds/JCjoo9lURL5k0KZkaka/tr7JXqyxxUZFPt2FUxH6yHuSmqR6mbNe2c3Jx4T3+
	xbswQFF7OMWWtmpAzPhgQAqIi7TjYyvmqM2BU2URgXg4WIrYy2t4Mh/gHIemjf3dqDEB
	X5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=QTtSvUJ08RtuNdxmEa3B/Bo4PtEDN2U5LMFl5cvhkAQ=;
	b=PfuxFdsT+zmj6S9gFXR8YZehnTFP6sjKl1p2yLhSZWwvgdyAS05uDl2WbLTVjO3zoZ
	YqW2UXs/44RqMHWhHYOe+gO+T+XGiclQ02PKf33kROBmuwUDbQvARLyz3EFHpqVlyp4G
	6bsjV8sajxmvAUWLN564R8/lHq/ZWkAsoVtAQ0drXZjJ6Xkksc5c4NsvZQlBTz2WQWdf
	jq+ZsPvtKJCkcWxKwt5u6Mc/e2frzzKZ94o28V1RBEBozDtav78WBWobBJg8SR7jDuY1
	nREBNbTatKENXyBOwpIHwIBkeJf1DHusX9Bm628YWNfzx6JnJ5+Yw1aN5N00DOCeUoJC
	ET9g==
X-Gm-Message-State: AOPr4FU8ngp3hW0xDYGcQctJERk5BmK2JlI7iJFiugNsPodZkBptDbIbIY5RP/qjhMYz6Ku64lHKNjoANJmdAw==
MIME-Version: 1.0
X-Received: by 10.202.66.135 with SMTP id p129mr365224oia.153.1461603513393;
	Mon, 25 Apr 2016 09:58:33 -0700 (PDT)
Received: by 10.202.45.65 with HTTP; Mon, 25 Apr 2016 09:58:33 -0700 (PDT)
Date: Mon, 25 Apr 2016 10:58:33 -0600
Message-ID: <CALRMKQqOC3NMTES88wXzdvjRsu2=qUvJ191wfSxPDEKq8DcfiA@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: More up to date network boot (PXE?) reference
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
X-List-Received-Date: Mon, 25 Apr 2016 16:58:39 -0000
Content-Type: text/plain; charset=UTF-8

My target will need to be loaded over the network - maintaining only a
ram file system.  So, I've been reading up on doing network booting
using PXE or gPXE.  However, the best reference (or the one I'm most
likely to trust) is coming from the Yocto Project Wiki.  Except it is
5.5 years out of date (September 2010).

So, can anyone recommend a more recent reference to consult in trying
to make sure I've got my build (etc.) set up correctly?

Ron Oakes

