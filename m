Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEEA5E00B33; Thu, 18 Jul 2019 14:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8DCE00A96
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 14:26:45 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id d15so21674454qkl.4
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 14:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Z3g1MnclEzpcCtn9kcOZQQPIrjStj2R9tVUlLBKOAoU=;
	b=m5C/KeSnDITICbD6j/vqEJeT9/zK5+h/Ll7bBfZMKE+eOzfYUFEldpzwr9OOHjACDg
	XnpWyAM19unhHwTtpSQQLk/CmjVfHEivSffZciWw9Ev8ZBK0I4IdS/FO4sWLQuViYgSj
	uAPi8sMe7H99QIDhsQxQff4HZg926qzO6ni+7N0mW8Avo8LSUzBDu5ijC8jFEvVMYYBM
	5Ntl8MI3/ZmRQKunitrs6yLU0crMswqX+Pb1xaM92L0kYqlLLkmksebzYWGEB7P9UfzA
	McH3AFBtaRt1vWq/VBksaixI3eYNd4ZdAV9ZlTJ1KdaJ+9+NRHIWAVZf8lulqiog+wTP
	0Kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Z3g1MnclEzpcCtn9kcOZQQPIrjStj2R9tVUlLBKOAoU=;
	b=JbLXf/XfSD/bw/K39u7f86Y+Xjj2kY1xhcR8JM/lVWTWJY7i7dV7Xo1obBzt79kZc0
	cJTxrVsl2Qudaui/wHqO2sz72PlDj6CTt61NQxr22vhQ2y6bYdJ8ElAii4vCraGH30ek
	fS4jcpg+wGhPpBU2PmcrKTsktLvSranpWKeHAXqqMcTl1muSd7V+6Gysa1T7bwSYi8Fo
	U9vhUN5l5DPVlYdmzmKxv11TSDFcrpa1Q7ikMEvhv5k+bTSpnRHu/5e0Ab1yBuyRddGo
	HpF8CEoLtZeXUfsZ+JWt8o9U1ITGX9cCgjXCXTs1BY26X2j86juifmXVzwaTSe4QxRS6
	TMHQ==
X-Gm-Message-State: APjAAAWXdFxUyX1shBlV6ARBp8PjEcTTMSxSTBlW+3oZ/JpDF1DxmUJQ
	yBZLFOzZaz4wgj9ePK8pgSDHeTbjS8ooMuWMn1bZIbHo
X-Google-Smtp-Source: APXvYqynza2MMwMHy87WgeljslMrXKZck/gOWyozTFA+E73KLTqKwxPmQzTZ7IeGJYQ8jLfV/BybJFOJu6WphUWZbfg=
X-Received: by 2002:a37:4b46:: with SMTP id y67mr32140383qka.66.1563485204922; 
	Thu, 18 Jul 2019 14:26:44 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 18 Jul 2019 17:26:19 -0400
Message-ID: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to specify a different kernel for an image
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
X-List-Received-Date: Thu, 18 Jul 2019 21:26:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hello All,
I have a situation where I need to build an image for my machine with
a different kernel than is specified by
PREFERRED_PROVIDER_virtual/kernel.  But I also need to build the
default kernel.  This is for a "manufacturing" image which will
include the full production image, and then some (and, possibly,
without some).  The kernel configuration needs to be different for the
manufacturing image.

What is the recommended mechanism to override the value of
PREFERRED_PROVIDE_virtual/kernel in my manufacturing-image.bb recipe?

--wpd

