Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CB5E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 13:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=y2AtSwx4SAPsVZeBy0GtcGDmowv9hCWN+/KW1Qfefvs=; 
	b=ezqWOEUkNRGlnrOpzv8E/kxMpEvCeR3N+Q5ySXlZeCHj8EIs9p6QyzyRny2Fd2eL3eU+cpP9CI0Z3ArApz4SYiONhA0NAASxteGoD30IA3HDPFyfUtXWexbvkrNvJoE3;
Received: from [109.224.129.17] (port=40117
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1TjG2e-00040q-RG
	for yocto@yoctoproject.org; Thu, 13 Dec 2012 21:10:04 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 13 Dec 2012 21:10:03 +0000
Message-Id: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: libva failing for mp4 using gstreamer under 'danny' with cedartrail BSP
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
X-List-Received-Date: Thu, 13 Dec 2012 21:10:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got an X application that uses gstreamer to capture frames from =
video files and display them using GLES textures.

This works fine for webm and flv files, but if I try and use mp4 (or =
avi) then I get no frames. I'm not seeing any gstreamer errors, but the =
console shows:

libva: VA_API version 0.32.1
libva: va_getDriverName() returns 0
libva: Trying to open /usr/lib/dri/pvr_drv_video.so
libva: va_openDriver() returns 0

1) I'm building under 'danny' for cedartrail with PVR.
2) The pvr_drv_video.so file mentioned above exists.
3) The same gstreamer pipeline works fine on my host build system.
4) I'm fairly sure the required gstreamer plugins are present.

Does anyone have an idea as to what might be causing this?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




