Return-Path: <davide.soldan@kynetics.it>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C47E013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 04:11:35 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id hq4so535780wib.6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 04:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:mime-version
	:content-transfer-encoding:content-type:x-gm-message-state;
	bh=zAihm4gY2+9ijJ4dQsXDm6Q5SNuX9UdkAXiy9OHDVUQ=;
	b=QIzk0Tp1OLfJJVwuq27+6Sl9jfIYW35rRiUyoteyM0HK+rT2HbWwPOzneFWaOAPSyk
	LKMX8ZIfLPAfC9nRt3+6qB29W5jFTB/VtnwsnmsUl7UW6MruaBCEVEYOFU1nir240qdW
	pZBBim4cqOZ5G4hLPqogq6mj6R0hXzkpiBlWGtpvUGOCpPTenjIH9yvQdqTdIhKvSQer
	51dnSkHlaQudVJVdBr7kf+Oa14ng9095ufxno32YMvsZiSRFZxSVF/VnQxExOe03AW4L
	4mOEyjjebi1StWFCVRwYaS9TidpFOb331k/Lw2pe0vQ9+irKzoTkifhYYBpv7/h0VisK
	fT+A==
X-Received: by 10.194.122.71 with SMTP id lq7mr23432146wjb.77.1373627494468;
	Fri, 12 Jul 2013 04:11:34 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id b20sm2703866wiw.4.2013.07.12.04.11.32
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 12 Jul 2013 04:11:33 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Fri, 12 Jul 2013 13:11:30 +0200
Message-ID: <2264563.SPIDgIzv0z@fedora-fisso>
User-Agent: KMail/4.10.4 (Linux/3.9.8-100.fc17.x86_64; KDE/4.10.4; x86_64; ; )
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlJ6fiWhQpXDlv3Gv8PR70VByCng93ewhqzAztNUL1EqVjXwmD/7Am5sQ4ViyAkgjQAVchX
Subject: extend image.bbclass (or any bbclass file)
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
X-List-Received-Date: Fri, 12 Jul 2013 11:11:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi to all,
I'm trying to move, from outside to inside my recipes, all the changes I've done for my custom image.
For example I changed the image.bbclass adding a function. But this file is outside of my recipes that are stored under my git repository. So I'd like to move this function from image.bbclass to another bbclass file under mi recipes directory.
I tried to copy image.bbclass under my recipes directory, change its name, and references correctly, but duplicates functions gave me some errors:

ERROR: The function normal_groups defined in image.bbclass was already declared in image-custom.bbclass. BitBake has a global python function namespace so shared functions should be declared in a common include file rather than being duplicated, or if the functions are different, please use different function names.
ERROR: The function complementary_globs defined in image.bbclass was already declared in image-custom.bbclass. BitBake has a global python function namespace so shared functions should be declared in a common include file rather than being duplicated, or if the functions are different, please use different function names.
ERROR: The function get_devtable_list defined in image.bbclass was already declared in image-custom.bbclass. BitBake has a global python function namespace so shared functions should be declared in a common include file rather than being duplicated, or if the functions are different, please use different function names.

So I think there should be a way to append some code to image.bbclass as I can do with recipes and bbappend files...right? How I can do that? Or maybe there's another and better way to do that?
Thanks to all!

