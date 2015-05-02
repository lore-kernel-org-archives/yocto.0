Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 564F5E00930; Sat,  2 May 2015 12:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D749CE004F6
	for <yocto@yoctoproject.org>; Sat,  2 May 2015 12:08:01 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so122628271pab.3
	for <yocto@yoctoproject.org>; Sat, 02 May 2015 12:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=scadDsuwfFDuec6DgqBW9w99MPUifMLOUuLHFyXjiP0=;
	b=shSEpArLBkvzqDXqPIoYFhiIN/asTwaAkRamPvtjjkIHgFe6nMPi+WwAr21Yo3eYUc
	0LPc698JroaIyqzKDxd6n6GE5NE/sPo1Inx2ZewoEo0uC8oaLFLJ2ylcmSD8lN2NqUAy
	hQ5Y3Muf/b4RgN2nKewGtZgnbgV0rDUasVZPMarPiKZ96M2ISlDETZhaiuEFEvXj7ZvN
	E7BPjP0YvdGEcYE/pwqqaz5q4SDTmnYOD0jAr1dXwO0ppM32khE28PdSM/w73vacC2B6
	pHPG2BiJQZ1TiJIpn+7odvh6TEhuOWRP0uKkPc3DeAlMR0mSo4GO/8Z1V1ssc0DoONxj
	tvTA==
X-Received: by 10.70.100.168 with SMTP id ez8mr19226757pdb.129.1430593680940; 
	Sat, 02 May 2015 12:08:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.134.227 with HTTP; Sat, 2 May 2015 12:07:30 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Sat, 2 May 2015 15:07:30 -0400
Message-ID: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Sat, 02 May 2015 19:08:02 -0000
Content-Type: text/plain; charset=UTF-8

Rather than inventing this from scratch yet again, I would like to ask
what the Yocto-ish best practice is for deploying an embedded system
that has to support in-place upgrades.

It seems to me that this should be a fairly common scenario:
I have (or, rather am in the process of developing yet another) an
embedded application that will be running on a device whose power
supply is uncertain at best.  Consequently, I want to run from a
read-only squashfs rootfs, with some small amount of seldom changed
configuration data (most likely stored in a JFFS partition).

But I need a strategy to upgrade this system in place.  Since I am
running from a read-only squashfs, I can't apt-get or rpm upgrade
individual packages.  I must redeploy the entire image.

I can divvy up the flash however I want, so I am thinking that I would
like to use u-boot to boot a rescue image from one partition, that
would kexec the deployed image from a different parition.

Are there Yocto recipes, blogs, community experience with this sort of
thing, or should I invent my own solution?

Again, this feel like a common problem that others should have already
solved, and I would rather solve uncommon problems than re-solve
common ones.

--wpd

