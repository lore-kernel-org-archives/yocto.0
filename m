Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f53.google.com (mail-yw0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994C4E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 07:53:54 -0700 (PDT)
Received: by yhp26 with SMTP id 26so1334727yhp.12
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 07:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=8hYqRoiEtdsEWxS/lCdI20apRNbBYElf5fBjDLaCpKQ=;
	b=oXq3WD9kKKDV7kldTrIstGnpfr6NOsqYXTYLZ+QaKKa7+0C4jQI2Pl6aTulRWDh+r4
	hhrHgNRFCQ1penSilNfsx8rU67sS1WJuqMV2zuTZ0sY6itVqo+VzkHjDZr+OTqjbzzOL
	z6EiD3RFh5Ya7JvjhZc9+a3+oYeb2qQKtGnTaYeV7NppvSLmNSwvlC/Te5DLsBye6QeI
	G0CnLYB4UocA9rSnlHZzhax2UXAKggkfG2rRQ48+8ddKgXmFEUKE/4cwiLYOzBd1+SAT
	UrlYN15oPKm6H5/SK0fgIE7dZE/qQpoiD1QUTebGdns0HifyJiXwLSRt0Ol/21t/14gl
	W9/w==
Received: by 10.236.181.199 with SMTP id l47mr22829636yhm.85.1340808834085;
	Wed, 27 Jun 2012 07:53:54 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	z42sm147572040yhd.1.2012.06.27.07.53.53 (version=SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 07:53:53 -0700 (PDT)
Message-ID: <4FEB1E80.2090404@gmail.com>
Date: Wed, 27 Jun 2012 10:53:52 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Development Manual Appendix B redux
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
X-List-Received-Date: Wed, 27 Jun 2012 14:53:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Just to simplify the previous thread on this subject.

To solve the issue I brought up about the Development Manual Appendix B 
examples, it boils down to this:

1.  A denzil branch of poky-extra has now been created to solve the bug 
I experienced.
2.  The only instruction that needs to be added to the appendix is to 
have the user checkout the denzil branch of poky-extra to match the fact 
that they are using the denzil branch of poky.
3.  The warning about a kernel parameter mismatch should be ignored.  A 
note to this effect would be helpful.

With the 3 items taken into account, the examples run as documented 
either doing B.1, then B.2 or just starting with B.2.

Jim A


