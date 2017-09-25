Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F9DE00D13; Mon, 25 Sep 2017 13:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.172 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02D07E00C89
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 13:10:21 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id z84so4363508pfi.2
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 13:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=kl04fIeN8hdceA/kvBCJdqmJeRtALWsCxtGz3pmEnsU=;
	b=XgomRWHL3PyNOV0qacYzZKkZ6OVpehuL6G9VkZqLR2OgMtMbQFl/vbKrcSIVRWNbri
	/dxQrg4Hr2zk2kccwWoY6jQ4DApIcszsWGEXAiN2WZn/i/LkM5VC+0DgaiBJTuvk/iUg
	l2gjdek4KgO8NTegklwg37IZEf3le31d4JLyGLEBr/hJQzusO6b0q0lplZBlW6Af68yo
	Q3vvxr2G7ENtngvlMDCjH9wKlRpw+uRM+rp/4dZJvA9NDIkl2hsfxrecPE94Ftr/rWtT
	BjVNDqH+5ma23izEyeYQWbcbCEhyaZNsUwqAu1m6uAsK3XUlr2iiQH4JdLuFeCKdE9RR
	OLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=kl04fIeN8hdceA/kvBCJdqmJeRtALWsCxtGz3pmEnsU=;
	b=qHgE0w0X2Nez1Urze9zxAGy7Dl4mtYn6rrNLpgVzc7ok+QF0HDF5ZVD48tRW8bq/lp
	tTuwtv44GG5vdg5ws0yaIO6kczAttZswlWlo4YCmN0j1VShO8Mx5wmdVEVFw7TIkgKra
	OT+Qzsp7fW9KG6NLa7h4NMgwaDp31F7Gvp4FYIOGbdP2XgiVAGTPMAk713/Gl9u05/an
	5Mi1QvxQjYXcjgH/ScMNPLpmkeixqka2u0SCCWF/49CFAEPmqlM24plwbjHiL02pD5Uf
	K/9gTSlcwaQAj8ui1z9VRx8C+UWdn3KsvHhHaBiLhB1l9aFgjcpWyVdtYUhHuZNg2BD9
	Nmtw==
X-Gm-Message-State: AHPjjUhirLv9atyIpGz8LEldNkoar9vrN8VvG6zgzXO4A/Bp9E3uVwPm
	UlNIjBtcwTQ5obzGorGZRiH7/Lz6PNI=
X-Google-Smtp-Source: AOwi7QCpr7DsP0bp3ZVSivjMSoIXM5lrz441NBoeZbd3iVpfDR5Q4K1TD2PqIEDaoPh9ycMm00Wuag==
X-Received: by 10.99.138.73 with SMTP id y70mr8963161pgd.317.1506370221300;
	Mon, 25 Sep 2017 13:10:21 -0700 (PDT)
Received: from [192.168.1.13] (99-0-9-164.lightspeed.frokca.sbcglobal.net.
	[99.0.9.164]) by smtp.gmail.com with ESMTPSA id
	m190sm13655950pga.2.2017.09.25.13.10.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Sep 2017 13:10:20 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Message-ID: <c56b442f-f4df-de42-fcea-85a261145449@mvista.com>
Date: Mon, 25 Sep 2017 13:10:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Release directory layout 2.3.2
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
X-List-Received-Date: Mon, 25 Sep 2017 20:10:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Was the change to the directory structure release for 2.3.2 intentional. 
All the other releases are under:
http://downloads.yoctoproject.org/releases/yocto/yocto-<release version>
where as 2.3.2 is
http://downloads.yoctoproject.org/releases/yocto/yocto-<release 
version>/yocto-<release version>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


