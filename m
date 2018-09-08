Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E554E00961; Sat,  8 Sep 2018 04:10:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nishantpoorswani[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4AEAE00953
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2018 04:10:40 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id k12-v6so31878655oiw.8
	for <yocto@yoctoproject.org>; Sat, 08 Sep 2018 04:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=My1ZRV/DTYezmiS5kkoyX1/7ZyGSr8RZ16/S5IALzJQ=;
	b=UkxCPBek/7MrIeT9DuFUBLavYD79cy2XBCR00B8H4ngYDHoUe8ssQLptdIU+qqPvQx
	j3aTYs6JivLbhcyyjsvUiRi3Ky2St6fzx7M8UwO35FJmIRrdaNOZzjAtzkvEw6efxZsd
	Px/3Y57dwhf36UCFeCL6zOsJO+a9X5pZSK3yA/M7EVKhLC/sLPDkfljIwaEQEJGFvxHE
	pEyifvBV7iON9mwobtrMf9TfbnRF3gFGJqWhZ2vpAu/dNDNlLvWIsQEvRreuODkuaLYv
	iGs5WoUZoV73OVdlqJe3a5DAlPLTTsDL+w/8xEvgT7jHI5M917wdHqKWPjZVCKf7zZ2p
	nH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=My1ZRV/DTYezmiS5kkoyX1/7ZyGSr8RZ16/S5IALzJQ=;
	b=uQ7n7zvgcRlLpLFyMM0fy1mr0wOXOwo1IKM2zMUGWd6GNVD+urr7FcTKGr7iCO4mgD
	em3R1dqngJb0s79Ps6N2XMAlHx5Dut4TyCz4ue+4QQ4vHBeVjROnAi+OBeB7PrdCh6hc
	TLCx2sDA3+26PDKUvzKBKWYWbEfqb0XdDIfNBmpo2wYMwKk2ZnDb/VeUTB5/hxWBFvWn
	f/YvglK2W/WzxDs8EWty0V7H3OaJxFYZfl8Lt3eOqo5A9Zu6+3q8fVSfj5QMnrValwDF
	nmIFX1CqY350EmLEw4W5BNv2dkoZQOxopPSJJhtjLKcDAOlNziK5w6RfeZ9gckPDEDTS
	oyJw==
X-Gm-Message-State: APzg51CGBuKcpqPxluOIXAnmv2aHhmbibzezaFdLWr0aMEuMgoesslcT
	HPBP+8BWzisF+7owFL8kDw/EKha0/QrNhCgi4qNfbv+h
X-Google-Smtp-Source: ANB0VdZk/mCBLt8xgUZZa2LFy3gY5PsoCxMO2hdzgVioW0ulBuYimO2Scb+AvKj5AUvGXSyPwLNa3WgHAZyH0BlmOok=
X-Received: by 2002:aca:90d:: with SMTP id
	13-v6mr11418099oij.300.1536405039643; 
	Sat, 08 Sep 2018 04:10:39 -0700 (PDT)
MIME-Version: 1.0
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Sat, 8 Sep 2018 16:40:27 +0530
Message-ID: <CAN70yQUExSm-quA2YL=Q-vde-LJBSGM3hp_ZXMPgHrgVsxJcaA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Hdf5 for aarch64
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
X-List-Received-Date: Sat, 08 Sep 2018 11:10:42 -0000
Content-Type: multipart/alternative; boundary="0000000000009e825305755a2c52"

--0000000000009e825305755a2c52
Content-Type: text/plain; charset="UTF-8"

I want to add hdf5 in my yocto image for aarch64. The current recipe isn't
for aarch64. How do I change the recipe in rocko and compile it for aarch64?

--0000000000009e825305755a2c52
Content-Type: text/html; charset="UTF-8"

<div dir="auto">I want to add hdf5 in my yocto image for aarch64. The current recipe isn&#39;t for aarch64. How do I change the recipe in rocko and compile it for aarch64?</div>

--0000000000009e825305755a2c52--
