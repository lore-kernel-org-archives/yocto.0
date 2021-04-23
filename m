Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.103.1619209663217028408
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 13:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=tXfW6DY2;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 9E5C0BD10D
	for <yocto@lists.yoctoproject.org>; Fri, 23 Apr 2021 20:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 9E5C0BD10D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619209659;
	bh=VH0pjYlBzDRRQHxRGzSuop2PC4n2gh1t50XgaILLd3w=;
	h=Date:From:To:Subject:From;
	b=tXfW6DY2hWb1j4SjNhcEtM71MMaj4ivX3YhgZLBE94EfKORzqpQmQO3+3jir0lxZr
	 RiVeUvg7j6qfq0cILPenN0qzvkX8DgUufwITS6dHcL8hQKqOp+vvD+HWt3j90JneBk
	 8+SeCAf1DaombsoQRXgdM6ywofxY0RgLNobU15zaYwruu87V1Jouwd6a0cdbBomK7q
	 OEBqJ5oVXvvjIMdp+bkQYwnC1EBqkb8mP7xUhoZ2Yn3tff7hhHMA7Hrg/8xczDIQwU
	 8gkrjJV+XID0RkQuaTiUJ9rQb6bR41KaPamSdgL0t5aIL/VmqeKHvcxa5ihxgQgbIS
	 hdFdkfo9os5TQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Gvy3bMh1ixv for <yocto@lists.yoctoproject.org>;
	Fri, 23 Apr 2021 20:27:35 +0000 (UTC)
Date: Fri, 23 Apr 2021 16:27:35 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 8A0A1BD01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619209655;
	bh=VH0pjYlBzDRRQHxRGzSuop2PC4n2gh1t50XgaILLd3w=;
	h=Date:From:To:Subject:From;
	b=RVQkLNlvjLchc/5HcHkVptN6andA+nhD9ViAhrHKjD+WymNqlk7Cuj0Gou6zGU3vJ
	 ORzT2rFuhRp/sl/TbPOAWwYbAutqsGcIz6+AKPIFDRjb+H6vYu3rOL8IPGLFJhTDFS
	 Oqff7UmxnA7IrYC0G+QOMGPk+BlY0pfzkTsFlVRz6CM0c+b1txJ5v5WgCV8FMazDaA
	 fpaD4R6c7+fNVNLUXhnPaW0XHp5EqvmWEFaIXH9ZVVO48cYF+pP3ZOjS6frEJRtMGZ
	 LKq3SBlOiiWelYApB9pQkLm/f2Wi78GLdeB78UGmXa3yseYcaEILQB2krGu0RFpT9t
	 bWPO8XqIY32jQ==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: OpenBIOS
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <6b3326edd3a226bbf65b51c889ad12c4@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

What is the relationship between OpenBIOS and YOCTO? Between OpenBIOS 
and U-boot?
