Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29BECE011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 15:08:29 -0700 (PDT)
Received: from mail-pa0-f48.google.com ([209.85.220.48])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 02 Oct 2012 15:08:28 -0700
Received: by pabkp12 with SMTP id kp12so7355555pab.35
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 15:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=FS3D25uzwWA8Sth2YIJsfJtngQ5rorT/ylxIWEMRgRs=;
	b=Z9nJTN9gWN0FeY1Ymh6z7/QKh56A0w8ZNzQhnsj8qzETLdyp8CCpDRBipcTvUJ7tvV
	YQtRYQ0DT5jxoMab1T3jSDf1TwT9cbNNXokcZmxVwfr9+mqqjVCjxYGvNV5jOzje3pj0
	C3APPyf3V2qBSyxWGCM6yKNHptmlYf+cGIChvWCJxb/yvDyybF6tCXOIvQhax3ZVLge8
	tpdNxGlk0mMWZqxcuqpXE2yLZjZ1CrH0IP8g2QJ2JfVlFAU1xFKFR+xOo2zeW7+6ANg8
	s0c6qPppJkif9Ew1NcxetXlp4lVcPX5srU/gz7FATPXt7yL8Wn+rPw1zXoLU0/38a+ls
	cbLA==
Received: by 10.66.88.40 with SMTP id bd8mr308736pab.36.1349215707473;
	Tue, 02 Oct 2012 15:08:27 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id rr6sm1485412pbc.47.2012.10.02.15.08.26
	(version=SSLv3 cipher=OTHER); Tue, 02 Oct 2012 15:08:27 -0700 (PDT)
Message-ID: <506B660F.7060008@intel.com>
Date: Tue, 02 Oct 2012 15:09:19 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
In-Reply-To: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
X-Gm-Message-State: ALoCoQnn3I0tgWrADUEdGv4C+Wyt6Y0IsMuXWfv/0bykc/KRO6QaC7PtXhTGEnVayABIetSzbQH4
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Tue, 02 Oct 2012 22:08:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/02/2012 02:17 PM, Evade Flow wrote:
> I'm trying to build core-image-sato for my Pandaboard ES, following the
> instructions posted here:
>
>    - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>
> Thus, my OE build configuration looks like this:

I just would like to comment that this is one of the best requests for 
help I've seen on this mailing list. Kudos for including all the 
relevant information!

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

