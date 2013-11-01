Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06289E01729
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 09:40:11 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id m15so4192437wgh.1
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tZeTT9QQlqrP/W3zRhkM+as8BE101aoqPw2C7XXZqsc=;
	b=T8waan2YoOkUVzjPEI+YG9WneGp0NyXu6GZ/Hvtu1tem+qPjlECePMT+3juKsIULfM
	Dum2neDCHlzC/S6PdEALM4JPyZ/HjH651ax7XzINIYIm0okEOzSPet60kgPl2KzcQUrO
	J5VLuDkTNCh1D9evbV9/pcBl1TgJ3449IwwXjnpyFbCOzCX1h9LnloOFuym2Y/TRCYFT
	UN6289k0HVJHGOT5905aiOkJ0U35+nndIzo5oqRrdLVFyiwNuUBxycXmiNGLhA3sbGO3
	FFYGGe6rVFw8zFRt+h2odwNFU0uOiFA0LpQag8bGcQghnRxtOIQ2iPQTRFm4skkz5dXr
	xBEQ==
MIME-Version: 1.0
X-Received: by 10.180.36.80 with SMTP id o16mr2950875wij.1.1383324010254; Fri,
	01 Nov 2013 09:40:10 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Fri, 1 Nov 2013 09:40:10 -0700 (PDT)
Date: Fri, 1 Nov 2013 22:10:10 +0530
Message-ID: <CABHD4K9q7=RK_3B2HUPR9J0RoLZPBQ5-qwY3qjYeRLajs-gnhQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to Set up Perf tool
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
X-List-Received-Date: Fri, 01 Nov 2013 16:40:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

We have a requirement here to set up the perf tool through our Yocto
frame work.

As Perf source comes with linux kernel under tools/perf ,so it should be
compiled with kernel recipe itself.

But after bitbake of our kernel recipe,we couldn't find any binary
related to perf.
we made sure that below variable should be set in kernel config file

CONFIG_HAVE_PERF_EVENTS=y
CONFIG_PERF_EVENTS=y

Do we need to make any change to our kernel recipe file as well??

Can anyone let us know how we should set Perf tool.

Thanks

