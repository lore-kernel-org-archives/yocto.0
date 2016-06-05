Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8104E00D7C; Sun,  5 Jun 2016 13:08:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE2BE00D4C
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 13:08:53 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id i65so3139046ith.3
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 13:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=H10MO9+T08UHg6w6xuf+Nf+fo5ubRwSJ1FQN5mGyQZs=;
	b=J8E+n/bNdbFIkLeSYMDN0rxoj6o+pFwIKU6I9OlS+TeLRkhJj0hHYgNNsclBwnmVo5
	RSIiZAWMqhaWZN9i5nh7EKLdN/4LpEy+qFKnkDhO54BdXOHj6QrJJ9yZ8LEWAk4MgTIS
	dphXpwUQZenGfgW/YNMBwOBp004L0NRYPTJpDPBEZfvbO24U4wubhUb6XFWjUZgK96LG
	nrBuDPg3i3RMV18E7438y0I6KPDOj+1RSyiEsyz2WwI4JbXgIk5T7gMeqlmVuuChLhJ8
	8cCIvPSOUspddbtiQHEW4Iv2IC2jsk1M5wj3hsLyi+9n64NL2z6JNIZlbMfIMVw7VMku
	xIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=H10MO9+T08UHg6w6xuf+Nf+fo5ubRwSJ1FQN5mGyQZs=;
	b=X7arrXtf9RzXHJfIoJbkXCn4pq33vPLQITTCf9asWbL3YhsebpRunDXU1BoQYwerhB
	3jO3e/t607iCTGYcIlZ+l2L4FxJXHxorzBoVTOeeY9U1RBnJGImM8ZVgh6uvE9Lm7ILh
	ioTZKgmiqreH38J0k7L/FTH1yJuz/MnzcHsgGUzD34iVKTqIdKKoYSCTzJnZBMBhY6qr
	2tMrXW6a5BR+5jKD+ybQWfVc+TbN49XiU8r2WqHa8hFxioDaGhwko7udu6HFqFJanIHQ
	XTHaDVoQcTC58HqSJ3dXfIWUwNVV/CP3feGiz/DFZC/j45FrqnOza7tQu1Ccp8hPsqAN
	1uHg==
X-Gm-Message-State: ALyK8tKqm9+Dz7wmbukka6PnXBGcA30cCc9b0sg+hG/82Iybb1Jrge6woQL7kuMJE9rFsw==
X-Received: by 10.36.11.84 with SMTP id 81mr11871943itd.89.1465157332621;
	Sun, 05 Jun 2016 13:08:52 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	k20sm5502141iok.14.2016.06.05.13.08.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 05 Jun 2016 13:08:51 -0700 (PDT)
Date: Sun, 5 Jun 2016 16:08:54 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160605200854.GA14930@openSUSE-i7.site>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
	<013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
	<20160605125800.GA5652@openSUSE-i7.site>
	<013801d1bf3a$5bb10030$13130090$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <013801d1bf3a$5bb10030$13130090$@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 20:08:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2016-06-05 @ 04:55:47 PM, Herve Jourdain wrote:
> It seems like you are building the 4.1.21 kernel.
> Did you set PREFERRED_VERSION_linux-raspberrypi = "4.4.%" in your
> distro.conf or local.conf?

I was trying to save myself the time required to rebuild with the 4.4 kernel.
I knew from my experiments that the result was the same for both, but here it
is anyway:

	ERROR: linux-raspberrypi-1_4.4.9+gitAUTOINC+3b440738b5-r0 do_rpiboot_mkimage: Function failed: do_rpiboot_mkimage
	Log data follows:
	| DEBUG: Executing shell function do_rpiboot_mkimage
	| Usage: mkknlimg [--dtok] [--283x] <vmlinux|zImage|bzImage> <outfile>
	| WARNING: /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/run.do_rpiboot_mkimage.18615:1 exit 1 from '/z/layerindex-master/raspi2/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}'
	| ERROR: Function failed: do_rpiboot_mkimage (log file is located at /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/log.do_rpiboot_mkimage.18615)

