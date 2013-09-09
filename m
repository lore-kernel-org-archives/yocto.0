Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E490FE00404
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 14:33:09 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id u56so5857623wes.35
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 14:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=+eD/8fDIVRHM1YZKyoJhdLtcE6pddDRtdvLItALiJTE=;
	b=hEcJAi+yxt/SG0kAlFPa+/u3EmCOI8SdzQC7W0b6PpyXCu+YrMbNty8NZiioNvQ+n/
	Y/5cuLirwSbfBdpzQja7IsxdeYQmAru5uEgOHcmCa1Tbtt3MZEVfdXrMxM437+RAKp5A
	GmNK0JuxMmj1s3yj1Fu60Dt8sSHK3IQWKif/pzVQGhcYC6yXB1TkPXUkENixm/PX1TzU
	yfdrVPbl9+tM2YrMY8ZmLtoBNmyOcLIoZVaGEZL2T9qmnBYu2EBHcLRh9r3kRMsAwqVn
	aQCxwIkfJyyDnZxxy/CW3BSOVSBFAqdxdz1EHASkKBqeFP5UIUpUHciNBwq/Ta6ZQp8R
	OSpA==
X-Gm-Message-State: ALoCoQkEhUENoPoodP05Kz2oRLXcCoFkvy00RmXbwXUOR5qNXHknzXOAougr7ipTv4m81xkVFakn
X-Received: by 10.194.63.228 with SMTP id j4mr3387064wjs.34.1378762388054;
	Mon, 09 Sep 2013 14:33:08 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id pn7sm80211wic.6.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Sep 2013 14:33:07 -0700 (PDT)
Message-ID: <522E3E90.40105@vtkloud.com>
Date: Mon, 09 Sep 2013 23:33:04 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: phusion passenger
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
X-List-Received-Date: Mon, 09 Sep 2013 21:33:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Has anyone tried and succeeded to build passenger for apache2 within Yocto ?

I've tried to do this inside a Yocto distro booting on Raspberry and 
have a strange failure as shown below.
I checked and of course I have string.h in /usr/include...

More importantly, has anyone any guideline about how to _cross-compile_ 
passenger ? I don't want to build it directly on the device, I want to 
build it from my PC and deploy it in my distrib.

Thanks for any possible help !


Jay


