Return-Path: <marc.ferland@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B21E00348
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 10:56:13 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so4025029qcs.35
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 10:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=0tJo+LWBbKuEEWJsF7iBETVQXC4hN/VHu1aEVEUGrxM=;
	b=rF9fHNkF8zErtqZFbk4+eVPSx95T+3VbH141t2yJv5pXHqQ88qtLw5Fn7xFNNoub6b
	oispNU6mmX3Loub3EGIcrSYK0YM5u5PRozvhAeXF/ImMLVgQBqZgbkr3JhRGydq93VSD
	8/waS6yY7eCCipfkODLr0v29AXim4tNSKc1NpMAf7ismnTe+tSYQ5+S51GQL0Ytc47Yx
	Pq4HgqIkIOD+jWFSXd+PQq5QRh782DpDC0J/ueQx2Dwn5dY3oJleP/xI1rq4gBrGv18A
	JSaP7kfhzj5fbFsSIpbzq/+wyvwuKT3QolpX/KsHoa6UyQ2CyGogEF2JNlJOeTA0lqmi
	ygng==
Received: by 10.224.101.193 with SMTP id d1mr22910186qao.20.1342461372530;
	Mon, 16 Jul 2012 10:56:12 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id i5sm15895777qak.11.2012.07.16.10.56.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 16 Jul 2012 10:56:11 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 16 Jul 2012 13:56:20 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Jul 2012 13:56:20 -0400
Message-ID: <87sjcrio8r.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: xserver-xorg
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
X-List-Received-Date: Mon, 16 Jul 2012 17:56:13 -0000
Content-Type: text/plain

Hi all,

I'm having trouble building the xserver-xorg package. The build fails
with:

| render2.c: In function '__glXDisp_Map1d':
| render2.c:104:5: error: the comparison will always evaluate as 'true' for the address of 'u1' will never be NULL [-Werror=address]
| render2.c:105:5: error: the comparison will always evaluate as 'true' for the address of 'u2' will never be NULL [-Werror=address]
| render2.c: In function '__glXDisp_Map2d':
| render2.c:147:5: error: the comparison will always evaluate as 'true' for the address of 'u1' will never be NULL [-Werror=address]
| render2.c:148:5: error: the comparison will always evaluate as 'true' for the address of 'u2' will never be NULL [-Werror=address]
| render2.c:149:5: error: the comparison will always evaluate as 'true' for the address of 'v1' will never be NULL [-Werror=address]
| render2.c:150:5: error: the comparison will always evaluate as 'true' for the address of 'v2' will never be NULL [-Werror=address]
| cc1: some warnings being treated as errors

The target machine is a x86_64. Looks like the compiler doesn't like how
the __GLX_GET_DOUBLE macro tests the address of stack variables against
NULL.

I would like to know if there is a patch upstream or if this is a known
issue? What surprises me the most is that this machine looks a lot like
the meta-sugarbay which builds correctly.

Regards,

Marc

