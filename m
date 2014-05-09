Return-Path: <r2djoe@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 432FFE00B68; Fri,  9 May 2014 03:33:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 405 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 03:33:54 PDT
Received: from mail-qa0-f50.google.com (unknown [209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51029E00B66
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 03:33:54 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id j15so3810544qaq.23
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 03:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=gXE9KvOHNO0obQt38VC9uoIWu5mYGRvVQ+4F3Z05+Eg=;
	b=UowvzZnahKHqEK4E1StYxFbkusefExaMQ5rsZ/NHdH9yOMW0u5CoivYZLwmLXkEU/i
	vS7+kBFeVIepifGPKxKKouJo6u3mWz8md736BaHfwga/JAiRsJSOEdilJzq1O1dIZwb1
	fhemn+72RBR0ntX846gTd0yFJTCRrbRFwxju/EW2Fn4ATeGPYcv0kLzdXrlBLxQIw1kB
	vR56Ni8y7T2SIi00Bh+9BgfE94aBtteYiHrwAbL78kSRgv1hxCjIIqup8KPxzKgnA9EZ
	RG8YCgIk1s5q9GiOk/bYVtHwfSV6Vd3WOktqBYnCIU084DSHciC1LZGLAJ6a9IaR/HnR
	R8qA==
MIME-Version: 1.0
X-Received: by 10.229.171.193 with SMTP id i1mr12929636qcz.15.1399631228718;
	Fri, 09 May 2014 03:27:08 -0700 (PDT)
Sender: r2djoe@gmail.com
Received: by 10.96.41.229 with HTTP; Fri, 9 May 2014 03:27:08 -0700 (PDT)
Date: Fri, 9 May 2014 11:27:08 +0100
X-Google-Sender-Auth: o_qZTQkalyu46dHN3Euavgp1O4o
Message-ID: <CAJgJR162J=mDGSMQzsqz7DyrpUD0MCbbQ=1icW4robSsLg8Kqw@mail.gmail.com>
From: Joe D <joe@radix2design.co.uk>
To: yocto@yoctoproject.org
Subject: WiPi on meta-raspberrypi
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
X-List-Received-Date: Fri, 09 May 2014 10:33:56 -0000
Content-Type: multipart/alternative; boundary=001a11c3066834538104f8f50ab0

--001a11c3066834538104f8f50ab0
Content-Type: text/plain; charset=UTF-8

Would anyone be able to help me set up a recipe for using the WiPi dongle
on the meta-raspberrypi backend?

--001a11c3066834538104f8f50ab0
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>Would anyone be able to help me set up a recipe for using the WiPi dongle on the meta-raspberrypi backend?</div>
</div>

--001a11c3066834538104f8f50ab0--
