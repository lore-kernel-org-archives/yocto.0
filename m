Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F29BE00C84; Wed,  8 Nov 2017 06:23:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF4EAE009CB
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 06:23:47 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id t139so11189636wmt.1
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 06:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=drJPQhFZhaMUbSiYNenyk0TeX2SIZQhR/mU6smwgz6s=;
	b=runKwG0hAemzNg6buRtntHU9rLMU35/0Zgx9wGds3tOYUcmQebNphJp1kPlOBWUphF
	sBGFYnpFC7s1aQV1jS7115sEaGGEbILyuRglvzlQTP4/+3NOS+eA1kJJ/UjvQosejjpW
	lFptIcmOJwfb/f2lqKrFDNP1KxgoPfIp4Wdk/sLP7Hl5/7GgUq3B+gDIMK/otiAY4wmT
	bWLKlR6NV4Ip1BwvswwYD7+QX4S7Iz7vZ3xy+Tz1i6H0oW0gZg6XTZ0c5CF4s339AjAg
	O79bNBWwsXJQ9DUK0sLCJPs0BYz3AZu9IGdc7ClHXzS6oWtha4nZ2dZTbcKW8kAfXhRI
	I2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=drJPQhFZhaMUbSiYNenyk0TeX2SIZQhR/mU6smwgz6s=;
	b=quFoHZEwVKSHASh+Ke86qkI8WLgEjD87NWOJVUutOg9yDMHpRHmiTLkuk05j8X/Gp/
	R6DKItsDFcQWwZ4gzNx9+lhLRZlq2TGqXfJYoy6thRqFccnYaFrnEKbvLKmGnHJP48FH
	MQlZZEy9s8P9zA9O+iw6MRnEu5aoOnC/kjEzIxiDWhriBuia7SC/DgIlmuqBuC5qVHd1
	9+Cx88BzO3Yds8cws1nxOBLvJ5MSisiMUc7ikzkMuDAL8aN5AHcIOxHBH+oZBPV6Lz6/
	NMlGnFJp980q/EmiEmEFDBU5xpJs8iwF3a4Qg1GonTlLFVFpXWeGBwisFuOEhsQw2mCW
	Vc2w==
X-Gm-Message-State: AJaThX4rxVkJpxw4tLXqB+dWr2ZUofiICYTW+1kEh8TchBUGT5h333md
	vMeXzcmoLjrWKsIiikvnd334vaKk/EOVMlz0HhQmsA==
X-Google-Smtp-Source: ABhQp+SxsdI5jlCAWg5MVnEFIWJwFAZU1Vu1iqig8zdcKd7B93SfldEAF2MrCEgSGgL7/4t5HjvY/I+oeIfMpjqeOaI=
X-Received: by 10.80.221.71 with SMTP id u7mr922540edk.86.1510151026285; Wed,
	08 Nov 2017 06:23:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.137.18 with HTTP; Wed, 8 Nov 2017 06:23:45 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Wed, 8 Nov 2017 16:23:45 +0200
Message-ID: <CAJ2oMhK+0FO-scN_YeKEmTUPtT+3NNGr-HCmUDLyQ-j-VQ3F8A@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: 32-bit sdk (/opt/poky) in 64 bit machine
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
X-List-Received-Date: Wed, 08 Nov 2017 14:23:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

Is it possible to use 32-bit sdk (/opt/poky) in 64 bit machine ?

Regards,
Ran

