Return-Path: <robert.berger.yocto.user@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38C4CE00D63; Tue, 24 Sep 2019 09:38:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (robert.berger.yocto.user[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B173AE00963
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 09:38:09 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id h33so2406148edh.12
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 09:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=vo1taa7Ud3EzJBylJk3Q4RzuSuh0qr3VMCPZETOj+Xk=;
	b=WMxW+MSQBVbjPz9N2pVfEwx0m1FE7J2WnrDC7oZv7QsfM4jUUif5X6h1rO5oyjLBMt
	pHwVEBpxCapeW8jtFgFIcRu6dxS5Hp1n9ZUb8QJ7r4jk710u0M2olfwJnI/qHGrOTY3F
	O1p6ApZmN8LxrkLTtu8N+vNVHZUi0CvksVy7MLNibhCj41QfX+S6c6yclCEx9s4yIEvt
	KyJ4GysgdppU5ipk8hErpKbvkS7vFA5svcOZpm7FiYUdqq/v0sdbEdDbAgekxw0BX1+M
	6RloW0ptLnuX1Husa8CgpmPkG4ZiawXL+iumlvbAUvO/v5qGJ1pVwehhmrVOLddya2+0
	c4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=vo1taa7Ud3EzJBylJk3Q4RzuSuh0qr3VMCPZETOj+Xk=;
	b=CGjCRrD5a4KPny+4FH3UAjF10XiP2dfCQattaZkx1WHq3Twf0rLqu+K7RoEj/hFI7B
	rZCzvqacQzYMVyhynIENccEyN+Gy0QDUcw3HZGbia9W2ZLPJTTbISrfAEfLmyWhPnNMC
	zKY5wwpsLkYuBwgCFDfQRWT9ZqbNsV7xAQaHWO2Nm3u2IgpiQ6o009gS+uf/4STV1Wqu
	Dk6+UgcXL7bVnGIP5dcbHrJqokRjeRI19uwKNdLG3ftiDRKkgC2zGlNftMN8n3hZBP3l
	hFQCs/zKRSR/v5NwVIwY2sopw4sx992N2XLp4f2CAJ/8oDtOQJ32+VWGjH63R9sVhJmF
	NDsg==
X-Gm-Message-State: APjAAAXm3xzPfwL6NtLZOvKJGyYFNsYCknFdU1Bql12mXWR7PoCoKjgn
	R7yyGcKMQdLlTivc2TS8qH/HfCu4
X-Google-Smtp-Source: APXvYqxgkwzR1ipr71Ve1m4WqAoQdc31hkA39hD7i6iy+nCggjbZjJgB/7+UxgrYliObFIJiPHLYlQ==
X-Received: by 2002:a17:906:4a06:: with SMTP id
	w6mr3438606eju.214.1569343088863; 
	Tue, 24 Sep 2019 09:38:08 -0700 (PDT)
Received: from [192.168.42.52] (cable-static-24-202.rsnweb.ch. [88.84.24.202])
	by smtp.gmail.com with ESMTPSA id
	60sm456538edg.10.2019.09.24.09.38.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Sep 2019 09:38:08 -0700 (PDT)
To: Thomas Goodwin <btgoodwin@geontech.com>,
	Yann Dirson <yann.dirson@blade-group.com>
References: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
	<CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <df62d76f-daa1-bde7-e916-2c9674ab1414@gmail.com>
Date: Tue, 24 Sep 2019 18:38:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
Cc: yocto@yoctoproject.org, Simon Spannagel <simon.spannagel@cern.ch>,
	bunk@stusta.de
Subject: Re: gitlab-ci helper scripts for OpenEmbedded builds
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
X-List-Received-Date: Tue, 24 Sep 2019 16:38:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Thomas,

Please see my comments below.

On 24/09/2019 14:36, Thomas Goodwin wrote:
> Hi Yann,
> 
> Thanks for sharing! We're working through something similar using a 
> tweak to the CROPS docker containers and GitLab-CI (we started with 
> autobuilder 2, so we've actually merged quite a bit of that experience 
> with our GitLab setup).
> 

I really would like to discuss details about your setup.
Seems quite interesting!

> 
> Cheers,
> 
> Thomas
> 
> Geon Technologies, LLC
> 

Regards,

Robert

