Return-Path: <koansoftware@gmail.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F6EE00429
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 11:48:39 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id z53so3472977wey.15
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 11:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:reply-to:organization:user-agent
	:mime-version:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=iiUGvQC18o0puiXMMY0C8mk2DxiEuhzGBSnPc79sv8c=;
	b=YgdFH5VbVfWUHP9g9XarI0ykV5aR3qJIV+PFAis54U2l0vZBDBw8yZ/9LRqVv1WbxT
	417bVUco3wEwJtOHJDZXT9QodETdj6BBAKX1nEVWfypM3vZepF3kM+Hak+g9/shh09dN
	t0Iwed/8AK7FRsN3wBpYjG7WbaQOJY1Nz97OkONgXpBVvwo/+2rh1jLUiDyDHajNHtPT
	j+9SuY5USp6l+RBNV1WEtIf5f4yFzmskxp3MVhDxsWBDwDUw3ynb3E98ulKzg3SjDOwd
	ryrqZE/63IgruEGWeCuANdpY3R4TaxFBl4+9rz5IKyhKpc36kGfmwpOVbCCxkcExOPCa
	sRqA==
X-Received: by 10.180.86.1 with SMTP id l1mr5106123wiz.32.1363373318082;
	Fri, 15 Mar 2013 11:48:38 -0700 (PDT)
Received: from [10.1.10.33]
	(host61-87-static.14-79-b.business.telecomitalia.it. [79.14.87.61])
	by mx.google.com with ESMTPS id r7sm4902485wiz.2.2013.03.15.11.48.36
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 11:48:36 -0700 (PDT)
Message-ID: <51436D02.7030601@gmail.com>
Date: Fri, 15 Mar 2013 19:48:34 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABTzgQ6bgSFJ2nu2PcW37sfb=YiibDqOPZyc9m5u_w8RE=GJuA@mail.gmail.com>
	<51435334.6010406@gmail.com>
	<CABTzgQ68e7qNM_z-uSLjBd5BQd29A1mWB1rShZDp+-5FpV1DtQ@mail.gmail.com>
In-Reply-To: <CABTzgQ68e7qNM_z-uSLjBd5BQd29A1mWB1rShZDp+-5FpV1DtQ@mail.gmail.com>
Subject: Re: Problem with core-image-sato at init
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Mar 2013 18:48:39 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 15/03/2013 18:08, Satya Swaroop Damarla ha scritto:
> Actually the problem is with splash. I solved it by removing it in the
> init. Go to /etc/rc5 and either disable the splash or remove it. Then
> your image may run. Try this and let me know :)
>

Nope,
looks like none of the daemons in /etc/rc5 start

However they start if I do manually
init 2 and then init 5


-- 
M.C.

