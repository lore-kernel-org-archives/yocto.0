Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDDEDE00D19; Sat, 16 Dec 2017 22:48:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50767E00AB0;
	Sat, 16 Dec 2017 22:48:00 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id g75so24049370wme.0;
	Sat, 16 Dec 2017 22:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FugmYl33zXml0QXFTZQe1XxpttwKcxPQC81W1CrUBF4=;
	b=annfaTLrSbZumVC8++KcVPkfPhs97Qf2UC7dpUqvRYw1rFPN1+BVSWZygnUHAJSmAI
	HIdK7KqKVpZfAmu7/m3TSMTMFYH9FPSlNH5yz3K0wX7d2UP2JDVlOzhw0pDzXuMtHpKG
	i2QgLWU1OTviilLuaw48NOKGSN9RDoIvLV3FxA5+X6GONv1hXf3nXq5dBGsqVkvjckD5
	pXjrnyy1NH4M5anFF4PVJfOWay9lJ6gg2UhcfojonFFUCgFlxSEpUb+2K3KZZ5eIosiK
	XnzFITzVMYSNzeM6hVMQ+o04B3R2SIgQ2/qq3HVQMUrCtPb9sMXgVru4kGPyz9+7QCI+
	KEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FugmYl33zXml0QXFTZQe1XxpttwKcxPQC81W1CrUBF4=;
	b=LoxoSoJ9nKCwZOdqtvAXSPcozjg1XqFeoUj78kk2KMt5KlAtCKztYqCRKNMyWBNeOA
	k7nhFCzEVsjyX7/jWA6/6ESG4HuG2+Pm9E8R9SUq6dlGoQz3A66ncjw/JBLrwVmWUWrK
	V67xLDVgvGZgFc+YCycebbgp3vJgRWbBP30sIJc+DRmE6wMaZb/U5hCbd6mUioe2hUOp
	itWNT+tHIEk1Nr/ZGhcTBazmgLwAqQfJKWy3YJu5maPKbh+SBiR/PSEkngEnvjYwylWo
	XUBaX7+PVwf/rrmuKCdbX1lP1AXcZKI05l42JH7c39diGFeNviR7yf3AL3sF+b1I+m+M
	M89w==
X-Gm-Message-State: AKGB3mIwATfJ6czWzSOPHMCfQZilc5WMNvP9kU2lB289Q30rstX3kCGL
	L9qkCay7oS+FvqQdG6LuxaWuERXdSs6TmkdgEJ4Bpw==
X-Google-Smtp-Source: ACJfBotXHlLt8kB++/KnTsTFPUi93/fGjCptVfszmZrZQRVJGQI23RsX8sSAEgVMZGUxssc9wTx4XoL1VVgF8CIfqQg=
X-Received: by 10.80.216.74 with SMTP id v10mr24052238edj.258.1513493279003;
	Sat, 16 Dec 2017 22:47:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Sat, 16 Dec 2017 22:47:58 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Sun, 17 Dec 2017 08:47:58 +0200
Message-ID: <CAJ2oMhLFidrcPag+5rHwMfXDuhCdB-hoQOedPngDjbhSJDWt6Q@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: disable x11 totally
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
X-List-Received-Date: Sun, 17 Dec 2017 06:48:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

 I use fb dsitro, and I  was surprised that we still get xterm in hdmi
output. How can I disable it ?

Regards,
Ran

