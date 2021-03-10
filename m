Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.2431.1615404691565507410
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 11:31:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=aSx3Db+F;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 30CE2BD046;
	Wed, 10 Mar 2021 19:31:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 30CE2BD046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615404689;
	bh=xHGFUOVy55F9L4wLxBFBiApCM3AatqAAybwbF1YDsjk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=aSx3Db+FUnWvi0nwoZ5xpRkTAQGB0+cOIqu1Wddg5pcyUIqZBj+py11cou/0CeX0C
	 7rZ7hg6yy0rUGvay7fMcWlXLIhXVr+GkFphOszkT7x+PwFfItE4+KwxoV614W5t3rc
	 YdaTY3rk88SoEQXpJE/aCVpWVmrqe5h+dbugWnQj9ED2xCmfq4lMyNOerWEkbZb9WP
	 JhH2f6qfe2EQc8UYRb9dZ+SSjc/sCWFb5vWReCxA1syP6aafcuRpBKq+LA+a10xlRu
	 sE5jpZsCSpNCKzjDdAAIrKMEANsuIdLr3I4/UHn0Lp7V16urEweERtVEDq4VLnOvdV
	 mKD9seuSjx+rg==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXZEYq2VO_Xf; Wed, 10 Mar 2021 19:31:25 +0000 (UTC)
Date: Wed, 10 Mar 2021 14:31:24 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 1B95CBD03A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615404685;
	bh=xHGFUOVy55F9L4wLxBFBiApCM3AatqAAybwbF1YDsjk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bFzuM1QbIbudSbb9CvYgoRN/rUQFcz8+ni9gPNNrlGevKNApUopkUm2BPZUoijaX2
	 6Js9uWm04y7rxXUPTZn/3BG4XUPU6b6wUu45gGwjiYR8JQWJFDs6TWxPlB0kBA/hqe
	 9N0e2VFZ+wERAYOLxYe3sZk4BCKgR9VIrBx3l/D/f9YQsiSeaKN5bsvruGqNbp5iq2
	 ifqTAuFNY/pXLO2SMuHy12GQvQrpO/uTmWamNIn7gVqgn++PSHb4gyChainUZvqAtC
	 braiXCD82swWoOTIBnQ3MdeogQw4GAdbful6T7RfKYPrJl/0t83ALeB47D+Fw7oEMz
	 rmdsWzLCr5j1g==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Assign IP address at boot time
In-Reply-To: <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7d3df13429d227106286f966cdcbd501@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit


> What is your startup manager? systemd or SysVInit?

systemd
