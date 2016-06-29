Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A81AE009CA; Wed, 29 Jun 2016 07:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ADE7E0088C
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 07:43:44 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id j3so68967700vkb.0
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 07:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EYh7cpdlP5SLuXzdEY3oOudZ0ojhTBqWoiHHcHBmMm0=;
	b=Tjo2X1uAeRUJMJktKAXbmawO9s+9N1DCJdVVEUbWgiqECswmxcAhyvRyUtkrI75gxG
	G1cUsYXtxl6cstxaB8Drd7YSQuoF6k8rCi3z/gwfrU4IKYDYO2KKn0G0m5zZY3D+0yCk
	GK/yf5mq7EiVfQwwPqBDxKxtCgDK9DVaybY2wPZ9uouBoHL7c2/y+BgEKEnJ4syDkOgO
	AB27Krqt06zkDO6DAihL6hpFgcAIHYmeHwg80rpSNmzMC0Qv9NwanNNgHl4W2Z+bPVHQ
	aXoUK1RPipKA2bmVetxSJ43kVcoJchliQg7gtd9CjdTH3ESCH3BCUj/a42waeWGc/VmV
	INyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EYh7cpdlP5SLuXzdEY3oOudZ0ojhTBqWoiHHcHBmMm0=;
	b=ArtLQCuLSYFeEOz+POMMJ+g83Rany4P7Sn61GrDuTSSVbkMLuckfEhbV0la+7eYKPs
	4RgaIh4aXoiPXCkrVZ/Zlk7EFWKpkoAdxYP535PhRUx+PHGawS9l3QBL1vnCeN/Wc9XE
	4pKg5fui+eO8yH7rgJx/i9TgjyFAkRVjGbUn1cCCgrkIAqpvi0UOSAOmgX+Y1TdLaHRx
	hRvfV0KxFZnouW6rxtkMQOk/WUext75KG+RE9IH6AwRhTQV/9Qz+l2Ry/TnvZId8i9Td
	JP+H4Hq+bVrex7m3TNlFKL/hcPGZf41yiGhO0WEhCLEAvffbHzpDnzXPo5Q++1++OE6D
	F0kw==
X-Gm-Message-State: ALyK8tImETONJqGZ+NidErw5lhTFxLjgFFUjeRTuuQR5t5DiuG9zULZraOYGshm/NmO4CLYK0qTQ96o/DlXSZA==
X-Received: by 10.159.33.175 with SMTP id 44mr4009222uac.142.1467211424315;
	Wed, 29 Jun 2016 07:43:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 29 Jun 2016 07:43:43 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 29 Jun 2016 11:43:43 -0300
Message-ID: <CAF3SDA4bvG87u7GGfw5A3+xaSZ-OSKX+HZ1+1ckzm536CfdQcA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Installing python scripts at image
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
X-List-Received-Date: Wed, 29 Jun 2016 14:43:48 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I have a recipe that relies on distutils.bbclass. This one should
install some scripts to ${bindir}, at last this is what I'm expecting
to achieve. I want the scripts to be runnable directly by command line
for convenience. Example: example-script.py args...

For this reason I put "#!/usn/bin/python" in the first line of this
scripts. The problem
is that I got an error message saying that "no package provides /usr/bin/pyhton"

It seems that Yocto inspect the first line of scripts to grab this
dependency but fails to map /usr/bin/python to python-core (which is
already installed). How to make this work right?!


Sources:
https://gist.github.com/gkos/ccc7d19da328893246ca4ba7acc3b40f

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

