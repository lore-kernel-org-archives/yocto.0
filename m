Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFF9EE00E31; Fri, 15 Apr 2016 04:40:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00, DATE_IN_PAST_12_24, 
	FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andi.eipeldauer[at]gmx.at)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 1.0 DATE_IN_PAST_12_24 Date: is 12 to 24 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81C90E00BE8
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 04:40:07 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ar26W-0006GU-M9
	for yocto@yoctoproject.org; Fri, 15 Apr 2016 13:40:04 +0200
Received: from 178-190-61-139.adsl.highway.telekom.at ([178.190.61.139])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 13:40:04 +0200
Received: from andi.eipeldauer by 178-190-61-139.adsl.highway.telekom.at with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 13:40:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Andreas Eipeldauer <andi.eipeldauer@gmx.at>
Date: Thu, 14 Apr 2016 15:02:42 +0000 (UTC)
Message-ID: <neobei$3tg$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 178-190-61-139.adsl.highway.telekom.at
User-Agent: Pan/0.140 (Chocolate Salty Balls; GIT 94d5b7c
	git://git.gnome.org/pan2)
Subject: Different patches for different images for same machine
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
X-List-Received-Date: Fri, 15 Apr 2016 11:40:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

I have extended the basic images core-image-minimal and core-image-full-
cmdline to images that differ by installed items in the rootfs, like core-
image-minimal-web has dhcp-client, inetutils-telnetd, openssh openssh-
sftp-server installed.
Now I would like to customize the environment variables in u-boot with 
patches and create a dedicated u-boot to the appropriate image.

Any advises how the most robust realization for this would be?

Should I create a dedicated Machine conf instead of different images, or 
is there a way to conditionaly add an additional patch to u-boot ?

Thanks for helping me out, greetings Andi


