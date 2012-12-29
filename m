Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01835E0045D
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 11:05:21 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>) id 1Tp1f1-0007Pt-5a
	for yocto@yoctoproject.org; Sat, 29 Dec 2012 19:01:31 +0000
Message-ID: <50DF3EE1.5050001@dynamicdevices.co.uk>
Date: Sat, 29 Dec 2012 19:05:05 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: How to include RPM database into target image?
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
X-List-Received-Date: Sat, 29 Dec 2012 19:05:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Presumably this is very obvious, apologies, but I can't track down the 
answer.

I'm building a distro based on Yocto for a Raspberry Pi but I don't seem 
to have
the RPM database / sample feeds installed on the target image.

Having hunted around and googled I can't spot the environment variable or
recipe I presumably need to set/include.

Can anybody advise?

Many Thanks,

Alex


