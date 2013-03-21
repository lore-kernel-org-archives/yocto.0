Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E88C9E014A4
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=X9RZBSJ6gTFVAG45rxEgaeR/vg3De2w+8wqDhv5aQoQ=; 
	b=iorcRtRNgeXCJjOYtuTyB/76ktoKOP7v6vI+U9g9pyD60fDyoi9RXVBTTWUHJGZMv05hh5rIUXGSS6HTp71fOo8NoW0Wxpvb0Av4MUqYNj93bvlI2ZNTrCUNi/ZzzOip;
Received: from [109.224.129.17] (port=3977
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UIbND-0046Kt-9p
	for yocto@yoctoproject.org; Thu, 21 Mar 2013 09:01:23 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 21 Mar 2013 09:01:22 +0000
Message-Id: <29BFB1FE-41FC-484E-900A-58A29001E39C@keylevel.com>
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
Subject: Possible Cedartrail PVR build race
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
X-List-Received-Date: Thu, 21 Mar 2013 09:01:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I think I have a build race condition for a project:

1) Using the meta-intel/cedartrail BSP;
2) Building under Danny 8.0;
3) Custom image;
4) Custom task;
5) OpenGLES application which runs under 'X'.

If I do a clean build (i.e. after deleting tmp/ sstate-cache/) then my =
application produces 'fuzz' on the screen - some vertical strips =
visible, but nothing recognisable.

If I then 'cleanall' the image, task and application and rebuild the =
image I get an image with an application that works as expected.

I suspect this is something to do with some warning messages I get =
during the clean build:

WARNING: The recipe is trying to install files into a shared area when =
those files already exist. Those files are:
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/KHR/khrplatform.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/gl.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/egl.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/glext.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES/glplatform.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/egl.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/eglplatform.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/EGL/eglext.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2platform.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/GLES2/gl2ext.h
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv1_CM.so
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv2.so.2
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv2.so
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
GLESv1_CM.so.1
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
EGL.so.1
   =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/lib=
EGL.so

Is there something I can add to my image/task/application .bb to prevent =
this?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




