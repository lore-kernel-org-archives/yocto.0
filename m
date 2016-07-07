Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9664E00C40; Thu,  7 Jul 2016 02:59:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 319D1E00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 02:59:31 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id h129so7942663lfh.1
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 02:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=7FZDzb35hEG6WDCmI2nOCYowSaJgJ1gtSGAyrSllyn4=;
	b=O37EKqPkOGhFMQwHlOkaYMrSkfQJuAvScunQ9wgrVOgjSiiTNpqzrK0a4WqGMabUMh
	oW0ppBsHIy0/HBQUcbsKU2cD+GzYagBYgXBzXY8L/joxI+TGXB+5f9L2kfZPjquOacZP
	g1FMWyYCMZ8Qas6RceGU5lXj6I2ManJpppaI4Lva+FvpvCdZAdV1ZlrzzSUrl/guLvYY
	nqoTfUukYEPrbF9HpKq9NaRC2k0KfYkMPQ3883FmZinHOs3OFyR8KOo7xaH5haelHYyU
	NnLa4Bwl9u47J83ZrNVzQr+Cq8QLoCbdoEyblgqO5HgZplyLdPqLEbuGLi+HeIMfsCGb
	m+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7FZDzb35hEG6WDCmI2nOCYowSaJgJ1gtSGAyrSllyn4=;
	b=P/QmPCCbIIYzmyIJghbykA7tNqQk0yaAMnNK9D9vpsAJSOdB2Nah4C/9D7OiMxQNbF
	Nw1QV3iYZNqsD9Y+ocFJYtj1GPUlpUNhh+TzES85CaIKjISq4iewya4J183QQqGajj8/
	4Rq3qCKVui8TI2voBzedqRKB2XmUK9LiCDJUL7n+UW9Lp5kgOSWbExe/A6QpSv4tGCw1
	iJxlL0asmKWKUUUdBMJkg4vl1L1MFOXyux+v3G75l9qXgGHSOd9ngwDX8GuyxMTx40Ec
	uofxnPX7V/f06ogIq7uAAzfKvYfvTZ34rU17OKuZFZLQhU+h1GuwV3Gjyvrg3EThpOxa
	+meQ==
X-Gm-Message-State: ALyK8tKfnkgUNK6SpnXdYiLkQ57hQvG7WRXyS19gOdrkPASP8IFJrtke87WmGvJcu4jU2Tj/1XPVAUVjkG8/iA==
X-Received: by 10.25.39.78 with SMTP id n75mr8332521lfn.91.1467885569401; Thu,
	07 Jul 2016 02:59:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.21.101 with HTTP; Thu, 7 Jul 2016 02:59:28 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 7 Jul 2016 11:59:28 +0200
Message-ID: <CAFq4t4hb=aXarn8c13Vf-d=04Vz_MJBDKwFE+F32o6iQ7W8i3A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: USB cam device
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
X-List-Received-Date: Thu, 07 Jul 2016 09:59:32 -0000
Content-Type: text/plain; charset=UTF-8

Dears,

I want to have my USB cam device to start numbering from /dev/video5
and not to assign an usual device (vide0) to the usb camera via UVC
driver

What  should I modify to change it out of default?

Thanks.

