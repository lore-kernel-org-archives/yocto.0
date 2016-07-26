Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 297A9E00D38; Tue, 26 Jul 2016 02:15:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95EA1E00D25
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 02:15:35 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id l69so48889lfg.1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 02:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=q4ofzyyOG88x23LWjsZ/vVILZutDFSsprrTLOHTprow=;
	b=MNRHIex64xYnHEI6EGDOzTN+Yznc1tOYyZhos9foh4UlQMPWWU2pHAENJzzBTuHNay
	/yN9t/Zj3tvoJUue63qhYzjl7SjnbO8DoxrYCFc066uneCY1vORmcETmbmIFR4vyLfA+
	hmM3KBFxjNGaVC5Vxm/hXh9PqLTowdkc+40qBVuXzLKkTVA6IdKZL+BJZPUCVimtkDXV
	WtdzzTqHwGgSVNeRH0irxpo0OVtSVxQSrsbtifj4g+1S9rq8DiJKutZS7jdZjQcSZ2n7
	MjvlUP4oD0YTg6nhuTMigyE3J1iUHNnSVl/inzOuKpDoBL4e5NTkBHHPIuWR3FmKW1TH
	M6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=q4ofzyyOG88x23LWjsZ/vVILZutDFSsprrTLOHTprow=;
	b=dKOq+S1cmH35lhDiER/9VNecAlKGq79vG2jkeWceXVp5qQqYHB5nPX/IT8IYW2bd2S
	sGr6fLDp2BAMR3QNh6IdRGXYtAz6SFzjuGSPRXXCeXrHHKatjI3yZLipaoTvIE6g5CIF
	ZTZ3BnbAm0z3bYVlRhxunJs8mXRlNbDw6Jfti062K9JuO7uOR9ANh8bxEpH0YxcJtE9R
	KPINw6btiu02TBp/nr7DH/qExpHVeMX2clgwSvgJ0NZE47P2NNsZ7O7VcUQ0uqPWVtZ8
	DW39Y/N9pHNaE+57wR/ZMy5CIKJbD08NRkbK6xAx8qj41nF7E6NPmIGEweN4RujDjEfx
	VA5Q==
X-Gm-Message-State: AEkoout+cAR65GKPrlxzhvoML+i3BDDR9nQcJZJHSFbbPyQ9V5HdXK2qWXjC1ApmLTMHUA==
X-Received: by 10.25.133.138 with SMTP id h132mr7743964lfd.210.1469524533170; 
	Tue, 26 Jul 2016 02:15:33 -0700 (PDT)
Received: from skeletor.greyskull ([89.253.118.72])
	by smtp.gmail.com with ESMTPSA id
	g74sm6277207ljg.24.2016.07.26.02.15.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Jul 2016 02:15:32 -0700 (PDT)
To: yocto@yoctoproject.org
From: Jacob Kroon <jacob.kroon@gmail.com>
Message-ID: <3ed8be9d-fd17-527a-129b-96f05204528b@gmail.com>
Date: Tue, 26 Jul 2016 11:15:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: kernel-devsrc and .kernel-meta
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
X-List-Received-Date: Tue, 26 Jul 2016 09:15:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've added kernel-devsrc to TOOLCHAIN_TARGET_TASK for the SDK.
After installing the SDK, <target-path>/usr/src/kernel/ contains a 
.kernel-meta/ directory of size ~18MB. After some rebuilds, and new SDK
generation/installation, that directory has grown to 512MB.
Should this directory be dropped from the kernel-devsrc package ?

/Jacob

