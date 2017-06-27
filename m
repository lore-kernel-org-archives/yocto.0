Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E940E00B8D; Tue, 27 Jun 2017 12:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 867D5E00B77
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 12:29:01 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id r36so23724130ioi.1
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 12:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=/gZK0ytMAU47JtpFxgHqrQtVZuemlv5FOKVA+iQPPsk=;
	b=nrkHJjIlYfn/IDhaVSVyicMj9a43/ec8QNp3fEOMXBlktKs5vQARvr8/zB1jIAHB7+
	O5i6A+Hhuo0NTC9iuJd7c5f41TGtO6JFABvG6QDDkim5YibfCmOcFQixnVC0veCLKGgX
	hssVN5xGqp0bsTZEvlSVfTei9PStbJjrcmbvdyaH6HKGZb+vPdMUUzPxsYN2BKFKqsf0
	vofwLhTg+cTvrcJdpNuSWWy/ij5IZD5N974lr5ys8opqbi3quk/+AocBRbDU3uu2hbED
	+G7ECtxBZF7+DZvAaMJm1+ugvqxzuLtImefdukxfoGA267C8o2HpB+XhujQFw71c8CQ7
	qOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=/gZK0ytMAU47JtpFxgHqrQtVZuemlv5FOKVA+iQPPsk=;
	b=gRixvkN1KrpqvWANHXmcn1i/pe3qRuZr5J8K4ZwmuRwryXDXAoXDVu1gAgA4LIe386
	HptLXBiYPlTgC0sva9UezqNQV/T6GZi92ZvbFSForYKhPkz+Axwrkl62MNLXZUhp1/vV
	4Rd0VtCoPMGD/yW6UR9djOcVvYt4c+w9Za/7pezriDrPFZ9B5EE/uGh8wBHTkemrHzE5
	dmlAzBpxdDZcYGkp0yZsXyMSC6UowBof8JYgKHXDGosuFvlDrcCxgXUrFUsIC+3+cXhV
	jCuFa0cSSnVFSGE41CmO1auv9HEHafLRyPyMsTtfAVGYbjZ/WdN1sw5U/1DTAtOrwrea
	bLFQ==
X-Gm-Message-State: AKS2vOz9eWt5/Icwu4Di3MjEugHpp3U2zvHAXwozoiW+tqBL6kI+I0y8
	JoA/EghqPK+6NUuw
X-Received: by 10.107.165.148 with SMTP id o142mr3622809ioe.179.1498591740502; 
	Tue, 27 Jun 2017 12:29:00 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8FB9F.dip0.t-ipconnect.de. [93.232.251.159])
	by smtp.gmail.com with ESMTPSA id 86sm51759ioj.8.2017.06.27.12.28.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Jun 2017 12:28:59 -0700 (PDT)
Message-ID: <1498591737.7464.71.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 27 Jun 2017 21:28:57 +0200
In-Reply-To: <76B86AF8C15644E6B45FF1D6E4D85B60@PAULD>
References: <E68186D16557413C961C4DA89EF49E84@PAULD>
	<1498550334.7464.21.camel@intel.com>
	<76B86AF8C15644E6B45FF1D6E4D85B60@PAULD>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do you remove an IMAGEFS?
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
X-List-Received-Date: Tue, 27 Jun 2017 19:29:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-06-27 at 12:08 -0700, Paul D. DeRocco wrote:
> However, when I explicitly added "hddimg", I found that Syslinux was
> still configured for live image, with "boot" and "install" menu
> options. I found some code in image.bbclass that looks like it forces
> "image-live" if either "iso" or "hddimg" is included. I can of course
> hide that by setting various Syslinux options, but how do I get a
> plain hddimg that just boots up and runs, without any support for an
> "install" option in the kernel? Is that normally done with "wic" and a
> minimal .wks script?

I don't know that much about how boot loader menus get generated (we
don't use a boot loader in refkit). But yes, wic is the mechanism of
choice for creating images these days.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




