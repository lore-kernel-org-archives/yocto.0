Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C43EAE010A1; Mon,  1 Aug 2016 05:56:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC55E00E5D
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 05:56:43 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id u134so171318419ywg.3
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 05:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=MG/aNjnUq+TiBlWv4Es+zWCxfPo3QgN3Plbe4f0m2bo=;
	b=ZnK9R/zU4iMhWSI28Ge5VuPWc9VG0xM/YJpMxzFIvNL0L1sdvVDsmtxsUEfiH4GgSp
	odLPXdXK0iJzGGvvO43WLyz4Pc95gQiwRjBCeta6r0QPLm7JyisTTd5rEgBq8KWmR4Wb
	CgSkqdPDlznKcjhBAAkR7L4bNFun+bpZmRXqzNNuAwOYeyWFUAttod8KCqti+6HW2DK+
	MRDIBD/WVQ2Dd+ZyfNo9hYvjKyS7Von/+KhYfj0htWa7Kem+G1d3gcpj0BnSR9Al+ccB
	uTFlI2aNXIlrg4BM7BiiDVGNHEoSNjOLEuAHYjMRrXyW8ODfMeLRIF1JX4m/h8BMXFDn
	dFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MG/aNjnUq+TiBlWv4Es+zWCxfPo3QgN3Plbe4f0m2bo=;
	b=hRZGfg6/HY3vJn6dI9lPEZD7UCEW88zeMNikW5sLeFHAqX3AsEeMiqzpbEW0gY8pL2
	POM73bff1m2pYpDMC7yhLBV2sjUQCU9qOq+MTvvmoQj/F0uACBwrRBt6YubTxFPdzcz5
	ze7AyU5GrVQ+IwQvWCMhWhQQ1a8vLmOueQ5RThgVGfx9OOePHExeHi3hF0JAg6WaL8WJ
	t+/eL9jBVqpH0VsxVP9Rb1Mg89PWJ3+YcxJ615/Q3sjc14yV9sG4UyD3eJ3t6O+GCo66
	MMKPFwCVWCN5UjnKfBBAOgt45oJQ42ubpTjghkDldoRWZYPxM1aJA7W00wlKmahTY21V
	18BQ==
X-Gm-Message-State: AEkooutZhKEZ85WsyoC1ClG+JLWdDS/mfO2L0vZyv3y654jt9R562pnWEQ9mxMv4543+7LKuPHEe7r3q7cUqeA==
X-Received: by 10.37.4.207 with SMTP id 198mr11183546ybe.80.1470056202780;
	Mon, 01 Aug 2016 05:56:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.130.134 with HTTP; Mon, 1 Aug 2016 05:56:42 -0700 (PDT)
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Mon, 1 Aug 2016 08:56:42 -0400
Message-ID: <CAFZh4h8HyfyfzX8m_jZWzUuOEJ4dnndxHjH67s9urxQVM5PKrw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto 1.8.1 - Insert USB VFAT thumb drive results in "Volume was not properly unmounted. Some data may be corrupt. Please run fsck"
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
X-List-Received-Date: Mon, 01 Aug 2016 12:56:46 -0000
Content-Type: text/plain; charset=UTF-8

If the USB drive is cold plugged (inserted before power on) it mounts
fine, it is only a hotplug that results in the message "Volume was not
properly unmounted. Some data may be corrupt. Please run fsck"

The drive is mounted under /run/media/sdb1 but a listing of the
directory just shows strange characters for the file names.

Installed dosfstools on target and running fsck.vfat doesn't report a
problem.  Inserting the exact same USB drive in a Ubuntu 14.04 box
works fine so it isn't the USB drive.

Found this thread talking about the problem I'm seeing (link below)
and a bug report that sounds similar to what I'm seeing but I never
really saw what the issue is and it says it's been fixed in Yocto
1.8.3 but I don't see a Yocto 1.8.3 release ... only Yocto 1.8.2.

https://lists.yoctoproject.org/pipermail/yocto/2015-September/026563.html

https://bugzilla.yoctoproject.org/show_bug.cgi?id=9652/

When I run the mount command it says the USB drive is mounted as:

type vfat (rw,relatime,gid=6,fmask=0007,dmask=0007,allow_utime=0020,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)

I'm running a 4.4.1 kernel built outside of Yocto on a TI 816x SoC.

Anyone have any information on what the issue may be?  I've played
around with my kernel .config thinking it was something there but that
didn't make any difference.  Kinda stumped at the moment.

Regards,

Brian

