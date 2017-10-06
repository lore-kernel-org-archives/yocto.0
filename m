Return-Path: <patrick@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23CE3E00D99; Fri,  6 Oct 2017 05:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDFC3E00D94
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 05:05:39 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f4so7526251wme.0
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 05:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=Derw90ijLx++O5owTkRw/eqZrMdIRo5wylZA5yW1Cgc=;
	b=UhTtHnmheEHaByXvBYFBzvxI3pOhK5Z5cSlV8NoH3GDsy0PtwTpv/KcJm0tALfzisc
	Cjsyy+M+k8p962xpP341Y+2AfH/De+tVjw1EQPLLu/kROBnAYmDx08IczstxPrz+VL/z
	O6JuyJMZJ8qMpIsLJ8T2ZvDluX8yJWpnfFCfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=Derw90ijLx++O5owTkRw/eqZrMdIRo5wylZA5yW1Cgc=;
	b=T3MoFAu5/ThUQAt4q01LuLjanigfyfuJYF8SRTvajhqJrYqg3ZZS2q5N0COIbrVLrU
	dOT5o53yWCe9P+PSo0dIClkNs7juOnrpXMG9wWrxyJerJqYE07XdlfBOUJ/YpSAOt+m6
	TiifmF6l/QmVOcRJ3b9S7hkH37SoTNyfVJrNnkuuT+DwISoILYyJ6wrBS9sXADimXArr
	59wFf5q79sXNZpMmwHcKf/VolSqKPK0+wXEV1BlfPrLljD6Vkhbi6MflIdVL89xQz9Nh
	RwfsTw0ffzntZC8CcIlaOx86CgSCQHW3GvAvMwZOHy/3mAd+Y4exiVHF06qre2VeaETI
	stSA==
X-Gm-Message-State: AMCzsaV/onSRUYq8Mh4lBIQaU7cGxwzAqfPLJlJLZTkbG2kGsa/gNhvN
	od1x6Db2r58GhOg2YDG+jAwwrwggrEQ=
X-Google-Smtp-Source: AOwi7QAeY0ALcJXrdLlgSMFv43qPPBsElcGV3LrdBRzg3dHxztrvgr+VYqwdOzCssHK9O3wuflFSCA==
X-Received: by 10.80.146.35 with SMTP id i32mr3162412eda.10.1507291538536;
	Fri, 06 Oct 2017 05:05:38 -0700 (PDT)
Received: from [192.168.1.62] (p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id w2sm2369671eda.86.2017.10.06.05.05.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Oct 2017 05:05:38 -0700 (PDT)
From: Patrick Vacek <patrick@advancedtelematic.com>
To: yocto@yoctoproject.org
Message-ID: <947c7792-92d4-780a-e3c5-19dc2fb00706@advancedtelematic.com>
Date: Fri, 6 Oct 2017 14:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Boost + Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 12:05:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hello,

I'm trying to understand how Yocto figures out which Boost libraries to
install in an image. I've been studying the Boost recipes and it looks
like RRECOMMENDS is used to specify all of the libraries, but yet my
image only gets a subset of them. It's the subset that I typically need,
so it's fine, but I want to understand how the process works.

There's an additional tricky detail that got me looking into this. When
I bitbake a recipe I've written which just lists "boost" in DEPENDS,
running ldd the compiled executable does not appear to depend on a
couple of the boost libraries that I'd specified in CMake (although it
does depend on several others). Only the libraries that are specifically
mentioned with ldd are installed in the image. However, if I manually
cross-compile the same code via the native-sdk, ldd indicates that all
the expected libraries are dependencies. As such, that executable will
not be able to run on my device until I install the missing libraries.
Oddly, those libraries are built with bitbake, but not installed! How
does bitbake manage to remove some of these dependencies?

Thanks.

-- 
Patrick Vacek
ATS Advanced Telematic Systems GmbH
Kantstraße 162, 10623 Berlin
HRB 151501 B, Amtsgericht Charlottenburg
Vertreten durch die Geschäftsführer
Dirk Pöschl, Armin G. Schmidt



