Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D00E009DB; Fri, 17 Mar 2017 17:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC38BE009B9;
	Fri, 17 Mar 2017 17:23:54 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id w124so39827234itb.1;
	Fri, 17 Mar 2017 17:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GfI4qb2t61Di8Qo7n0s7ENiThoLO2HnbO0CszOtVCLE=;
	b=fveQ2HNjrDHKmUQRHtHcbFpdUH3EcTTPwK+RgLw4yyz3rFN2kUHEySRAOAdVEiQkuy
	Hpl0OG6U9LYXWratf67hLa7RwyGX09JFalchwxWxPXauv5ALRjeAyhdDVBYcPJQvnEDq
	23xBdiBpISElmWGANFhIQvusiiWGAmJutbAAsg/Gjza7/sU4rb4i8GhCMGTEtHctmcfF
	3LSnB9tPjf77YC4puclG4//VUOyd3Pbm+lqf7ZZF/SKzi7HWm5CVsJTjpaQMHZpHGv3L
	M7IU652v/6oRm7n3cVTH+oXcIX5X0MTYp67DQtDCr3h7FXsLVhdYbpVuEINtIAgQw014
	Bm0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GfI4qb2t61Di8Qo7n0s7ENiThoLO2HnbO0CszOtVCLE=;
	b=pXpDVqDeLDtvf/aHehucQ9yYZ6z4jTHgWOmSLseGxZ0pA6iyBtdMLBjZziK4gfEGA9
	4di43WX10tyyFRw+tZ6pEXO9ZsXxHAlGcD1ha933CAueCVPB5rEqGaOPrPWHaYMeJLiG
	7weJERn1j3XCMqIs11dK9+7WMoJ25Kg7zGnVwW0v/9LOa9eIh0K19PXkYLwhcJdwJDH6
	jvQND+gyd8owL0P1QiFMhQv/QXHJqbdDRaVfPjaYeG9u8Ug+W1cqA40mUZNFverifcLy
	tB25JnjjcF0X4lyvhcGsL1uo4iQPQqhAHWDC8K9yTs6Twn3czYXMiVGmHkW8DKlJ05me
	Q8mA==
X-Gm-Message-State: AFeK/H2h4RZrLUoOfHR+DE1BsmlW55VyuEgtl7TlwVGjgtJa6CCrYrI0e3elQrW1JqQjaA==
X-Received: by 10.36.82.82 with SMTP id d79mr888933itb.29.1489796634048;
	Fri, 17 Mar 2017 17:23:54 -0700 (PDT)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	l198sm1793909ita.10.2017.03.17.17.23.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Mar 2017 17:23:53 -0700 (PDT)
Date: Fri, 17 Mar 2017 20:23:51 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: "Duran, Randy G" <randy.g.duran@intel.com>
Message-ID: <20170318002351.GA3773@linux-uys3>
References: <ECD1212B70630641AD7EB42F3F5E771E36ACE7D3@CRSMSX102.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <ECD1212B70630641AD7EB42F3F5E771E36ACE7D3@CRSMSX102.amr.corp.intel.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-intel] Installing a Yocto image to emmc
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
X-List-Received-Date: Sat, 18 Mar 2017 00:23:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2017-03-17 @ 11:19:30 PM, Duran, Randy G wrote:
> Hello, I am trying to get information on software or procedure to flash
> a Yocto image on to a Joule's emmc not using normal steps such using a
> bootlable USB nor sdcard. I am attempting to automate flashing an image
> on to device without any human interventions. I am looking for something
> like Platform/Phone flash tool software equivalent for android devices. Any
> information is appreciated.

Flashing to a board's eMMC instantly puts you into "vendor-specific" country.
Each vendor/board will have its own way of doing it, usually involving vendor
specific software/protocols. If you're lucky the vendor will have implemented
android's fastboot, which makes it more or less non-vendor-specific, unless,
of course, they don't really implement it properly... ;-)

Newer versions of u-boot have fastboot support, so, if enabled, you can
sometimes flash via u-boot.

The toughest part about flashing to eMMC is the procedure required to put the
board into the mode to accept flashing to its eMMC.

The dragonboard, for example, requires you to hold down the "volume down"
button while rebooting, then you can use fastboot. Do you have an easy way to
automate holding down the volume down button while rebooting?

The firefly requires you to hold down the RECOVERY button while pressing the
RESET button. Or you can just use "dd" from within Linux to zero the first
couple sectors of /dev/mmcblk2, then reboot. The protocol to flash its eMMC is
something they came up with, but I think they recently released that code (I
haven't looked at it yet).

It's been a while since I've used a BBB but the last time I checked, one would
create an image using OE and in that image would be an eMMC payload. Once
booting into Linux you'd then write the payload to the eMMC. Not sure if
there's a way to do it "offline".

So if you're working with the Joule, you'll have to find its way of flashing
its eMMC. Hopefully you know someone who works at Intel who can help with the
specifics... ;-)

