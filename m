Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6607EE00507; Mon, 23 Jun 2014 08:57:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 078E3E0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 08:57:12 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id sa20so6350944veb.38
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 08:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=TjbFwwUmIWdeakA1SWTpFb4Uf9TLOiFhtIg/CIXef34=;
	b=jwrSKVLHbpVn8aLIFVRK1Rp6tPxF0jyNONiRZQrqag3t3ZMnHJxcB6+YUuAycaCqg7
	z2SBrnKUdzoJvFwMga/KjaEE9AIRu9TKgnoCokfzw+fnkIgD6AjdIQOKlVLET/fXSV0j
	9iKJ0YNP6wx27xrkUTDuhVsqDAqrJ+CjcyOWA1kcV/oT/nvp7jQe2botv9GSm1DQTZr9
	DGiHQW8eNNXv9MHQJNbxrYeQ68jraHG1YuBP6x2JiVCiz0H6PUi5AIk7pD/gD9ifLsps
	Zap1BdPX1YWndCO/jQX04EFfGzoOAnPszwfEdaaCaiayLFHlTSXw9LExFxE1AgEef73a
	Bwhg==
X-Received: by 10.52.53.36 with SMTP id y4mr1419826vdo.56.1403539032551; Mon,
	23 Jun 2014 08:57:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Mon, 23 Jun 2014 08:56:42 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 23 Jun 2014 11:56:42 -0400
Message-ID: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: What is the simplest, or better yet, canonical way to add a shell script to core-image-minimal?
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
X-List-Received-Date: Mon, 23 Jun 2014 15:57:16 -0000
Content-Type: text/plain; charset=UTF-8

Should I create a core-image-minimal.bbappend file with a SRC_URI
pointing to my script and a do_install rule to install it?

Is there a better way?

--wpd

