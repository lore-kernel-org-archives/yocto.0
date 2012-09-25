Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFB2EE0027E
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 09:55:15 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TGYPe-0006fY-M1
	for yocto@yoctoproject.org; Tue, 25 Sep 2012 16:55:10 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8PGt6ZA012098
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 11:55:08 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX18756n2ieQI5LITb5/I2vtrDPL9hacOE7E=
Message-ID: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: yocto@yoctoproject.org
Date: Tue, 25 Sep 2012 11:55:03 -0500
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Subject: Documentation clarification
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
X-List-Received-Date: Tue, 25 Sep 2012 16:55:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

should      
KERNEL_FEATURES_append_qemux86="cfg/sound" 
have a space between the " and c?

My understanding is that append does a straight append with no added
whitespace, so that would cause the line to become something like
"feature/neatfeaturecfg/sound", which I don't understand how could be
right.


This is from the sample for KERNEL_FEATURE in the poky reference manual.

If I understand things correctly and the sample is just malformed, I'll
open a ticket against it so it can be made consistent, otherwise I
appreciate the explanation so I can get my head wrapped around this
properly.



