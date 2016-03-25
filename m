Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDD85E00AD8; Thu, 24 Mar 2016 17:34:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E58F9E009D7
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 17:34:22 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id ig19so3985422igb.1
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 17:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=wmNBH9VYMJV5/nmqC7P/cRIeEci8OrLUWkkGloHyI3Q=;
	b=ZJnTD4rVHtNl6a3n/L/f1wiciuEcJ02Nk4bfV0pWUSDDgb3DsHDn7IwnAUc21xzbuu
	agBC+XUZWU16wn2tUbJRXEf4x5O9tdpYq57EjkosBrICaW7N+SqG6UTHvqLAH2Uqzq8p
	poa2oCXbA//Y7MzPR+P9tMbCQ12FQIXpgDXUQAZP+xroSMg1dH1Xe9Z26yx/ckxuFTHs
	t+5SecZre9tI7FbLf+T65Hg7E/ztl7HEIQPhVgXMhXu5jpRkLG+fSX0aDLw6QJ84ZktB
	sPI2LFKbUWgGMs7NyhNGybV45jOdjBw8QsmqtJzTMRAmgL8Q3JNLujpSGq4TynFGY7y4
	l2XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=wmNBH9VYMJV5/nmqC7P/cRIeEci8OrLUWkkGloHyI3Q=;
	b=kQh6asQk2OX5fKEIxRQeUn9GMZgT008A+Xa9SX6yAym2T+35N94tysde1i2yt02e7Z
	ewTMvOtt85DfLpit2xE3TJOpuX2+VqVEuioDaYwYC6t3mNnGf+pQOAoL3GDfQYkfVzmA
	HeJBfreElfC9/aCkTuKpJtoKcDxxfGi3JIK7uv1Fptim1+o4DLbqg3VHoQ2bhsZCIZPr
	5LMJJK++3OG/j/OAhqAWbEX2NgMw1E+pSl3an3V4q4VylKoV1z+IbD0SYbaWidU7jlv2
	u95r7XMky51ADvB0jvJCCXs1st3C5o/f9PV1ShfmX5XwQzwqdbyT3vZXfU+F1T0Y1GBY
	R04Q==
X-Gm-Message-State: AD7BkJITn5twR3QjPxxxEQ6v9Emd3eeLFGLTpTB3yPu9SIW0/srka46VwbuVHC9NQGcN0wHnhX7FswiOOL9Gpg==
MIME-Version: 1.0
X-Received: by 10.50.25.228 with SMTP id f4mr33169875igg.21.1458866061762;
	Thu, 24 Mar 2016 17:34:21 -0700 (PDT)
Received: by 10.36.69.12 with HTTP; Thu, 24 Mar 2016 17:34:21 -0700 (PDT)
In-Reply-To: <1457532907-49811-4-git-send-email-theodor@gherzan.ro>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
	<1457532907-49811-4-git-send-email-theodor@gherzan.ro>
Date: Fri, 25 Mar 2016 11:34:21 +1100
Message-ID: <CANwerB3Xp2_vZ320gfiWWEWOuCQzvHVuXgDiPpopFD2AuVT3-w@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Theodor Gherzan <theodor@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/6] linux-firmware: Add brcmfmac43430 firmware
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
X-List-Received-Date: Fri, 25 Mar 2016 00:34:25 -0000
Content-Type: text/plain; charset=UTF-8

Hi Theodor,

On 10 March 2016 at 01:15, Theodor Gherzan <theodor@gherzan.ro> wrote:
> From: Theodor Gherzan <theodor@resin.io>
>
> Signed-off-by: Theodor Gherzan <theodor@resin.io>
> ---
>  .../linux-firmware/LICENSE.broadcom_brcm80211      | 205 +++++++++++++++++++++
>  .../linux-firmware/brcmfmac43430-sdio.bin          | Bin 0 -> 368957 bytes
>  .../linux-firmware/brcmfmac43430-sdio.txt          |  66 +++++++
>  .../linux-firmware/linux-firmware_git.bbappend     |  29 +++
>  4 files changed, 300 insertions(+)
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.txt
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_git.bbappend

I get the following warning when building an image that installs
linux-firmware-ralink package (but not any of the other firmware
packages):
[log_check] WARNING: The license listed Firmware-broadcom_brcm80211
was not in the licenses collected for recipe linux-firmware

It seems the license is not being packaged correctly.

Could you please have a look?

Thanks.

Regards,
Jonathan

