Return-Path: <ewan.lbc@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2958E01479
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 03:08:11 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c41so4005268eek.39
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 03:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=espklJHa64tadbgmgID+S5lz7MDwDYgGH6XCvhiq+h8=;
	b=lB3hIeoVaEyXeWhJTwC2aFIFJeSRhEbuujNZxQtdVzjLxgXsvZpmz9yAtg7MmUPlbO
	GtASOrO1M2lPrCGYMwwYjscbZuNtwnyIHzYNG28rx5Qoytyfo3SAa6D1NtTK1MkUQTNo
	IBgxKOuaH9A/yc+Q4IhLi5CyyNf0+gkTny3DQZCd2U77WLpI50IaxqDi7MudyR+CLpdj
	C0EzLq4s2lwGn8R827+ce6YFN4zeVXSZvMeKTtO6BGo4EQvazc6lPTVFugjbDQhatRzj
	3+RnZk/IbbmPGMohutoad43nGEkKM/hKRVpAeNgTNA1cfdLCSxPc0PoVl/xxnMSjEeIz
	Hgaw==
X-Received: by 10.15.34.135 with SMTP id e7mr1080142eev.63.1379585290450;
	Thu, 19 Sep 2013 03:08:10 -0700 (PDT)
Received: from [10.19.3.33] ([46.18.96.46])
	by mx.google.com with ESMTPSA id z12sm10017110eev.6.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 03:08:09 -0700 (PDT)
Message-ID: <523ACD08.10305@eurogiciel.fr>
Date: Thu, 19 Sep 2013 12:08:08 +0200
From: Ewan LE BIDEAU-CANEVET <ewan.lbc@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 19 Sep 2013 06:40:24 -0700
Subject: Building a Poky distribution based on Wayland/Weston 1.2
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
X-List-Received-Date: Thu, 19 Sep 2013 10:08:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hello,


I'm currently trying to have a poky distribution with Wayland/Weston 1.2 
and no X server at all. I think I have successfully ported 
Wayland/Weston to 1.2 version and disabled the X server, so here is my 
questions :


1) Does this project interest you ?

2) How can I test if Wayland  has been correctly built ?

Currently, the Weston shell is up and running.

3) Knowing I started my project from Poky and Open-Embedded 
repositories, on which upstream repository can I deliver my work ?

I added a poky distro configuration that seems to be delivered into 
Yocto git , is it correct?

About the changes around Weston & Wayland, the new bb files should be 
delivered in YOCTO or OpenEmbedded project?

Thank you for your attention.

Ewan Le Bideau-Canévet

