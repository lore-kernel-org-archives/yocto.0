Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EA0AE01652
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 14:37:49 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kl14so3382229pab.11
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 14:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=RkzWDxYDEjx/VNZo+jg/mFNXd7GsACwgrf/z7hTiyiA=;
	b=q5AGnovdVj5342j/xVLlUcG28VPjdgSNMxSCX+GZzRVP6xJoLRrjV2ahEYiiXKWObP
	DsHwugXr9evYmxK+affOAiFS9K2sNft70HrtlQW8frKMOXTlHDmJLUYFgICdmQ+FUvrt
	aYQSJU7kCFNffsjKW7zIGQ2udMlYdFzbPhrc5Gz77PAoDZdDl6zbTkSzpsoU7IohrDHv
	5j/efO8myhKy88gn4KyF3OyU9JcB8p42LkFPBgFOA9mcLpFCCwPKq+BaNF3zEvGCpZzS
	1aH5er1gGgAeNb1Zytyx9csW1TlYFzXpMp62wJqYz3Juf7U6e/yajM+7RRVa1Y5i4CLx
	7A6A==
X-Received: by 10.68.203.163 with SMTP id kr3mr16196146pbc.161.1381441069400; 
	Thu, 10 Oct 2013 14:37:49 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id
	kd1sm65008122pab.20.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Oct 2013 14:37:47 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52571E27.70308@gna.org>
Date: Fri, 11 Oct 2013 10:37:43 +1300
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, 
	Zhao Yi <yi.zhao@windriver.com>,
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
In-Reply-To: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Thu, 10 Oct 2013 21:37:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/13 11:35, Flanagan, Elizabeth wrote:
> All,
>
> The final release candidate for the upcoming Yocto Project 1.5 (dora 10.0.0)
> release is now available for testing at:
>
> http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc6
>
> poky 102bf5e0f640fe85068452a42b85077f1c81e0c9
> eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
> eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e
> meta-fsl-arm d334d3c7388e41d720dd0c8e0cb76fab51a6e46a
> meta-fsl-ppc 25ee629b826a138ef407c113f776830e5d822c01
> meta-intel a1138af21f6ba85e79d1422a3f0a3e0c4f658a90
> meta-minnow ad469d78a1f56abd3b7d5103f1e0344cb10684b1
> meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222

        ^^^

Qt3, really!?! It's so unbeleivable that I had to check if it really was 
Qt3, and yes it is!!! The commit log [1] is very interesting.

Qt-3.0 was released in 2001 (linux-2.4 era), Qt-4.0 was released in 2005 
(linux-2.6 era) and Qt-5.0 in Dec. 2012 (linux-3.7 release)...

Anyone fancy a meta-linux24 layer? Or maybe a meta-gcc2, or 
meta-xfree86, or ...

Please excuse my sarcasm, but honestly I would prefer to see a meta-qt5 
here!

Best regards,
Chris

[1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/log/

>
> Please begin the QA cycle. Thanks!
>


