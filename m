Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DF86E009A1; Thu,  7 May 2015 17:41:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4170CE004F6
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 17:41:10 -0700 (PDT)
Received: by iecnq11 with SMTP id nq11so52690269iec.3
	for <yocto@yoctoproject.org>; Thu, 07 May 2015 17:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=jM848z7JnWvB3A170d+iIaM2PZhYjM/S3rFNBBx04ag=;
	b=tXg1coYM1g5KsYoJs9NwCOhggkQfUf3lkNydOYOgacBNazx9aC3+PuhNUUNpA9c/sc
	vY2DiX5fol0/ir7Qj4MpjmOFB3u24zLtGABOM2XV7tzqdrfM1UXvwB+v6hy3qEFQm4ZQ
	474qeJZMPN2VwClZrzgBk8hOf582Ch7f9fYUQ/WZqMstkqJxqlrU1/iMRJAkWpI9YcvP
	JewpI25CSTesz8SoKiecvGo5A06gYqjJOk7f9SnHQ8+g6GW3BNRmmmoMp+accJbaOMVE
	pU892C0JNiXtjYrNAsPdWLDAFYwwUDBkleDlfz08+MiIHR6nbnygd/FhyZlqC+n59oMO
	id0Q==
X-Received: by 10.43.96.10 with SMTP id ce10mr1328650icc.59.1431045670421;
	Thu, 07 May 2015 17:41:10 -0700 (PDT)
Received: from [192.168.141.83] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	69sm2422579ioz.10.2015.05.07.17.41.09
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2015 17:41:10 -0700 (PDT)
Message-ID: <554C0625.9000304@gmail.com>
Date: Thu, 07 May 2015 20:41:09 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55483F50.5020803@gmail.com>
	<554A76F1.8050407@gmail.com>	<554A7893.3060701@gmail.com>
	<554A8A7A.6030404@gmail.com>
	<CAALGJZaMCx0-daBCjkP_NrmnheTJQYLW2hU2bSpTW1ij0pMb8w@mail.gmail.com>
In-Reply-To: <CAALGJZaMCx0-daBCjkP_NrmnheTJQYLW2hU2bSpTW1ij0pMb8w@mail.gmail.com>
Subject: Re: [oe] Odroid-xu3 support
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
X-List-Received-Date: Fri, 08 May 2015 00:41:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 15-05-07 02:56 AM, Christian Ege wrote:
>  From the ODROID family I do only own a ODROID-C1. If there will be a
> combined Layer for all odroid devices I will  port my recipes to this
> and can help on supporting it.
> I am mostly interested in Multimedia stuff and I do plan to setup a
> separate layer for Kodi/XBMC on amlogic based devices.
>
> So how should we proceed with the layer jungle?

Ideally meta-amlogic provides things specific to the chip itself (vendor 
kernel? vendor u-boot?) and meta-odroid contains things related to the 
various boards themselves (tweaks specific to each board).

Maybe the beaglebone provides a good example to follow? (meta-ti, 
meta-beagleboard) Although I'm not sure how clean the separation is in 
those layers.

