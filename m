Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A9FFE00D17; Thu, 31 Jan 2019 03:53:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DEFE00D15
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 03:53:44 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id f188so2212778wmf.5
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 03:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=from:subject:to:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=9Ag5pt1c5PKpzY+dPiXFOXe+Zw+T/X2lfkaPsaR/pPY=;
	b=M2kMp19o+ml6SIaeNQWWPCK6+38l7rIdy2YIz/f/pX/7isN0mfV8KETqo+yrlCErxT
	KzD2ixLuCyMHa5wlyCkb7HlVzQ1Bu/EBExzAtMkxbkq+NvNL/kMh0iNT0SGV0ANp6Ezs
	2dimtDyrihF68SETvaN7MyHfmaMKTYALiYOrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=9Ag5pt1c5PKpzY+dPiXFOXe+Zw+T/X2lfkaPsaR/pPY=;
	b=V2F0DDT/0lsNcoXnnNnGEo/egMqL3PKzSObmpyLTVHVFxlJrOOYKzr6RMMoZbI4LA5
	FhiysmHCNzAA8Gtg2l02VLC4g5WihRW3DswpcKDNHOf/EcEQce5/kU87Mr6kgVrEMcmv
	Ey24Lqr7PvPrx6tbZgsv3ZgFeGxNuIG0yzf7utAL06iiHjJDs64p5PX3rNlNeZcBnwCQ
	SFRAM9nWGGpUe2ICgoX5iq4M+AhdzCYDt3217t2yy+hCcJjAv8RJ8grXO5YQ2mTP8aiC
	eshnrUt+6jUOS4k0JOyVrxL0ur9L2nFAUxRZt465iunW4AQfwypipX0EXUzSjX4yvOJZ
	H5Jw==
X-Gm-Message-State: AHQUAub72L3AgvgErx3ebMr2MjEsfCc7kUFBVxI77do9sxNHq35vUbUO
	F+l2g50OIHUucV+67mvLOEOrKWPrYqU=
X-Google-Smtp-Source: AHgI3IYP0vzp/v8VJZKrb0EW92soYijj54nWvYLjdx2NwLQAjcHjHaw0JLYmTURLiwceawPIJh7T+Q==
X-Received: by 2002:a1c:c64e:: with SMTP id w75mr3456131wmf.46.1548935623505; 
	Thu, 31 Jan 2019 03:53:43 -0800 (PST)
Received: from [192.168.182.73] (arennes-655-1-21-76.w109-218.abo.wanadoo.fr.
	[109.218.100.76]) by smtp.gmail.com with ESMTPSA id
	f10sm2369257wmb.35.2019.01.31.03.53.42
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 31 Jan 2019 03:53:42 -0800 (PST)
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <a3bf6461-6024-b418-5c2b-101a3d964eec@fridu.net>
Date: Thu, 31 Jan 2019 12:53:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
Subject: How to create a signed bootloader and Linux kernel on a UEFI BIOS
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
X-List-Received-Date: Thu, 31 Jan 2019 11:53:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

Hello,

Securing the full boot chain on a UEFI BIOS such as those provided on
Intel platforms is possible but not that simple.
Working, detailed documentation is not easy to find anywhere.

Some of my students from Lorient (University of South Brittany) have
done a good documentation job on
a HowTo create and boot a signed kernel and Grub2 on a UEFI BIOS.

As it could be useful to some of you, I share the link.
   https://ubs_csse.gitlab.io/secu_os/tutorials/linux_secure_boot.html

Thanks to Romain Brenaget, Jerôme Blanchard and Pierre Fontaine from the
Master1 in Embedded Cyber Security.

fontaine.e1800982@etud.univ-ubs.fr
brenaget.e1803332@etud.univ-ubs.fr
blanchard.e1804130@etud.univ-ubs.fr

-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


