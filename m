Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B602E00A54; Mon,  5 Nov 2018 09:11:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B73EDE009AA
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 09:11:19 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wA5HBF1d031321
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 5 Nov 2018 17:11:16 GMT
Message-ID: <d73ad6ed5c8af98ca7fdff6aeb42f4395028d7cd.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>, Yocto
	discussion list <yocto@yoctoproject.org>
Date: Mon, 05 Nov 2018 17:11:15 +0000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Yocto Project Source Mirroring - Now working correctly
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
X-List-Received-Date: Mon, 05 Nov 2018 17:11:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

At ELC-E/OEDEM there were reports of problems with the project's source
mirroring. We've also had reports of problems with people using http
only connections without access to git (e.g. being behind http only
proxies).

Michael and I have looked into it and there were some problems caused
by the new autobuilder changes and switches between NAS systems on that
infrastructure. Those are now resolved and all data has been updated.
The git mirroring issues were also resolved by tweaking some of the
mirroring commands.

In order to stop this regressing again without us noticing, I've also
written an oe-selftest which will ensure this continue to work as
intended and alert us if it doesn't.

If anyone does see any further oddities, please let Michael and myself
know.

Cheers,

Richard



