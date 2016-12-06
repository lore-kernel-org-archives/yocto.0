Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799CBE00C6A; Tue,  6 Dec 2016 01:45:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18716E00C59
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 01:45:26 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id l140so30284027iol.3
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 01:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=pjnuEV3LBuCGwWctRjIQ6wLhR53ig/3eSf7D6jkw3UM=;
	b=R95rOqIdUo0OfJTUtzuZa9No4/QanEdiXbgH+RGjuWArXdZobBA3Ai8pvBU5BqJUaP
	dTgY1y0pr7bZPb9w7YIh5TTbuxZp1wala6V5UzYPfwVogcJbQKKj7+JNnSogaRFn3LMB
	Mlsq6g5X5iMxAlklKTm73ZqN7iXIo25Z3ykzhjgNgQCNaZMMVTbTAG4w5QRy7AMg1IvO
	ipMv64eMJTOkJ7BCHG7aaEa5gyIjBUmRY+UUOWkMpzBvNRebBITu86DsdAJxMWpSdWJ2
	V/E+xULHAR9I6usgXHIShDWdrcKBJ+iQx+qRMxuCO9at6tmHA1OykaYeuJGQWpt1y2qR
	878g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=pjnuEV3LBuCGwWctRjIQ6wLhR53ig/3eSf7D6jkw3UM=;
	b=myHqUdVwGdGtaUlvWo2DTGwD13K6u22rcFmsRwg5pZl5ysoqpoe6L77D41r+3ANgJW
	um6Cgm4au0Tu69ZQp5u3V70Ap/MkbTWyYty5hpY29ZV7GIRVNFk1BB8qnjNWHCwCyhA5
	Zb3bFwz3Im1Nq2Vz+uEv2WSDTTVz19Gax2RFOR1GuFPR8082U9W42IeBU3HonYMPehOz
	zQBKf4W0HsfyJ0AHIFVdLb6ja4wXqbZRr6ExNi6HRKGyMUPNf8gBl0fhUpVWUbhDz8fT
	aE4WtxYp7/n12RxPC1J+HXYCQZBlO7x4cV76AC2cBfGKxEnYNoq0yX6A5hvIpvMVkffs
	vKHQ==
X-Gm-Message-State: AKaTC00v/GBp+1P0SvVZftDHO5h74kNOX9JOVqyvO5Oyv8TjFYI7XfF/9ljgXs0xNGVmW2Sb
X-Received: by 10.36.31.200 with SMTP id d191mr1466348itd.70.1481017526186;
	Tue, 06 Dec 2016 01:45:26 -0800 (PST)
Received: from pohly-mobl1 (p57A5612C.dip0.t-ipconnect.de. [87.165.97.44])
	by smtp.gmail.com with ESMTPSA id
	e35sm8761242iod.32.2016.12.06.01.45.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 01:45:25 -0800 (PST)
Message-ID: <1481017522.17535.38.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Stefano Babic <sbabic@denx.de>
Date: Tue, 06 Dec 2016 10:45:22 +0100
In-Reply-To: <30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>, "Lopez,
	Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 06 Dec 2016 09:45:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
> Hi Patrick,
> 
> On 30/11/2016 15:59, Patrick Ohly wrote:
> > I've started a Wiki page
> > https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> > moment, but might as well be mentioned already now.
> 
> I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
> like to edit for better explanation on some parts. Should I try to edit
> directly the page or is it better to discuss it here ?

Use your own judgment. If its uncontroversial, the feel free to edit the
page directly, otherwise let's discuss it here.

If feel that putting information directly into the table is too limiting
(it should be brief), then feel free to start a complete section about
SWUpdate. 

I'll do the same for swupd. Editing the sections should be possible
without conflicts, we just have to be more careful about editing the
table concurrently.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




