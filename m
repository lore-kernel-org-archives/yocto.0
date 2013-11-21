Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B4CE0059F
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 04:10:51 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dQKNn1qPlz4KK2s;
	Thu, 21 Nov 2013 13:10:49 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dQKNn0BRRzbbgp;
	Thu, 21 Nov 2013 13:10:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id PVRhHtU8GULd; Thu, 21 Nov 2013 13:10:47 +0100 (CET)
X-Auth-Info: Bubh+LptEvZ2/evjGvoi0/2DuykOkcep7/cbqtczOcU=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 21 Nov 2013 13:10:46 +0100 (CET)
Message-ID: <528DF846.9050306@denx.de>
Date: Thu, 21 Nov 2013 13:10:46 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.2
Subject: Deploying Yocto build images
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
X-List-Received-Date: Thu, 21 Nov 2013 12:10:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi everybody,

in the last ELCE, David point out in his presentation that we should
improve how to deploy Yocto images on the target.

I did some work this year to provide a reliable way for some customers
of us to install Yocto's images in field, and I have published last week
the sources. Here the link of the announcement:

	http://comments.gmane.org/gmane.comp.embedded.eldk/2397

Mainly, it is a tool that can be stored in the rootfs or will be put in
a separate initrd image and whose goal is only to update the system. I
have tried to describe pros and cons of several different solutions
(updating via bootloader ? single copy against dual copy ?) - you can
find details in the doc directory in the swupdate repository.

Maybe someone of you can find this helpful, and I will be happy if I
could get some feedback.

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

