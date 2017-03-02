Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78E0E00924; Thu,  2 Mar 2017 08:19:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37BD2E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:19:15 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id 203so54635022ith.0
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=7NCAqXY9OqGQEJoDcCqktX9YSkVqOif8osLhxDZVQSU=;
	b=memauhqTal3woiCaZJ0h4ha7Siseye8eyMEBLxeDS5FW5KeNNob5G0RfJMwx8V+KaQ
	gCT6CcddQqr+jhKxGt/Ff40gWYMIR7ehfuv4PmrY1J4qjnqFswliu1GwVN8FZnOSL/BV
	kmNAXCE6kRwSdMt+I5zd5UsTKJDNZ92NUNO16EV5lwJ05Kp3NE5Idp7C9ybUjhpSUEkf
	pnBZT4bhQZgsbEmTxgLv2J47L8IeZzPx5IfwAur5VOJjdZacHY3weChWeTH7J46rrMFi
	Hwf78aKDctzoEV19dOtW2l63nWcw4AbZBL93yEQ5yc66DnO5prrAI5nnHTCpeKqnhJgh
	NwLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=7NCAqXY9OqGQEJoDcCqktX9YSkVqOif8osLhxDZVQSU=;
	b=m4A5oJvM0j50DJ4/LG4R01NNKsBmO9Mj3Ya0lFULJTMXM+PWoB1xqldYbBXwfBPPnQ
	uT0Sb/Uj2quhgjXAWgPDZkLrojgb0FRw/0ew8AEzyb4J1ga58xSbhJRTquX+tBmMwcRc
	NZIB5RRD3iwc+HW5iQxIWICLssz+rE/vjzmN461ITS0TnNtmEOUDzZ5TEhi+3WOCsK3P
	PNCmeOgt/g85CxJGNeM4Como9Wi1ycreMurfprzb7P8llb6Zq0kJqIvCxltIw6xE24RB
	MwLH2rguen14v9WheRAJkEoS6rAXE8xOQg02KKQDH9TLOI0pgm04Z5PyFPAuOri6m6zQ
	9Q7w==
X-Gm-Message-State: AMke39nQlsUSY0juGtO2WJzukX2Qh0RrKow+SPUKY4K+hd5dnOH88Fy89rKi9oY4n6hl5KYK
X-Received: by 10.36.111.76 with SMTP id x73mr6031129itb.96.1488471555061;
	Thu, 02 Mar 2017 08:19:15 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E17A.dip0.t-ipconnect.de. [93.232.225.122])
	by smtp.gmail.com with ESMTPSA id v197sm757735ita.2.2017.03.02.08.19.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 Mar 2017 08:19:13 -0800 (PST)
Message-ID: <1488471551.7785.242.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Date: Thu, 02 Mar 2017 17:19:11 +0100
In-Reply-To: <ba80e4dc-87af-327e-4f92-00c2f09d3e35@fridu.net>
References: <ba80e4dc-87af-327e-4f92-00c2f09d3e35@fridu.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error with Cynara pkg_postinst when updating AGL to from morty master
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
X-List-Received-Date: Thu, 02 Mar 2017 16:19:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-02 at 16:33 +0100, Dominig ar Foll (Intel Open Source)
wrote:
> Hello,
> 
> I am trying to move AGL from morty to master in order to get a stock
> Kernel 3.9.
> I have moved meta-intel, poky and open embedded to master branches.
> 
> I am blocked on an error that I do not understand in th pkg_postinst
> section.
> the error code is: AttributeError: 'module' object has no attribute
> 'getVar'
> 
> As the only getVar is happening  in the Version setting
> VERSION=${@bb.data.getVar('PV',d,1).split('+git')[0]}
> I wonder if something has hanged in bb.data but I could not find
> anything obvious.

bb.data.getVar() has been deprecated for a while and was finally
removed. Use d.getVar('PV') instead on master (no additional parameters
needed, expansion is on by default).

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




