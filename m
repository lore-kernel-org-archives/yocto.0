Return-Path: <anatoli.veselinov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36734E00BF8; Wed,  2 Nov 2016 08:40:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (anatoli.veselinov[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D906E0034A
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 08:40:53 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id p190so276732908wmp.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 08:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=niT0mu4eWT4iMncYZiewlzy40Nwj4B7gmnB3v5FUTgQ=;
	b=Nk3yD0iqliTovvUwHMG4dhVHDmwdTx14ZMQXbCrq6Tmua/GbK6SaP3KsO0hk4bw+Cy
	NUUm4vHJSKn+TgCmbQUoiQI/5JHMLdmR4OLluycmTPDNkZMQLc8pYScPXhaXzWKj0Lvh
	hxjxPKQYk/15YclVRHE2DzyRdXN5ZLretdR41419Al59ZAiJzbSl0WT4fX2e9h9Z1Rgh
	Szc7zi7nlUSps9NiRD3G6fHPouUT4O0B3SS8KjsfXKeDeDsOLeAhtLcPLdN93H/tTXss
	oPLh4/Fu2jqRRGDPYw77AxYbDMdQ0Ly0p545OFYOzUHJ425eVx3S4itOWvIN4y+ozowV
	gyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=niT0mu4eWT4iMncYZiewlzy40Nwj4B7gmnB3v5FUTgQ=;
	b=i/rP0JayxFO9USN9d+Zt8bwt+4v4lWwHHPrOjGateOSW+TWYKFepbNlACSxpcLVaSN
	JX1/6GbINGFbgBEy7p/snUvtajPVB1y/lcXCrQ7ieg1uCrKux8CnJyIOr2DL9cojHrlr
	ISSafUvtUg7o/TyiPdOLWwsMyPo5lHPkJmDV0nNFNflVVXcD3mXs/3VW3WQiJdwODSyE
	vkPn66Ac+y4bI05/hjEdMxj+CXnjUcPXewlSN1TNgQjNr7p3ZnG5LShAo0SVh9TonO1b
	SaRVVVg4tcDVy4P3+IDvrTA/e62xwgzFNiKaIlPGtTsfa5bnmgFPM5nXYXixc5MFTsb+
	bgIA==
X-Gm-Message-State: ABUngvfOAeeR679y6LYgEu2oKlGh4lJ1y8TZzANwrey96T5jOsF0z/D4ZnLpmQK5tHKbIg==
X-Received: by 10.28.92.1 with SMTP id q1mr4062405wmb.62.1478101252304;
	Wed, 02 Nov 2016 08:40:52 -0700 (PDT)
Received: from [192.168.61.196] ([146.66.253.137])
	by smtp.gmail.com with ESMTPSA id l6sm3459362wjc.7.2016.11.02.08.40.51
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Nov 2016 08:40:51 -0700 (PDT)
To: yocto@yoctoproject.org
From: "Anatoli V." <anatoli.veselinov@gmail.com>
Message-ID: <934efc20-56e3-31b2-3379-aee0c37afbea@gmail.com>
Date: Wed, 2 Nov 2016 16:40:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 03 Nov 2016 07:49:45 -0700
Subject: How to disable a Qt module to be built?
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
X-List-Received-Date: Wed, 02 Nov 2016 15:40:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have been searching about this but didn't found anything. I don't know 
if what I'm asking is possible so let me explain.

My goal is to create a custom image for a target that it can run Qt 
applications.
I have the image ready, I also generated the Qt sdk (with populate_sdk) 
and I already can cross-compile. Ok.

My question is, for future builds, how do I disable or remove some Qt 
modules that I don't need?

I did:

PACKAGECONFIG_remove_pn-qttools = "qtwebkit"
PACKAGECONFIG_remove_pn-qtquick1 = "qtwebkit"

but that doesn't disable qtwebkit to be built, I saw qtwebkit do_compile 
task running and it takes a lot of time.


