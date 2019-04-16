Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B005E00CDD; Tue, 16 Apr 2019 08:36:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB0DE00AC5
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 08:36:26 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id k14so23832614qtb.0
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 08:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=T38idgZL1bwcD2nW1B5o9mtJFRClo5kMDlk/gsDvkj8=;
	b=Nv+E5XEgshSFsApGcxJJQMQemtH1RORicj2P+H+K+PTnadT52EvWwJ89GAGshfuztN
	9L3sf2gj76T+QbKeXna0mPpYRVl5NRPyPNiwIwufHc3O1ygmz2HANw7ueOH3DkQAh1TZ
	HLSlI6lvWngPsQqNlIMQSyELZz8sGAtQvIpVPXe9ebd49rgPIYo9eOufVEN2OFuZtOap
	V4M7gu1Rs+FwHsLHJhfdZWClodPu5JoPRArMgbDtObtQ451zAtTnphmL4aKX1gVGT2tn
	KnSW2Tv/wDDA5FOjPiYZYrbag3HeznJVxdvak8OUPwwx4CzVpfoLuPajAJXUnYl1SNb8
	R4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=T38idgZL1bwcD2nW1B5o9mtJFRClo5kMDlk/gsDvkj8=;
	b=k3uh0Mhzk9In4r8HpxarbTJusxnWBXQQ3V60fPFegpx7wjbPI4X5lBLMRN9rpYtKZH
	/D0V4BYvSD39o7O+vZPEdKIYvdVrM1kB5qkRtBBwbcmudo2hNwRoEFkyOljE9GG0CNN3
	UU7kNDPiduj9IgPAdHSFVWkrse/atIN0GRAEbQ5OzgJFrgqRio0JaWYyzIFlzLsatsQf
	QVLR799JHVKEg4cV40bwdEEhI3RJ6jw5Et/V9Rq5694lRK0n8OdE+szIyXKSDsKSP1Rm
	wSkHty2QA/zmWblc+xOEn2YmunevivzN/ZBMWFypMA2SMchonlCqczb+6/gCAoarhqFE
	JUIQ==
X-Gm-Message-State: APjAAAX+dZRJQrzIHlT38b247mA+GPlcMLSVInmi+p1NdbJmJSSoqy9Q
	LpUyTME2CK4ShDuA7iYvxY9SxfNZ
X-Google-Smtp-Source: APXvYqyHgCehdVEgweCdN/HAahVjsHSAKICYHQEILQwOCIpOpZ/I5Tj87TLg8KpEOt2sveUvuuJYmg==
X-Received: by 2002:a0c:b050:: with SMTP id l16mr66718521qvc.82.1555428985422; 
	Tue, 16 Apr 2019 08:36:25 -0700 (PDT)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	j93sm32332877qtd.82.2019.04.16.08.36.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Apr 2019 08:36:24 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <a40ab493-39a9-3290-631f-5474557d1a82@gmail.com>
Date: Tue, 16 Apr 2019 11:36:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: Intel Galleio Board SSH Minimal Poky Image
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
X-List-Received-Date: Tue, 16 Apr 2019 15:36:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings,

What is the minimal image from the poky yocto recipes that has ssh enabled by
default or is it just better to enable it in the core minimal image on system
startup.

Thanks,

Nick

