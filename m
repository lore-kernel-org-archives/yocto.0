Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1D41E00970; Thu, 16 Feb 2017 23:40:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A536E00924
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 23:40:13 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id d9so11326020itc.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 23:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=3JHqO2iIBy0rBJ6rZcZTNwbxI5WCX/VxE4ytgQC9d5w=;
	b=g1t30ABSsj+7mAfHHuJQyxCsXKBiklOtAzC4vRwMaW0TZmYIllSU3jGKPdTvYR/2if
	NweTHrCr7PM2W9kwGY/ST5nBkWp8Vw9rcGtCJ64ti+lcK6i5VdxMwgJRa5wzPNn+RZUM
	3X5FT55fvBfU4rNAcxx3ioh5FJSGnVwmF/uwcBMTABLgvhx9qHY3/v3++/f+NLEzdNwp
	vvG+FjHmdEJNnBW1RTnsWGueTKM5GIZG7Ec+G14MklXQ72Qgflg8ie0PD0cDDtC8tb1A
	DCbQFoVxgiXxb5uVzVBpL9HdP6V93zlSGU04nC3fMXOCVaLCSKYOaJYArVVOs0CTz8sJ
	BJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=3JHqO2iIBy0rBJ6rZcZTNwbxI5WCX/VxE4ytgQC9d5w=;
	b=gsJtS8GXhkhKHGw1WOW4W9rEyQa4xHJXHhlx4JwR7PcKn1Vjt7s9ak2carqt4fnEDK
	dSCJY1V/tXH8RCupomq6TWZRFSSepGtV7FpBbZ6AXzzhbE2QqZubzuu7f9HFXiIDGELR
	asdKKcwZmJ3Fa8/HNG1ylmDtT/rp4x+CDXb+SocWd5Z2VAl4IlqN1O1oicpm7b7/Ye0p
	w32CVh53pvWilrbI0Gpcr4HwUksU8FDnTWnFN8hLc00zAacSlKhT418Mh0fWvesfareF
	ddaFizqokrL3M0io8AMACJ55Jy5YpTWD77zcAhKdFrjPeMuw1Zm+aHzK1+egff+MdSzF
	hthA==
X-Gm-Message-State: AMke39lgAHx0XQ7S+OeXWI+lfz4UhWiJR3yMyKMDdHapog6ZHj7K3GcJv4RVxy3VPC0RtA1K
X-Received: by 10.36.55.201 with SMTP id r192mr1098208itr.41.1487317212531;
	Thu, 16 Feb 2017 23:40:12 -0800 (PST)
Received: from pohly-mobl1 (p5DE8FD56.dip0.t-ipconnect.de. [93.232.253.86])
	by smtp.gmail.com with ESMTPSA id
	o191sm4376028iod.11.2017.02.16.23.40.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 23:40:11 -0800 (PST)
Message-ID: <1487317209.13854.509.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Fri, 17 Feb 2017 08:40:09 +0100
In-Reply-To: <20170214165847.15675-1-git@andred.net>
References: <20170214165847.15675-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][RFC][PATCH] swupd-image.bbclass: split out swupd-client and config specific bits
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
X-List-Received-Date: Fri, 17 Feb 2017 07:40:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-02-14 at 16:58 +0000, André Draszik wrote:
> It is useful to be able to integrate swupd-client into an image that
> is not itself subject to swupd based processing.

Makes sense, merged to master-next.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




