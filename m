Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C3C0E00D89; Fri, 30 Aug 2019 04:10:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3296FE00B7A
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 04:10:31 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id t16so6560120wra.6
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 04:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=k0VtS0um/IH1ctAzXiMoe7XmXVmKRt+1t4FP5aduXE0=;
	b=dRGZgqjyyDZJ/Iqqhv1xHJN/htukOqQnvA35bui3hwQXDsP9CsfkGcpJUN+HYV/TmI
	6WoayuhiaqgEbk0mJcYydygQJBONJH5q3ITAhfwU1GuFFrMgJCX/6M9SHtJOrc2bVoKv
	qAOfyXLxskauWi+IJ8Xx6l8XpKu/WPruhkRi7RL5GNrm2Tse4O9YMkVr007wrFmaLatT
	SznuTFtP73uUBSjLS1D/VDhsNfUjo3bH/il7oHuvZ4SjrQQvQgHq0fzTBmMO3+X7WydA
	l3QkvUbwBPTBcB3douSiXSHd6135JWTVJ4eCrHNA/inoy7Hx92xzgx3N1cj/6hezq3XC
	4U4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=k0VtS0um/IH1ctAzXiMoe7XmXVmKRt+1t4FP5aduXE0=;
	b=Sa9zJl3ezIQH1Ci23kMHSRyE5pwJDaqPrDZ/YHzNbK0Lw2rxZyX/Lr0Ocy6Bt6/ZRY
	IUSAM512ONJinP14+xroiMXigjDO8T5/9xB4xm5IQafGgLZPKU69gKR2KC1KUtMymJr2
	3PvO3L2rqSMhhtmlXI3KkeD1ojAhwsrfPZ537D0szVGD5pNgIibyhdk48rfIlL6dyiPU
	Jppk9jJJssoGZxCayAmKFAb+VwjTYRCf/aq62FTwf20R/SlYjjgsWCI8ObKYAZNEs4fP
	ElgC1ulMBkMuR9GqrzBxfB+4uZF53IG5uQ/TyI1ChUoCp1BKuX1Msj1Z3fDAa4JfOJXK
	a/Mw==
X-Gm-Message-State: APjAAAW3wjYWNZouJ72ezX80FE7cofVdvqdAoU4BW/RBN5emLIWqP4Tn
	Vwmk5h25vQUpSzR2NohokqrX4F6avCZ9jw==
X-Google-Smtp-Source: APXvYqzQtsZ1ILDhja3FVzVyndxnzesmG6FiFQ4q8F2lFnidh42DuoZjfjNBr5BAVRj3fEirkvoKwQ==
X-Received: by 2002:a05:6000:1c8:: with SMTP id
	t8mr7094972wrx.296.1567163429965; 
	Fri, 30 Aug 2019 04:10:29 -0700 (PDT)
Received: from yantop.local ([85.118.38.73]) by smtp.gmail.com with ESMTPSA id
	b26sm6217059wmj.14.2019.08.30.04.10.29
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 30 Aug 2019 04:10:29 -0700 (PDT)
From: yann.dirson@blade-group.com
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Date: Fri, 30 Aug 2019 13:07:28 +0200
Message-Id: <20190830110729.11398-2-yann@blade-group.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190830110729.11398-1-yann@blade-group.com>
References: <20190830110729.11398-1-yann@blade-group.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Subject: [psplash][PATCH 2/3] Import png source for images, extracted from headers
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
X-List-Received-Date: Fri, 30 Aug 2019 11:10:32 -0000
Content-Transfer-Encoding: 8bit

From: Yann Dirson <yann@blade-group.com>

The prefered form for manipulating an image is the PNG source from
which the C code was generated.  These PNG were extracted by feeding
data from the C headers to libpng.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 base-images/psplash-bar.png  | Bin 0 -> 544 bytes
 base-images/psplash-hand.png | Bin 0 -> 3572 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 base-images/psplash-bar.png
 create mode 100644 base-images/psplash-hand.png

diff --git a/base-images/psplash-bar.png b/base-images/psplash-bar.png
new file mode 100644
index 0000000000000000000000000000000000000000..56e1d86c1778bea7ddc5da103c1fa2a6e9e1554d
GIT binary patch
literal 544
zcmeAS@N?(olHy`uVBq!ia0vp^&wyBlgAGWQCLcb+z`*$2)5S5QV$R#U8?$Z)NF4o`
z?CE_nX-bq|*U1?NlbMf}GAY(|JG@Ncc+$wk=)ZKr@(s=kWxa~3u{IUi2EIDhhrC}r
z(k}Oy{4MCkl_>Eq|8u|ZmO587LEyzIgW0vQua;ZPTY3Ngn%T4Sy(aCPcKW$4!~ckd
z0Ra+XTep7o+IlP7_2TLHYX75q_Q<^W^JnrUle0P+6T;^`fBE3S+Hc?P*{oAtd3|@#
z?z>B;IJjLh3Eh1+bbYz1=ch?2>-?6_F4SR|bme8qRFz`Z=7U>%46i*q=H}_{{@$pI
z?aA?%FWv9n^__qHm;^7|^-sqhN54L#5f#3<a>uJ02R+l-?OlsXv(4o0pPKEn?AnH?
zyVKtPUVVn`36NS9wtel*6r-uzBX0C>%+A&io5_7*@87?(w#Mn4c^n<dkhgF~L$ik3
z1BEV5i;g5FzD0PspPCN*JM#MB!)mv{hMHYFUPQlE`0#Y<Y1M2CnZAD(7a0!xPwcr^
zV6iFfX_05#(oLDXkAK9iy>?S;Gvm&yS#ve}-mi^Zx@qO1j4!E`MV}gXt2|)1|Gl*4
zPh6aY*wu_TX>-{dmbfK{Cq{%Qcz*rWcj-#O1LFx3mov|Q{Z-a;|J);bAG=u+rvCfZ
b-6FsH=pr`ey>E5^W1hj&)z4*}Q$iB}R^|_Z

literal 0
HcmV?d00001

diff --git a/base-images/psplash-hand.png b/base-images/psplash-hand.png
new file mode 100644
index 0000000000000000000000000000000000000000..35498d3b09b53becf72e77e680607bb4ce030006
GIT binary patch
literal 3572
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

literal 0
HcmV?d00001

-- 
2.23.0.rc1


