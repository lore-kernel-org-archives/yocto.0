Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E4FE0027F
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 10:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fosstel.com;
	s=default; 
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:Date:Message-ID;
	bh=figGAXDSg3oeDqX5xmZLlz1bi9K8FMDbdHdPzbC79Dw=; 
	b=ObBwqssWq6h0OIUNG82QZB49VGNS7yh663i0ODq16jJzhhUyJ56mKCfcNOB2Y2C3D15TADv+sBXIQFyejRPbFptDmcAHcnDis5CQkp4+c9+xIgx7ojyqvHdPAKQ66I1E;
Received: from [128.224.252.2] (port=19075 helo=[128.224.140.91])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <psanchez@fosstel.com>)
	id 1T7VPY-003Vab-9o
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 13:53:40 -0400
Message-ID: <5040FA23.9070103@fosstel.com>
Date: Fri, 31 Aug 2012 13:53:39 -0400
From: "Pedro I. Sanchez" <psanchez@fosstel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Subject: U-Boot and missing tftp command
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
X-List-Received-Date: Fri, 31 Aug 2012 17:53:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I just successfully built a Yocto image for a beagleboard-xm card and 
noticed that the U-Boot image is missing support for the tftp command.

How do I go about recompiling U-Boot to include this command?

Thanks,

-- 
Pedro


