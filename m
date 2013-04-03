Return-Path: <c.aeschlimann@acn-group.ch>
Received: from 111.com (mail.dns-net.ch [195.160.190.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB03E014EE
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 07:56:07 -0700 (PDT)
Received: from [172.16.147.83] (unknown [212.98.42.40])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by 111.com (Postfix) with ESMTPSA id 9D4A537604B
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 16:56:05 +0200 (CEST)
Message-ID: <515C4317.4070409@acn-group.ch>
Date: Wed, 03 Apr 2013 16:56:23 +0200
From: Christophe Aeschlimann <c.aeschlimann@acn-group.ch>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130307 Thunderbird/17.0.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Prevent zImage to be copied to /boot/ in image
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
X-List-Received-Date: Wed, 03 Apr 2013 14:56:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi,

I'm using the danny branch and I would like to know if there is a way to
not have the zImage included in the generated image under the /boot/ folder.

I'm trying to save on space in the generated image and I couldn't find
anywhere to configure that behaviour.

Thank you,

-- 
Christophe Aeschlimann

Embedded Software Engineer & IT Manager
ACN Advanced Communications Networks S.A.
2000 - Neuchâtel, Switzerland
Tel. +41 32 724 74 31

