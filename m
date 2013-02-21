Return-Path: <edward.ekelund@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52007E006C9
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 04:05:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 8C73919E87
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 13:05:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XUeZJo-g9PZ7 for <yocto@yoctoproject.org>;
	Thu, 21 Feb 2013 13:05:06 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by anubis.se.axis.com (Postfix) with ESMTP id 9CBE219E7D
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 13:05:06 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 5F04A3E31C
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 13:05:06 +0100 (CET)
Received: from [10.92.58.1] (10.92.58.1) by xmail2.se.axis.com (10.0.5.74)
	with Microsoft SMTP Server (TLS) id 8.2.176.0; Thu, 21 Feb 2013 13:05:06
	+0100
Message-ID: <51260DE2.6060902@axis.com>
Date: Thu, 21 Feb 2013 13:06:58 +0100
From: Edward Ekelund <edward.ekelund@axis.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Subject: Eclipse "Error creating session, Could not find platform independent libraries <prefix>"
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
X-List-Received-Date: Thu, 21 Feb 2013 12:05:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I encounter the error
"
Error creating session
Could not find platform independent libraries <prefix>
Could not find platform independent libraries <prefix>
Could not find platform independent libraries <prefix>
"

in a pop up-window when attempting cross degugging following the lab 
found here: 
https://www.yoctoproject.org/tools-resources/presentations/using-eclipse-yocto-project

Does anyone know what the problem might be?

-- 
mvh
Eddie

