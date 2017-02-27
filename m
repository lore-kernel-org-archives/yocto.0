Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19E35E009CF; Mon, 27 Feb 2017 03:46:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B51E00874
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:30 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id a6so9303162lfa.0
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=TfTdeqI4/HFMeW3w6oTncJNW7vqkjADESGVCOXIB3uk=;
	b=BX7HFLeMbMt9fbbGenULZLCqK01FvVkjWAbmodGW6eJ2WeSLRl8aXC6+iYuTtbfz5W
	cmWzJajaFQYrjRwWK2hfDVOHa1bpTJlCneikiz6wzhjG2mAByahpOf1HJ5PrKJNar2NY
	y3fAOIhAiWyVK/C77dMFp/chsSZVeVGmgaTN9AywQfjhwpkNty4Jbmc1OUznSMOsO743
	wN0YNlv8R7ovsWCs1gvjQ5gRQk1XutvBt7AQprH6zyVFm6HZlNOVTV0d+QU14NArd4ME
	rvoGOg9n/3tGYstFhqozE7xWRzQusZHF/ZlAeQbayUHY5aXpJI329cCvISWzb7MhHB3F
	S+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=TfTdeqI4/HFMeW3w6oTncJNW7vqkjADESGVCOXIB3uk=;
	b=Klatfm1TSrRwlmCuddsdnR1URAlPigtIP/3ol/Tx84jA9m65zwGRdQJnTT9NTiF6xB
	9sSLMrtHDt+Sw/phjjKCjT9zGpL5dpjX9JYxUk1iLyWT0zJOqH2D5YRlTmFrCG4+eoNE
	VGcAwk1tS+Mc2+io+3NH5j+keoctzvgHMz/GTNwtLOUp73ekvkhoNjGR3G8yRXdVWcJe
	cbieMIl6nk9YoJ4U7MIJiOY7ndLRvis5uCevmBps/Dnub/ck6haZpPCb6XOjxlJCoBnP
	PTA6o84LFMvDYgvlihrniiYpWv5ecoXh+T2cedz3DNglVZxX+4uxt/QaOhxYIK1VdLvq
	973Q==
X-Gm-Message-State: AMke39muE4WALBj1t+EokgWM08D1RSbS/TEZAwbsA/1sZFF6MvYhPMRoJhs3mRdDsa/cfA==
X-Received: by 10.25.233.21 with SMTP id g21mr5068164lfh.130.1488195989469;
	Mon, 27 Feb 2017 03:46:29 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain
	(staticline-31-182-60-238.toya.net.pl. [31.182.60.238])
	by smtp.gmail.com with ESMTPSA id q71sm471758lfe.40.2017.02.27.03.46.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 03:46:28 -0800 (PST)
From: Maciej Borzecki <maciej.borzecki@rndity.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 12:46:05 +0100
Message-Id: <4cf874c18dbd8c9d2ea64a7d621389210854067b.1488194279.git.maciej.borzecki@rndity.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1488191415.git.maciej.borzecki@rndity.com>
References: <cover.1488191415.git.maciej.borzecki@rndity.com>
In-Reply-To: <cover.1488194279.git.maciej.borzecki@rndity.com>
References: <cover.1488194279.git.maciej.borzecki@rndity.com>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi] [PATCH 1/2] wic: move sdimage-raspberrypi to toplevel wic location
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
X-List-Received-Date: Mon, 27 Feb 2017 11:46:37 -0000

Wic supports picking up image files from toplevel LAYERDIR/wic directory. Using
this location has the benefit that image files are easier to find (compare that
to previously used scripts/lib/image/canned-wks/ location).

Signed-off-by: Maciej Borzecki <maciej.borzecki@rndity.com>
---
 {scripts/lib/image/canned-wks => wic}/sdimage-raspberrypi.wks | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {scripts/lib/image/canned-wks => wic}/sdimage-raspberrypi.wks (100%)

diff --git a/scripts/lib/image/canned-wks/sdimage-raspberrypi.wks b/wic/sdimage-raspberrypi.wks
similarity index 100%
rename from scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
rename to wic/sdimage-raspberrypi.wks
-- 
2.5.5


