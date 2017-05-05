Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4E7E0095F; Fri,  5 May 2017 06:13:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D787CE007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 06:13:08 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id c15so22866374ith.0
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 06:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=gqMkOWJnydYx97Nv9mESnZw1Ao8h88Cdb+zUiX7ObsU=;
	b=PlK1gAcsltQuAsWxdyIbZmb0SXOigqUwOdIcYPCQvY5uRfBP7iD5cVuY79AlsL+WXi
	Kpuh1/uAs/YepzaEY5smkAIfGutoufmWmMAssN2Qb/Qisoz2RWfJb3YHIM1VsxoKCRMm
	KREBgM4e0hydo0pJ1phPiOZKHFR3Yy3+dr0yCpqIScfHQ167nfw4T50Sts4aSPu9m9Qq
	Fq6cBLysuG1mpho77a2OnCFr3Cz2bqIDuyWYcQpXu92H+KaqJWgUvh0+OOhd0zFbo8SA
	FX8ZcrpMXTbao++xg4/5TxH9kayWpn2/yuNHs0Y+LWuRNyXI9AE8odJPFwiY7/DzfrF/
	4a4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=gqMkOWJnydYx97Nv9mESnZw1Ao8h88Cdb+zUiX7ObsU=;
	b=a1GBUVjS61VN6/PncPKxykD+Gz7Z6a/W9l4L02lPbdRu2V4Kh1BVKl6pZpvthz6CfY
	LwA+Je2OaQiUlP0YCztEldc/V7b5/kCnFUdHpk4Ix/RJzjwtPQURszdGSmwusNo7fbvK
	qrF5rtGx9QxPEZsZTwsFHqlXaU10Uc4JeqCULGH4kFeKZFU9aiq+4GVxa1gniKN52PUd
	qdgDe2RBDHEhu1x77IdM5ho3U/z4Duqa5ahOTcNwCQhI8JU7ypsLVG4nVZUnnM8htsP7
	UVcNBhTmHB5TqkORlzGWPVPbFOpL54opa8ToeB7foGFWHgtLk5jUlDq5PRsAhbqkGo0K
	RuEQ==
X-Gm-Message-State: AN3rC/5v8ezQBgrRlzaWGgTrv0MWkEe05/HoIIaJLv6N/lQqeS80TsWE
	UtnaUzgKsJjv//AH
X-Received: by 10.36.19.193 with SMTP id 184mr8040139itz.93.1493989987796;
	Fri, 05 May 2017 06:13:07 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8E982.dip0.t-ipconnect.de. [93.232.233.130])
	by smtp.gmail.com with ESMTPSA id 9sm944365itm.12.2017.05.05.06.13.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 May 2017 06:13:06 -0700 (PDT)
Message-ID: <1493989984.4241.308.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 05 May 2017 15:13:04 +0200
In-Reply-To: <CAMKF1sp_n3Eaff8wGcbyXM0=N3bf7UGfUNnHhB7ZPDEDq+t9ug@mail.gmail.com>
References: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
	<CAMKF1sp_n3Eaff8wGcbyXM0=N3bf7UGfUNnHhB7ZPDEDq+t9ug@mail.gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling tpm from meta-security for AGL
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
X-List-Received-Date: Fri, 05 May 2017 13:13:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-05-05 at 08:45 -0400, Khem Raj wrote:
> Set
> 
> SECURITY_CFLAGS = "${SECURITY_NO_PIE_CFLAGS}"

But that's just a workaround, right? Ideally the build rules of
tpm2.0-tools should be fixed to not need that.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




