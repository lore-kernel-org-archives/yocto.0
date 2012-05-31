Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id EBCCBE00723
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 03:54:37 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.247.3;
	Thu, 31 May 2012 12:54:36 +0200
Message-ID: <4FC74DF9.3070401@enea.com>
Date: Thu, 31 May 2012 12:54:49 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Originating-IP: [172.16.140.132]
Subject: PR and bbappends
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
X-List-Received-Date: Thu, 31 May 2012 10:54:38 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

Is there a good way to get the layer name ?, I want to add
PR .= "+${LAYER_NAME}.0" to my bbappends for clarity and versioning when 
having multiple meta layers.
Where a bbappend:s on package X can reside in one, two or more layers.

Best Regards,
David


