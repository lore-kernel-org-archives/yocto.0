Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825B5E013E5
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 09:06:17 -0700 (PDT)
Received: by yenl5 with SMTP id l5so2713589yen.35
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 09:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=BINjEZaHzHcWieuqXI2b4UnWSW5Qb44kyngjicyxQTE=;
	b=ZzojA28OrHijMzkP2gyPBHU8Ea7pmV0VqtPqSKhz93zkR2AMfCu3o6hvdlzMignLwm
	Mfk25VGLkVyZ5/XUK2ajRG2jgYkKURKHlf9SaGGABPkLpH4/42FoSlODY6whmH2qBg/i
	sDyk6gDw+yAIwm6EKIsrjzHqSMNVeBn+sMokNAlPcplXgnV9wdWjsbey9i55xkM24HCm
	2x6WSvg9KEhyfwd3Y6E111fT9ypvRFHNBcrCjTymIqNt6BAH/noYomg0UiZkCYJtJMeD
	52GNi+prNEzigL5+vDZMjMTLos7TntPOJZ//kCz+qOTb4MTx3mWwV5rt7PjW9BTNfVHA
	1eeA==
Received: by 10.236.146.104 with SMTP id q68mr4249236yhj.28.1340553976841;
	Sun, 24 Jun 2012 09:06:16 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	q10sm6753074anm.16.2012.06.24.09.06.16 (version=SSLv3 cipher=OTHER);
	Sun, 24 Jun 2012 09:06:16 -0700 (PDT)
Message-ID: <4FE73AF6.2060008@gmail.com>
Date: Sun, 24 Jun 2012 12:06:14 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: prerequisite tools for making documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 24 Jun 2012 16:06:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I had a need to look at the bitbake manual in the 
poky/bitbake/doc/manual directory and tried to make pdf.  I had all the 
prerequisites listed in the QS guide.  However, I found the make failed 
due to a number of xml related tools being missing.  I installed those 
and got the pdf manual generated.

Should we add those xml tools to the prerequisites?  BTW, I'm using 
denzil branch and referring to the QS guide 1.2.

Jim A


