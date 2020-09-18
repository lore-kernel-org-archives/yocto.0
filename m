Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
 by mx.groups.io with SMTP id smtpd.web10.13773.1600438540000470593
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 07:15:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=dPvHsQMe;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.176, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id JHAlkrOLQiGJlJHAmkkOq2; Fri, 18 Sep 2020 16:15:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1600438538; bh=uUntAxb7cilATbEcW4a7GOAgMAkABQn9KHKDIs8V7Ew=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=dPvHsQMeY/6MbL8hYo31WFINGgLXL7Aj93rL4WnPulwEL2cvL4hE2fV0wAeusMm6+
	 7CxSpOoxauaRC5iLVyE8rdvJ4YInRtCR5d51jjJo/JR+nXvsX51Kc/NXWxN5go1pt5
	 eUTwQ1VXIuwRo1azN4vgAH90q2q21/d7sYhpjBLPBOH3uoUMrYrIwAqNawazS/VVZR
	 j5D80Bvql0m2t2tZi/zD7FUScffxMruGPRQYFPek1C7ZsbMouHW3k8al/Asa5JqMub
	 M3uHLrwht2meBAVRbUWaMeSLhzjNupS0Yc3y/uWSTq5c922KVyd6xTOljXiEs29/mX
	 SZkv2R8EDinTg==
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: wic direct->vhd
Message-ID: <ecf4714c-f3e0-4289-dfec-8329c5f28e28@faresoftware.it>
Date: Fri, 18 Sep 2020 16:15:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfNI60cCzYyT2DlQmKAbJjkZhDD5gwsyGMo5Ywk1PrQZsSemxh86zAB/xVo9xucHWczmK+Snt7Hvplsqj7XGCQY2UuIZB9JM20uhzQqxAQJSPYt7dXs9V
 DjPUegg728Yi7KcS6C15wxxWdvkxRBDBRTbHFV2dsXRx61sTUETngnoPtRMBxjB3Jp2AHabpObXdcw==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working with dunfell.

With wic to create .direct image.

Which tool I have to use to convert .direct file to .vhd file?


I try to look .vhd and .direct file with 'file' tool, but it seems 
.direct and .vhd has the same header.


Best regards,

    Mauro

