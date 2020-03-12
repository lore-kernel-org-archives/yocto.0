Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9955.1584021999743186315
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 07:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=DiRCdvAe;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68906E0179B; Thu, 12 Mar 2020 07:06:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.158.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd03116.aruba.it (smtpcmd03116.aruba.it [62.149.158.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE4FE01757
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 07:06:34 -0700 (PDT)
Received: from [192.168.24.108] ([93.38.119.136])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id DS6W2200T2wfazh01S6YUT; Thu, 12 Mar 2020 15:06:33 +0100
To: Yocto list discussion <yocto@yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: SDKPATH: how to change?
Message-ID: <890f4aad-1d52-ced1-2a0f-f2a482530aa7@faresoftware.it>
Date: Thu, 12 Mar 2020 15:06:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1584021993; bh=a0TN17IVHZekF1FWwqINvCOTOq9QAjzDn1gP8rTwL0M=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=DiRCdvAegJOMmFUHpxgMxZwbaUNGQgOa+3x/cl8rT/DtMqCnK7snR3+XlOR2jz/cq
	 5a9l0biIipYAn2NRE62ml2N8z1QbEDXPdpwbubSP0nk6/jYBv8JmVVNxRESwAM89K1
	 9y20bdPjBUrNlj+4dXS7Tw38U5wOUjeiVQ+WTQ+0gSFtrI93mbajY7bylkuNMQ4p52
	 JVtcux+5kjvSPDCtm+RK+1iVo9VqGmWVv/SH9fZFMOE8GSmJrlLkFI4gcWkURo4ohA
	 MmgqGBh22VaFqc43wISVO5YiMfGmMVddI/0VR9LFO/GkPG0mh6O4riddxtAqBfYkjK
	 jdiVdXwBaLeXg==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all

I work woth imx6dl-sabresd and Krogoth.

When I build the sdk ( -c populate_sdk) the final .sh file get the 
installation path as

/opt/fsl-imx-x11 ...

So I think the path is build from ${DISTRO} var as

/opt/${DISTRO}


I need to produce 3 sdk with it own final path
/opt/fsl-imx-x11-dev1

/opt/fsl-imx-x11-dev2

/opt/fsl-imx-x11-dev3


The form should be

/opt/${DISTRO}-${MYDEVICE}

So I'd like to use a common .inc and change the MYDEVICE


But I don't find where the final sdk path is combined


Any idea?


MZ

