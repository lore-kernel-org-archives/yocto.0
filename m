Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24568E00AC5; Mon, 24 Sep 2018 10:08:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.173 listed in list.dnswl.org]
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56B3E00566
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 10:08:19 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id j8-v6so9287025pff.6
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 10:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:openpgp:autocrypt:organization:cc:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=77SjoEoPfszLPEc0C5jgamYT5NWuXimJNfDdKezKc+w=;
	b=OUddmk3Jv/qz507Hoymbf3pUqFyHuIOlg4lvslMl+rfqtGDt24sr4KURpLmaE/0ov1
	FKbyTKDRYTWIb7Bojq6mdi8jEtzoZ5KrZ5sX9Hi3khU5jSPfSxOLFdpqnS1FXf7USULb
	3lbY79T8rGbp8SLxPpwqC1q1fl0VcUcQfc7Jw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:openpgp:autocrypt:organization
	:cc:message-id:date:user-agent:mime-version:content-language
	:content-transfer-encoding;
	bh=77SjoEoPfszLPEc0C5jgamYT5NWuXimJNfDdKezKc+w=;
	b=Z9rghzTZHdLwASBJEOXpzaQkOHyY8Uw7c1rka6iMPAZhNqBU35nil93iXywJ/lKNfu
	HMs1Zsiqe0/1ikbj1E97s6iSkqf4ZQWORWYj32xPM6NQNb/sgCoXe5SkavAEONiUtOGA
	RF9gzUlKPnc02J2i58n9WFsb9kNcXEOtztkb4Fg+jFVBPbdqRs+v07Ohxg0fxIsk+jZ0
	XMxoRhxk0PPxCfLhhhkmOAAFsm6YuW7MatPy9zfi2NA0/4fYRGzSvmTdNFkqymak1QoB
	Y35Rq1GFDIdCPrZC2SCtv1bpy0xRAw32u5YMetwBIXLM/UV6auRFNffFyPEYANkdT7Xv
	C7Pw==
X-Gm-Message-State: ABuFfohikAp0CZojYCLOkiiCUUvFDPS5bcQiDeDANo0elMHti5maQZTF
	CHNWiB8pfj8aGoh6i/jmZTSGjA==
X-Google-Smtp-Source: ACcGV628XKz5bjUqerImhLwkfaB2/Dud4Ho1vfnC84pRj+trA8Z2RwTeAr+KtuCIub+xtRTLOKixTw==
X-Received: by 2002:a63:ce43:: with SMTP id
	r3-v6mr10591687pgi.439.1537808898891; 
	Mon, 24 Sep 2018 10:08:18 -0700 (PDT)
Received: from [192.168.17.78] (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	q2-v6sm914349pfc.17.2018.09.24.10.08.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Sep 2018 10:08:18 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mhalstead@linuxfoundation.org; prefer-encrypt=mutual; keydata=
	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
Organization: Linux Foundation
Message-ID: <6692f6d8-6069-540e-263c-c3b4ed302108@linuxfoundation.org>
Date: Mon, 24 Sep 2018 10:08:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, rebecca.swee.fun.chang@intel.com,
	aaron.chun.yew.chan@intel.com
Subject: QA notification for completed autobuilder build (yocto-2.6_M3.rc1)
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
X-List-Received-Date: Mon, 24 Sep 2018 17:08:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

A build flagged for QA (yocto-2.6_M3.rc1) was completed on the

autobuilder and is available at:
    https://autobuilder.yocto.io/pub/releases/yocto-2.6_M3.rc1

Build hash information:

bitbake: e72be96cfa9f05fda5f420c7cfa8bcfa9304b884
eclipse-poky-neon: 303e46a6848f1937d12541a7fd58e61aa1361225
eclipse-poky-oxygen: f1a20dc6a5a252a4ed4484b618d579cbbc7d146e
meta-gplv2: 813b7d2b5573d8591c6cd8087b326f0a0703d6b9
meta-intel: ba19605153725d66dc55e0a16962ae684e66c9e4
meta-mingw: 17887019257143f649a0f2e9caa9f814f7fb0b2a
meta-qt3: 02f273cba6c25f5cf20cb66d8a417a83772c3179
meta-qt4: 8e791c40140460825956430ba86b6266fdec0a93
oecore: e3f5ceec690379d64bd38330111a32f6c8fc6353
poky: c6edf2f8bc5778b267e3a7f4e8875d22f359fb8d

This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

-- 
Michael Halstead
Linux Foundation / SysAdmin

