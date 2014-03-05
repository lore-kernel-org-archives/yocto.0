Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f193.google.com (mail-ve0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E19C2E00A21
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 20:50:25 -0800 (PST)
Received: by mail-ve0-f193.google.com with SMTP id oz11so173802veb.0
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 20:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oSTn5DVrxFoshW0EngJyVAkX9nAJapxcAyMThW7Y6Fc=;
	b=a5yg+QNAg11HQgkLC/+zlk/k5V5dspUql8VdxNgjHmqQ4lGd/tNh/+GTFjUF5WKsvJ
	nl6MQGiD7K2hB97QzA+Dl+Ljoz1Jw50gWHh2WsGX0Q9GTt7dOBX19QDr9f5b+TX/ZJmH
	/F/kNcgwgtY3lUbu1Gvn0NHL7WZavJFdrLqHLOEuvcVjQ11PqczmXP5HQB8t/xKYVPwI
	GRiyc+HIeL7QzqFeMwiNm2QwThHv2ZEMrlosGNmwwR03D5ITp4xPb5bF4HkcmU/EZgac
	Rpb+KsNhzqUASaCbmFkaM7VCfjiRJSTpd/rvWYwfINRn4mlhyt76YF8eJdZAH5JGlgYQ
	lD8g==
MIME-Version: 1.0
X-Received: by 10.58.200.168 with SMTP id jt8mr74891vec.30.1393995024439; Tue,
	04 Mar 2014 20:50:24 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Tue, 4 Mar 2014 20:50:24 -0800 (PST)
Date: Tue, 4 Mar 2014 21:50:24 -0700
Message-ID: <CAA7h+Ep__sbmST0ppgTrWYv5HQeOxTyRGj2tHGKNYSVaK5xMHA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Compiling errors
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
X-List-Received-Date: Wed, 05 Mar 2014 04:50:28 -0000
Content-Type: multipart/alternative; boundary=047d7bd6bd76401e3904f3d4c27e

--047d7bd6bd76401e3904f3d4c27e
Content-Type: text/plain; charset=ISO-8859-1

I get the following errors while trying to compile:

Error: autogen-native not found in the base feeds (overo armv7a-vfp-neon
armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4
arm noarch any all).

When I do a bitbake -s | grep autogen-native it shows up.

I am also getting the same error for dhcp recipe.

--047d7bd6bd76401e3904f3d4c27e
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div>I get the following errors while trying to compile:<br><br>Error: autogen-native not found in the base feeds (overo armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4 arm noarch any all).<br>
<br></div>When I do a bitbake -s | grep autogen-native it shows up.<br><br></div>I am also getting the same error for dhcp recipe.<br></div>

--047d7bd6bd76401e3904f3d4c27e--
