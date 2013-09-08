Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F833E0051D
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 10:51:39 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id q59so3447582wes.41
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2013 10:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=RN2fKy4XhdKWV8rvgwBOnMLcYwyUSwDnkJc052dx4Qo=;
	b=IGzqLadDFc1oATkQPSZxF7BZPJNO7yqNH0iWiSR2Vevauhe/ngE0oXODlTa/IyuC2P
	obS+07UFWtTFPm1ug5PfhSDNds3fsbaP3cMXuHpxe4Q24+JjfQN2YZr9fjhwsoXxKTWo
	4V39UKRNLcqmPTB/nPZTnSJWk2cg1ym/HD08nNmuS/PYqqS72V+imimSgz/2lgGdUFaj
	EWq7nCPsLf/RuQ8CtYDOljdcJzgCXxpKIOVxiVY2wzWsAG3qN8R96BDzhH/Dvv/fCh5n
	vfuyhYv8k4MmM6OEz4a3ZWEY9XroUPZlxOZJbpAxCNAhMdGzZEH4rGwfJN4vX17QIcPn
	ATFQ==
X-Gm-Message-State: ALoCoQmWBfT7ewAK/XFnyYAOkHufZgf+MU/du7u5pqGlbeQbvlDghwiFe0/xNu6vNAFIvRjq/VoT
X-Received: by 10.180.189.49 with SMTP id gf17mr5561765wic.23.1378662698656;
	Sun, 08 Sep 2013 10:51:38 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id iz19sm8924411wic.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Sep 2013 10:51:37 -0700 (PDT)
Message-ID: <522CB927.3080602@vtkloud.com>
Date: Sun, 08 Sep 2013 19:51:35 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAKv5JSoFj8mUXBi_pzQUTbMWgYbxKTRGfFRtbBz+aj9YwRdutA@mail.gmail.com>
In-Reply-To: <CAKv5JSoFj8mUXBi_pzQUTbMWgYbxKTRGfFRtbBz+aj9YwRdutA@mail.gmail.com>
Subject: Re: Any help with gst-plugsin-bad and python error?
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
X-List-Received-Date: Sun, 08 Sep 2013 17:51:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2013 19:32, Timothy Bean wrote:
| Computing transaction...error: Can't install 
libglib-2.0-utils-1:2.34.3-r2@armv7a_vfp_neon: no package provides 
/usr/local/bin/python
|


It looks like bitbake doesn't know how to build python.

What is your bblayers.conf like ? python 2.7 is in poky/meta, is it 
included in your config?

Jay


