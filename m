Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A362E0096A; Tue, 21 Jul 2015 08:26:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEBC6E00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:26:12 -0700 (PDT)
Received: by iehx8 with SMTP id x8so65121711ieh.3
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=icz0YHhNyH6pV13wJDKUmHlyADH7BXLzxh6sXdrhKfg=;
	b=tov1g6WAh0y9wmn3hU1ZtfF4a/MLutuRqNPY8YduVVh4BrnW8neyZqb9pHmSriNWXo
	bNUZ3RkzIKmHgBBwSsKUVeozf+Ov4ppTHcEnyW6rhE6+AHeqKwlV3/vWTBT3CKIsbtBB
	sY4yC7pgG/bKMaf//YLR6uNDaAohFUVqSjTlYQM8Kde0ase++rukmSuakDyqOvZNllIi
	reCQCoE7F0I4aM19cXhCau0WAJcglMoA+KVdzO5zR6o2HAf5lEXcYOeXzPh7knrPYdp/
	54LBEwbASSaEr5I2/vHbDHKiwr17n5X8jV2jYBUCsvDc9CmmKPs2oM5+/q45pzJM7IIq
	xqZw==
MIME-Version: 1.0
X-Received: by 10.107.41.146 with SMTP id p140mr46957260iop.58.1437492372466; 
	Tue, 21 Jul 2015 08:26:12 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 21 Jul 2015 08:26:12 -0700 (PDT)
Date: Tue, 21 Jul 2015 10:26:12 -0500
Message-ID: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Question about IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Tue, 21 Jul 2015 15:26:16 -0000
Content-Type: text/plain; charset=UTF-8

Hi team

I have a question , according to documentation there is a difference between

IMAGE_INSTALL_append

and

CORE_IMAGE_EXTRA_INSTALL

Specifies the list of packages to be added to the image. You should
only set this variable in the local.conf configuration file found in
the Build Directory.

When I use the second one and try to build a core-image-minimal-xfce
bitbake does not install what I wanted in my image . I had a really
hard time few weekends ago because of this.

I wonder If I am missing something or if this is a bug

Best Regards

Victor Rodriguez

