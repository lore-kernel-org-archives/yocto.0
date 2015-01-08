Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 181D2E008EA; Thu,  8 Jan 2015 05:21:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9E9E0089B
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 05:20:58 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id s18so9088345lam.2
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 05:20:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=tWHd42kDir3yyVWUavg/NFOXDmoRECzXts1jVHEAlgE=;
	b=Qx7tCj4+N4QjDm/XwdORVciI3ICzA1YsQZiMKwlRAzjIMi1i2jJi2hFcp9fOwjFSxN
	L2vbE84AVXSTkzZtJ3G4pqNn1jvpvXR0A7gRTofWYIgo8ryWIouvsw0RBzWP/MBwQ712
	pPfs8SUlMqBTDgC0Iv5BNw39gaLaplJGAxEuZHQpHt9hAe+L/f9GoAtI2Ahd1ga56Y2l
	o1TUD0cTfQXvz+t/xBeAlRZjkvttLeMIKnzwGd+LO2xDDf2oF3hrW7LjRPWGDxgOu2lr
	nMC00RKV3QKD2DbwNJtQj1dIwjb6pHTYZqhgfVcu5rD61YevUtY4nf4qmtY6cRf86acI
	nYTw==
X-Gm-Message-State: ALoCoQmQW8J4PAvcupAiDY9WHdSUa6UDBcd8rHXYwcpIwykit5/A+VfAfrZhnsmrDMVkVAu3W1A5
X-Received: by 10.152.234.35 with SMTP id ub3mr13654213lac.70.1420723256424;
	Thu, 08 Jan 2015 05:20:56 -0800 (PST)
Received: from ad.chargestorm.se (81-232-163-241-no29.business.telia.com.
	[81.232.163.241])
	by mx.google.com with ESMTPSA id 1sm1136377lal.20.2015.01.08.05.20.55
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Jan 2015 05:20:55 -0800 (PST)
Date: Thu, 8 Jan 2015 14:20:53 +0100
From: Anders Darander <anders@chargestorm.se>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20150108132053.GA5973@ad.chargestorm.se>
Mail-Followup-To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	"Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
References: <547988affb54758502fe31b4a9613e00d927d5c0@webmail.adam.com.au>
	<alpine.LFD.2.11.1412301423040.11537@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E9070A@ORSMSX101.amr.corp.intel.com>
	<alpine.LFD.2.11.1501051201210.23745@localhost>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1501051201210.23745@localhost>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
Subject: Re: is it not a *requirement* that layers start with "meta-"?
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
X-List-Received-Date: Thu, 08 Jan 2015 13:21:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Robert P. J. Day <rpjday@crashcourse.ca> [150105 18:09]:

> On Mon, 5 Jan 2015, Rifenbark, Scott M wrote:

> > If anyone can locate some scripts or something that actually does
> > require "meta-" to be prepended please let me know.  That changes
> > how we describe this.

>   as an admittedly simple example, i ran across this in oe-core's
> scripts/contrib/documentation-audit.sh:

> for pkg in `bitbake -s | awk '{ print \$1 }'`; do

>	... snip ...

>         if [[ "$pkg" =~ ^meta- || "$pkg" =~ ^packagegroup- || "$pkg" =~ -image ]]; then
>                 # Skip meta, task and image recipes
>                 continue
>         fi


>   checking that the package name starts with "meta-" seems to
> pretty clearly suggest that it will be treated differently than if it
> doesn't. i'm sure no one is terribly worried about that particular
> script, but it does seem to show an example of this.

But that's checking *recipe* names, not layer names...

Thus, you'll have to look for another example. ;)

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

