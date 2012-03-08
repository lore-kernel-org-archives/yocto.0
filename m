Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE8ABE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 13:33:45 -0800 (PST)
Received: by dadp13 with SMTP id p13so1015836dad.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 13:33:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=OAZ1+dGx8DF6UWy+hKsjQ0ogjLAc/zizW9lizFyBK18=;
	b=ARG8gKAXN0HwwdA1InCq42pSySMWc8CVLHOtbzOSwdDYwJAm8cvVT2eeYXemiqCm+I
	IWI77Y0TMJDdIlrgXl1dr7X6434UNxRvyEmMcKGAcXxlj/s0QVbWa01axoxm68A1jSB5
	jDz8YywND3TI1TF9QZd56up5nE0lSRoiALdSZZt7uSOPJeS2eKuYBPj4Nxoe/0ErUKEs
	CJ8m3vvzvjWefJDgOJM3Yz6raQyURu6792zrU/VEZ7bbsThtc4JGRLSH1JFj1QsmIwJk
	w+6IPfaPbm75mhS/ZUSbypWFy946PEJDJkcyZXNm2O2bTRn8rib9K67mMllFcmaE9VMK
	xyAA==
MIME-Version: 1.0
Received: by 10.68.73.138 with SMTP id l10mr820420pbv.22.1331242425552; Thu,
	08 Mar 2012 13:33:45 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.12.11 with HTTP; Thu, 8 Mar 2012 13:33:45 -0800 (PST)
In-Reply-To: <4F591A23.3050908@gmail.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
Date: Thu, 8 Mar 2012 13:33:45 -0800
X-Google-Sender-Auth: lsTpQwALdGKmAoqV0Y7auQ_gTRs
Message-ID: <CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: jfabernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQmc1X4StnSGtKXqgvgjqm+kUUKonDERI1vF4DDs1xNRbs0amExMbZl2KjuywCsPSvRDcy+g
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 21:33:45 -0000
Content-Type: multipart/alternative; boundary=f46d041b4a82e28e3e04bac20771

--f46d041b4a82e28e3e04bac20771
Content-Type: text/plain; charset=ISO-8859-1

Jeff,

Use hyphen instead of underscore for the subdirectory SRC_URI:

SRC_URI = "file://myvideos-1.0/myvideos-**1.0.tar.gz"

and of course for the subdirectory in the subdirectory where the recipe is
located. The file fetcher copies the entire path
myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.

Rudi

--f46d041b4a82e28e3e04bac20771
Content-Type: text/html; charset=ISO-8859-1

Jeff,<div><br></div><div>Use hyphen instead of underscore for the subdirectory SRC_URI:</div><div><br></div><div><span style>SRC_URI = &quot;file://myvideos-1.0/myvideos-</span><u style></u><span style>1.0.tar.gz&quot;</span></div>
<div><span style><br></span></div><div><span style>and of course for the subdirectory in the subdirectory where the recipe is located. The file fetcher copies the entire path myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.</span></div>
<div><span style><br></span></div><div><span style>Rudi</span></div>

--f46d041b4a82e28e3e04bac20771--
