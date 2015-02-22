Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2241BE00321; Sat, 21 Feb 2015 18:02:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8618AE00288
	for <yocto@yoctoproject.org>; Sat, 21 Feb 2015 18:02:04 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id b16so11272171igk.1
	for <yocto@yoctoproject.org>; Sat, 21 Feb 2015 18:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:subject:from:date:to:message-id;
	bh=jHL3x+vuOFi17fEUhPHq7zZDx2UZ1ygZWuCROt/0f1c=;
	b=SoZfOKdslyEzC5zSfOXk77hms7rJgtdnwDjM7m/D5AfiKaEjwrfLY0rEbYTkRJzQo6
	nvAewCudkvJ58gZoY0GbBMz5kv7mgKkw+QnhPPjp0dQl+Sd7J1lEbEESwHr8RUjyCwUu
	zJ2mRDLF0biuXEOVMCtrIBdW0SW69mzqXu+AQSDL15oGRrQepdyAS3w7KO6m2rWJBCb4
	xn/pcEDvMFh3dxzye9S7TokimSPDO1lWvTBupGGWGyrPEqVBB8IlfDM5j7VDq9OTfKVE
	Kw3hXpQDoFs6/W5A1Wt5lailjG5Ov8oWY9SNtDNxH8S9d3ZVOSBvoxmqlnpu5r0hH4ia
	LTAA==
X-Received: by 10.50.32.71 with SMTP id g7mr5413226igi.4.1424570523752;
	Sat, 21 Feb 2015 18:02:03 -0800 (PST)
Received: from [192.168.0.64]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id o8sm3750844igp.11.2015.02.21.18.02.01
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 21 Feb 2015 18:02:02 -0800 (PST)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAPtbEGtZAUfU2cij7=iGv0-yfjHy05oY9vuFKVB6qcv0uOk1Lg@mail.gmail.com>
References: <CAPtbEGtZAUfU2cij7=iGv0-yfjHy05oY9vuFKVB6qcv0uOk1Lg@mail.gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Sat, 21 Feb 2015 21:01:57 -0500
To: sachin dhiman <sachindhiman123@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <B2DF9B77-2AB9-47A4-BBC0-41842762578D@gmail.com>
Subject: Re: OSError: [Errno 12] Cannot allocate memory
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
X-List-Received-Date: Sun, 22 Feb 2015 02:02:11 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8

Greetings Sachin, 
This is probably  due to not enough ram on the host machine. Can you  send  me 
the build system's specs and attach the recipes that are causing this failure. 
Thanks, 
Nick 


On February 21, 2015 9:04:31 AM EST, sachin dhiman <sachindhiman123@gmail.com> wrote:
>i am trying to build image for beaglebone board, every thing goes fine
>building fail with following message
>
>NOTE: Error during finalise of
>/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
>core-image-sato-sdk.bb
>NOTE: Error during finalise of
>/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
>core-image-sato.bb
>ERROR: ExpansionError during parsing
>/home/sachin/yocto-labs/poky-dora-10.0.1/meta/recipes-sato/images/
>core-image-sato-sdk.bb: Failure expanding variable
>toolchain_create_sdk_version: ExpansionError: Failure expanding
>variable
>METADATA_REVISION, expression was ${@base_detect_revision(d)} which
>triggered exception OSError: [Errno 12] Cannot allocate memory
>
>Summary: There were 6 WARNING messages shown.
>Summary: There was 1 ERROR message shown, returning a non-zero exit
>code.
>
>
>please suggest to fix this issue.

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

