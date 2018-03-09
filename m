Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E22FBE00E31; Thu,  8 Mar 2018 22:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 22:24:09 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B16E00DA4
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 22:24:09 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs48.server.lan (via HTTP); Fri, 9 Mar 2018 07:19:06 +0100
MIME-Version: 1.0
Message-ID: <trinity-070c6a88-6217-4f78-be8a-24fb5b744253-1520576346077@3c-app-gmx-bs48>
From: "Arno Steffens" <star@gmx.li>
To: yocto@yoctoproject.org
Date: Fri, 9 Mar 2018 07:19:06 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:OrCU+jeS8Wwd6DSAbp9dDIP2lfTrEeoX2kS3lpew4VY
	Gp7iEk5Qbk3s0hpJ2KsPLO4ADa/iW8goSalRo5DfIxWleRDLjt
	elyhdpQSSRVxFsORQmPDlc/+41fZls2UzhoK9Y1YPdaDmd+HSl
	KS/G/+fIwO8YtXTelojF6KYPid5AFAYi3jXye/kw8heQY5Zc+b
	stZM70JEdCu1fsLJqmDwcpPBMefKwlOJPjGj3R2uVCmvITy5dx
	ehA9zFR4n/398j8/5cu31ptRimKRDI+BUvyMYuJK4vY+g35+/M fxYXAQ=
X-UI-Out-Filterresults: notjunk:1;V01:K0:9CeYKrZh9bo=:6vRW9+sziC6mDtud1wP/T9
	OKsOoy7lQha8CFNlmisxLcngukpftTWATGFd7xGuEFnxusJmjNQw3lBY7TFfLijEjKpYGTgRn
	1TgyR9nrZN2Cy8JEm2l7fC2RfNztsQ+Zq1b+uy6uAzV5zARvIILSsDWmmSyzsKv1GwvC+CAxX
	jKGXV9tWPnP6JrLEkK5sOH4RQ//9mIBmJLwZmPh2WxVvManql8srewMhHT/jIr3UecXcGkasJ
	8C6rWKRpPoA0m9e0g+GVdwgAttDSFDCxlTIO6iIgSybSEiQZQDWIv4A0r0fCVEXl2a3FfTiVw
	IoxrdwxxQNCQ0AE09xef0EOWLV+b/Fmr5t2s2UM1db32KxzRybuBPsWkXyFPALuQFHLKsRHM8
	A4r3HgaoBlje5coqrUM5OkU6KpMklyQu+kJZB4Z18UQFilAyX1PRlLK4SS5bTCvv3FcyzxQUW
	srOSxJk0tU07czJqPDa57pHp96hfejY0V8DpI5uGpGHFXOjPixr8
Subject: passwd fails for other users than root
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
X-List-Received-Date: Fri, 09 Mar 2018 06:24:11 -0000
Content-Type: text/plain; charset=UTF-8

I have 2 extra users (added with useradd_example.bb). Login works for all 3 parties.

While login works, passwd (to change it) doesn't work for the extra users. They will asked for the old one - which fails.
Root is not to be asked for old password. That's way root can change password for all. 

The strange issue is, that after root changes password for users, they can do it by themselves.
Seems that login and passwd use different algos!?!?

Same password, but different hashes:
before (created by yocto)
user:$6$bk.Az/8KVV$v3TyAlroQeBZA3faJ.DxCVsCUBZaSAvB4FkuNkLDdsIchrmz6OnUGRnQI5BOgOjQ3mvj9QL3US6Amf2VWr0.j/:17598:0:99999:7:::
behind (changed by root):
user:$1$d3Uo1g82$Il2kYQj8qadzQvkwUU4Ia.:17598:0:99999:7:::

Edit: After a few further test I found that this has an effect:
I used EXTRA_IMAGE_FEATURES += "read-only-rootfs" to create a read-only-rootf (by default). 
But of course I did make the partition writeable before attempting to change the password.
But for some strange reasons this is not same. What might be the reason?

