Return-Path: <email.mshakeel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FFA7E009CF; Tue, 24 Apr 2018 05:31:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (email.mshakeel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D65E00948
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:31:49 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id v15-v6so31648235wrm.10
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=7Qlvl36DdsjZTm/A2cyr0kbwzZEU6nABYzEV04fomVc=;
	b=b6jOEYEMJMZrTNZKNORlOHWwkDwJwWyMM3YsFE38SHe2QWdmnOuStPXCMIH3o0qAaZ
	OVaJfg66zeO3HFR9zWr/6C0/TTv4JMnnUdH1cWhF5EIdTrLIzyml5yrAw7MTa537WmNU
	6Bo/zuQBm4v6G7OahMYP52Sb741N3jilqRo+57kf+g8V9oQUQtmcCsMW65kdCG/PUipB
	S1i+oVTi90erGnvjZPAVPljsRZ9t100m97Wi2XxEMMeDvRePieF9rbU/FGitvLRFwMdO
	FcfUMWSTeG307B+8VhgUEaD/UWpu10DrB5CNT1wZh6dZLn3MeOQeZIhYDUEvdMGGyfT0
	7uig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=7Qlvl36DdsjZTm/A2cyr0kbwzZEU6nABYzEV04fomVc=;
	b=if3c/StEGiReMqBmtOAlA6Cc6ovJQOGxhVLITz4MRIcmgakTR5dLxSeOdF7gZg6Tjo
	GrN/h0u6uWVL2GyoSG7i4KiH95wHKNweRziIqlbYirhznm8EhIJYAeuX9p88OKgW2hBj
	lC729DoDA0ICNKXmrLaIseR1jABgEjB7heLSBNvE6aNKssIxqQGGHEpe8TaxvQqiLxmq
	D9uc5xIiMu+R+OlpkBSWLlj8rDSz9f8M8WzXLzjuzFeCQyYsCpffXnUHmus5Mue42Jen
	gCfbkl1CFzxvvQ3Iq/R6+7WGBoxqy2Tqlu6+XJO5ueSyXWPVXGiFHLXBh6b7SgwuOgNk
	i7Wg==
X-Gm-Message-State: ALQs6tAMHzMGDK1E4QoNuMB45lPH1CF/4ZSTF0Pr4LC89Si0wQU7jbUK
	NN8u1JCyViCj7yVFDmQlVtw=
X-Google-Smtp-Source: AIpwx4/TJfbe08o/E4PhmJSw8+RIlHYjr7SCC+yGCEUeCZ5Zok2L+HGUxJQ3EgwFVQ6ngIcscmkhTQ==
X-Received: by 2002:adf:ac64:: with SMTP id
	v91-v6mr19136172wrc.80.1524573108439; 
	Tue, 24 Apr 2018 05:31:48 -0700 (PDT)
Received: from [192.168.1.104] ([115.186.31.147])
	by smtp.gmail.com with ESMTPSA id
	q13-v6sm13275079wrg.56.2018.04.24.05.31.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Apr 2018 05:31:47 -0700 (PDT)
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
From: Muhammad Shakeel <email.mshakeel@gmail.com>
Message-ID: <c875f84a-9af6-fe03-5da1-3a701c3154bc@gmail.com>
Date: Tue, 24 Apr 2018 17:31:45 +0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 27 Apr 2018 12:07:45 -0700
Subject: nothing provides mono(System.Runtime.Loader)
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
X-List-Received-Date: Tue, 24 Apr 2018 12:31:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

I am trying to build core-image-mono with Rocko release of the Yocto and 
meta-mono and I am getting the following error.

ore-image-mono-1.0-r0 do_rootfs ....

  Problem 1: package mono-5.4.1.6-r0.1.armv7ahf_neon requires 
mono-libs-4.5, but none of the providers can be installed
   - conflicting requests
   - nothing provides mono(System.Runtime.Loader) = 4.0.0.0 needed by 
mono-libs-4.5-5.4.1.6-r0.1.armv7ahf_neon
  Problem 2: package packagegroup-core-x11-base-1.0-r1.0.noarch requires 
matchbox-wm, but none of the providers can be installed
   - conflicting requests
   - nothing provides libXext.so.6 needed by 
matchbox-wm-1.2.2-r0.0.armv7ahf_neon
  Problem 3: package mono-helloworld-1.2-r0.1.armv7ahf_neon requires 
libgdiplus0, but none of the providers can be installed
   - conflicting requests
   - nothing provides libcairo.so.2 needed by 
libgdiplus0-4.2-r0.1.armv7ahf_neon
  Problem 4: package packagegroup-core-x11-sato-1.0-r33.0.mach_oina_x4_2 
requires packagegroup-core-x11-sato-apps, but none of the providers can 
be installed
   - package packagegroup-core-x11-sato-apps-1.0-r33.0.mach_oina_x4_2 
requires sato-screenshot, but none of the providers can be installed
   - conflicting requests
   - nothing provides libcairo.so.2 needed by 
sato-screenshot-0.3-r0.0.armv7ahf_neon


Apparently System.Runtime.Loader.dll is not getting built but 
mono-libs-4.5 is dependent on it.

How do we add build dependency of internal mono dll?

Best Regards,
Shakeel


