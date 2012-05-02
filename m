Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE621E0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:29:26 -0700 (PDT)
Received: by werc12 with SMTP id c12so636646wer.35
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 08:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=/sA1xn5R0RIUDB92Ol6lRy1Ym4fpPXHnBmRIq7h/Yj0=;
	b=l+dCb5PKY4i23dSRzO9vFlHVIBe7Zu7EKda6bF5eTgCB5sem6dbU9EVvBkv9JeoXJv
	lIrElJsGV8OdvecNr2A/wTlBJ9UYiyaGGxGvh7aVcry+xPiQq6k32lE+MxlsX4T7jFgo
	9hzomf42EpAvSlJf5paopCEuXT43cvzTD9YfFcLSX+vdMmLJxjaHtPM35TFhXBkPAyhu
	YkjbOSmY0Aw8lhUGwTkRSFw/sOA47/2D0axLuISEu64SFHtiSFifGs4u3Rn3tpRgJbAd
	vHWSGqKdupB0V/T8p3/NfjKI8D3jOZ88hyigylfmCO07PHvj2ogid1q5AQBBbntYsnLz
	RFtg==
Received: by 10.180.107.101 with SMTP id hb5mr2945852wib.7.1335972565997;
	Wed, 02 May 2012 08:29:25 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id e6sm44768001wix.8.2012.05.02.08.29.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 May 2012 08:29:25 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
Date: Wed, 2 May 2012 17:29:23 +0200
Message-Id: <823F6240-3BD2-4DEC-9403-CFB8482878ED@gmail.com>
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
	<CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:29:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jeffrey,

On May 2, 2012, at 5:18 PM, Osier-mixon, Jeffrey wrote:

> Good catch. I'm still installing 12.04 and can't check at the moment.

I'll switch back to dash and check it out.

FYI, the user experience with Ubuntu 12.04 64-bit, running inside a =
VMware Fusion
Tech Preview 2012 virtual machine is pretty good. They've finally added =
support
for 3D OpenGL acceleration for Ubuntu 12.04.

http://communities.vmware.com/community/vmtn/beta/fusiontp2012

Elvis Dowson


