Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B450E01474
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 19:57:10 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id fc21so4928489vbb.35
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 19:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=KKLapkxHu6l1McrVjOa6UC/5JvrAGXYpw/3M7ywhi6Q=;
	b=Tl9i0WIHUtEhZF/wRCZI6QTV/Y/IrUkjKI7xqjuhqHPXoOjqD8774RYKcW5EPdA/gZ
	yX7BeEjkiFsg4jXuBYEzLdXyePPSopYxp7KeFSQ4VUchRPugXR2VkAgWIG7hi4u9tJK/
	2lo5I3BJ+WfdOoaMWrfxrBoC8JWpb/UQDMSsZ16I6t/IgQQJQl0HF565RttnUMGT0EMP
	gEzD16eVWnAspW+bEWIIgT06nfCu1oxXn+2De5Ebar6T7Erd/ymkSMpMQyeC6WQDaBKY
	cBT2S2itpAtvJ0S0Gu/gdVSvsO+hB0MuhiuPcUS08bYVuiMTMk3k/XLwEA7kndZf6+5Q
	L6bQ==
MIME-Version: 1.0
X-Received: by 10.52.23.18 with SMTP id i18mr18485105vdf.46.1364353029079;
	Tue, 26 Mar 2013 19:57:09 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Tue, 26 Mar 2013 19:57:08 -0700 (PDT)
Date: Tue, 26 Mar 2013 19:57:08 -0700
Message-ID: <CAPhnLPDAEG+scHdCFGvbV+n7hKOQysrcJ+yuZ=CnCdYHkdGvNQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkEyFQzJxzhtC2UOScAxSzHRrpkIKQU0ZlL/2MsZKav+uFqhVFRNdKq45DLw/4MV7FjTxeT
Subject: 1.4_M5.rc2 availability
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
X-List-Received-Date: Wed, 27 Mar 2013 02:57:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

1.4_M5.rc2 is currently building and will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20130326-2

meta-intel: 2e8760d272aa2c62b41cbf768445c99569604c5e
meta-qt3: 4c27cce6688aa39852f3cba5e7b80ec279019605
poky: bdca49274173153b1b0a72887de6321b4756b684
meta-fsl-ppc: 29dece8008c3c6d48b09aeef37f85617cef5dce9
meta-fsl-arm: 2ea1d2c944c63a078a1921cf8b8abfbc04d5adaa
eclipse-poky: 5e20d3c32072ddd91dceb8b2b793ef13f25b915e

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

