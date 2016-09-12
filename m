Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 795ABE00EF4; Mon, 12 Sep 2016 00:39:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4B00E00EF0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:39:51 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id d191so79472418oih.2
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=bdQIW7Nt1v+FzmpJRNrdu+yXsWC0wtZRJjp0rBjFj1I=;
	b=zGOqgat5V1jcgkoxSZChEihrr1b4XgEUhSomjx20N66effbMNpA67lEShZ07PQuhcw
	i+3+Xr+FD92imlnES9vsIpCKifMPPbxHx0i2CCgsQ+C2kesS8RqvcuR0yy7v1Gf51Rt5
	PldvgpJxUGRCvfolcBCVEg7mA2M5vvDS5KayzW++hYF0q/yH88CGk11EFgaupayiuui/
	XXQyAvj9faDboatkV2bkmxmnBIzp8HALsf22svRTY5Dl8b/0ysAXHx9/ePOcB/x+Xf96
	JtPUopTFv7zDtQL7d1jcniXwIce1g9wnp+Pa/gtqIQIvFKWSIj6oNw5WC03WA/NVeadI
	NeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=bdQIW7Nt1v+FzmpJRNrdu+yXsWC0wtZRJjp0rBjFj1I=;
	b=jUuA4kfOe5XYCzbabLjHb+zKuVOeRs/OLO5Wyz82ijwugHJv6Jno725iZFWZNFjgDi
	tyCKR0QMzvuHsv8NDPLPCDDbT1ItsULooUAFFN0plyQtlURViGYc9pBrZIvZpiulJVzq
	qbZbIYYhfdKti22kU4q3uU2UycwrchapEAICkfDaTB6qNchDSbdrL/inws+pjia+w2/c
	hq2FQPxBxMPtrBpsZLBhBG42wsZmG1VlKtwMONwLKNYb0iI0Ogu7BLVB5WSLa7X8r6D+
	+s+H2jvVw5EwEzfpu7IOZhIZeC3Ug+GnrCwz8i+qkQbVG113aMWLTMBAEZD3rBkeZ+kL
	kVHA==
X-Gm-Message-State: AE9vXwNcQHvn+l/v4w/rRpvn2GJcvzG8c96ZG3UCBIyiUqS+W0dGyREUU+t+a9nYSxLM7fSZ
X-Received: by 10.202.223.195 with SMTP id w186mr21682083oig.173.1473665990727;
	Mon, 12 Sep 2016 00:39:50 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8CACD.dip0.t-ipconnect.de. [93.232.202.205])
	by smtp.gmail.com with ESMTPSA id t7sm2688100itb.8.2016.09.12.00.39.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Sep 2016 00:39:49 -0700 (PDT)
Message-ID: <1473665986.5340.1.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Sep 2016 09:39:46 +0200
In-Reply-To: <1473664166-2472-1-git-send-email-patrick.ohly@intel.com>
References: <1473664166-2472-1-git-send-email-patrick.ohly@intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: joshua.g.lock@intel.com, Mikko Ylinen <mikko.ylinen@intel.com>
Subject: Re: [meta-swupd][PATCH] swupdimage.bbclass: ensure that do_rootfs gets executed
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
X-List-Received-Date: Mon, 12 Sep 2016 07:39:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello Joshua!

Please also apply to the pre-sstate branch. There's a slight merge
conflict (previous line differs), but that's easy to resolve, so I am
not sending that as a separate patch.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




