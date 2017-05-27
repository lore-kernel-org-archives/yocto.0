Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8752EE00ACD; Sat, 27 May 2017 07:25:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4792]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1320 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 May 2017 07:24:58 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [108.163.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CDF3E008F5
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 07:24:58 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se8.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dEcIy-0005Mb-VE
	for yocto@yoctoproject.org; Sat, 27 May 2017 09:02:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:Cc:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=cdv3fVeVD4dabTxRsNyWrccqHi7vRAQ9tUAXO18JdlY=;
	b=1Mo/LBrI+eD1z/rn8ARzv71tqF
	EjCQ1eoP/KCqVEUm0cnm66S+u6wQg4e795B6ev7x8bWg131JhERasUWbmHv3LLgoJ8+RwGt0FAnGR
	RDfo87loIkAvnFtmN2+yZSw33Kb+L4R5YrLGi8DS2f+s3NX1DCHk+/lvztUpSfXtNlPM=; 
Received: from [127.0.0.1] (port=54154 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dEcIy-000326-QM; Sat, 27 May 2017 09:02:56 -0500
MIME-Version: 1.0
Date: Sat, 27 May 2017 09:02:55 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <6c56226c108dc3cd58840e44346907d6@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.2.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.76)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhJWdbsu/PGngF
	sP6QHv82uiZTaFCDa9A7C/jInU0NPk5o9qUFE8XEupMgL9lQhc5MhXE3Kd6zku9YzkFh73wKYPbj
	aPZXen3YvWHScRpGw7A40pIiLcKdagK+IDwjGrwSuUnY1027xqL0Fif4+YbzLOfHzJ6mVE7ewsip
	SVIfs4a4EJFUEiJSkktVxLsAAQ6dYb30GV/LTTOHpImWPCex54onRWlBmDnjzYnePIvOXJvlgTl6
	fJxyntEfhZCKje4ZpF5GFn0VGJE1yVv3RLa3Fi7/+fOTvqVqTiiM4NskccT/51HuFxEGlQ85t+9R
	s1HAWpqH02ENgZUUUrBwtgAspuoAEMCxBXuH+MlsW5Hvjb1aa40DxZPJuLUk3zkVKd8p5Y7I2CWT
	8Blyjv8ff7POYIFMpCokCZqlANSRVNjsUIx9Xvup00ykaCetGbgwh6w19yu3PsN6rObOy/Hw4klu
	yN2tI4ORboLLJ1/iZb6eaQlxyGe8Oo3j1g27BsRrIsZRZ6VZsjZEXqWgl88PYDZKsoPAgTtUp75u
	qlx0KezvZHV3PH/TkDbEnSeN2h+hW5QJg5n8VBio8m6UFbwbb/Mty5ZpoZqL7LhAqq7tNGgOI+lP
	SCPd8HVNGCW5Wc0WGw45FRCRWqAFrubZmsOKYvoqjm7PCg9tvEQRTTceLAjtQPyIsMaTJXc+b701
	bY/z+ORoPu7uSwthmrG54ls3Q+t2jtEoufPkAYyNg1ifInTyTACksq4nlXm9Ho5TL+gTF2sKo8KF
	0pLaKamO195iRNb7mrJplnAJKxa1DiBAS6sMnUxIx0yumiLSNy+8AkPznFthC2Ai3yiEdOoiUhtY
	DNYEHg==
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
Subject: Re: etnaviv image
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
X-List-Received-Date: Sat, 27 May 2017 14:25:01 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Great that you managed to get to get open-source graphics on those 
boards!

I would be very interested in the i.mx6 stuff. In roughly a week I'll 
fly to a board manufacturer to train some of their customers in Yocto/OE 
and friends.

Maybe I can get them to send you some i.mx6 quad board to try there as 
well?

Would you be interested?

Regards,

Robert

