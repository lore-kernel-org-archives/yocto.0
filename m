Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDBE9E00A48; Thu,  6 Oct 2016 11:14:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62EE8E0050B
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 11:14:41 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 123so4654846wmb.3
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 11:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=gGkDxYXL1ZeV0y2qdBdbH+JTGrsHIRIQD6io5w1EQyc=;
	b=CztXKoz61VIAdGd5079QAIytiXL0XXpPy5gY2rm34+/2KSrCxkLo1gwm7K/JFgBr3V
	ZZJidgI4VAT93if6QSzMCxSYWqQqPj4l78eO3x/84qz0EsHGHRp9K48jRoE7lsZuqHnS
	w/yQwBs8ArzrkQ99Sxij/+aEthcAXq+KXGiwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=gGkDxYXL1ZeV0y2qdBdbH+JTGrsHIRIQD6io5w1EQyc=;
	b=JCROOYyTwFwWkMs3W5gZ+fzn4Fs7GaPOBpu/h4z4CxzbWdYncWaTdYl9NtGDObDSMZ
	TC/Cx38uHMsEXpQr2gQDDNEzOFlUKzC+D1DeF7loWMVRPLHhgSPYZAemJMKWUH1lUp/J
	rbuJ+KcpfClqzkbP++DOtA/+UnDsZ/jr6dYGK4iD59pKCiial8k062q26n8P2UGQCEdo
	ebqcCZbAscPylrXU0+zagS45s7Dn7NqnuhCF9T4mQQKJwDTdyRO7tqKN7ZQWZsOx5FfX
	dxJLK9QcFrH4KgjNndZQpufoiHgxUNhnUBw2ySo302G8FuGPqKzIyvRkTdr0ZFOpSSaG
	h82w==
X-Gm-Message-State: AA6/9Rnb1Kw2CiaW6Gno0sO4LNIczG2xYJv4g8p6Mw3h+95CzICU1jTjoPxBHCa0RX187g==
X-Received: by 10.194.235.165 with SMTP id un5mr13398408wjc.200.1475777680962; 
	Thu, 06 Oct 2016 11:14:40 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-188-142.w2-14.abo.wanadoo.fr.
	[2.14.91.142]) by smtp.gmail.com with ESMTPSA id
	x133sm16311722wme.8.2016.10.06.11.14.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 11:14:39 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <098d3839-cbc0-d22b-67c0-48f15179e453@fridu.net>
Date: Thu, 6 Oct 2016 20:14:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Subject: which meta-intel woudl build a kernel 4.8
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
X-List-Received-Date: Thu, 06 Oct 2016 18:14:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

I was happily under 'jethro' until now but I need to build a kernel 4.8
fir Intel HW to get access to some new features.

I can see that the 'master' branch bump to 4.8 but unfortunately come
with the following errors :

ERROR: No recipes available for:
 
/home/dominig/AGL/meta-intel/common/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 
/home/dominig/AGL/meta-intel/common/recipes-kernel/linux/linux-yocto_4.8.bbappend

Would someone have an idea how I could get a 4.8 working meta-intel ?

Thanks in advance

-- 

Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


