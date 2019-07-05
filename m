Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56BB3E00B1A; Fri,  5 Jul 2019 05:16:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B291E00920
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 05:16:43 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id i10so18611337iol.13
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 05:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=W/8MfpZnlKs4lMuFTIrrAcgP2uUP/ToAH7cFkpgmXrs=;
	b=k7rEupiBvOv8LIAe+evTakD+lfmZvpBN1ysVrfxZeTq94Vk9CzVO1212iJjZSOix0K
	aZwySxVilrmY6pMus+bzdlox3zLomBgj8CDvdk6Jm8qHhICc3rBO3ERGt2geSMaxhXYr
	H21lG4N+XyicThznPkoeCDqyUGNhfqFabtoYyu8cmjrEGoasCaKWgNvkm4cDutyBzS0G
	yLW+DgvP2dWSF/4FEBqfofCNnBF3VCLOU57eJrcGPZglgeqKT6MOgCbwwagySFYbQHXZ
	yt3fz0GGVmsKxyNEGNxBCitlCGkNtwWEmoNvW+ia+tab+v/wyQQUTaWkQUUIlROTmH4Q
	NOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=W/8MfpZnlKs4lMuFTIrrAcgP2uUP/ToAH7cFkpgmXrs=;
	b=oy281ah2JrvBBKj1iJJAubI5CX3uo62GyU7duja8RGA80VW9Y/5ElCm8KBdxqLYp6/
	MO3nFBLwEMY/co1s3JwdDauaGTMFQilExxOzeEGvHnoNRwh/etIWEDohuKBRKstP57XA
	U6kOUiMcyoLsrhYnm2z6Rd8elFX6UWAvg3B74OEiBlhOX4P/IdcUQ4ck1YZD1D3GE3b4
	u/C92jkBLsM6hFspFfucQ8cNRzBQbY22l0cUBR/brBr6kMdTZc0jydHrBoq8QgoN/Nwy
	i3UWqqP2JaiFwpwRRyVSjfIb92Jrz67dNd7FZFIzvVQHBPyZctc73VeHFVC0QU4bVHhe
	iqJQ==
X-Gm-Message-State: APjAAAUjk/yZ9sRhYbiWtRHl0JCDPsnYVSfY3Z1kBLJBwttI0mwRJPWO
	TKMtViD9S9coW4DAyVR5s13aIoCbaqFOwizorb7kON74
X-Google-Smtp-Source: APXvYqye1R+rKdx50JIa9fqx/3EDvrpCjanHCRGKbP4i/9i593ZG/8Xx02DyueLdNKWRMVQzwuqV7tko+AUEg0zY67g=
X-Received: by 2002:a02:1441:: with SMTP id 62mr4305347jag.21.1562329003411;
	Fri, 05 Jul 2019 05:16:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Fri, 5 Jul 2019 05:16:43 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 5 Jul 2019 22:16:43 +1000
Message-ID: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to extrac rootfs.wic in Ubuntu?
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
X-List-Received-Date: Fri, 05 Jul 2019 12:16:45 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I know I can use dd to write wic to a device such as a SD card, but I
need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine.
Is it possible? How can I do it.

Thank you.

- jupiter

