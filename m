Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web09.3651.1612477211289333066
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 14:20:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=pjToTtNr;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 72670BD06F
	for <yocto@lists.yoctoproject.org>; Thu,  4 Feb 2021 22:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 72670BD06F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1612477208;
	bh=GHihS6w28s7bii7rjR5o5wwdsZRc3RpfyqPzPQCqra4=;
	h=Date:From:To:Subject:From;
	b=pjToTtNrvRVCKsGW5mugxudsiqH6vbgZnGe/iZk7g3wbs6GuSLWkW/ak526eQuPZ8
	 BC/41qOatYYvtD+vWKdxv5hPLatsU3VY0FBdyJLVBhLtf4srr0RM4QH1jpN8c1GhUJ
	 uoqRl3b5pBhudTq6maumrhKh7GWPSEix+h+ZbuSvY4c3awYxWcFO/DCw/cvfDaN+X3
	 s9sGOcONERBDeS7l5MDTjqSwvMf03sxxY6BGcn3VVp2mpKOud4H+s7A4GsPkE+v6os
	 y+f0gacHNknihoap4EWv2niEESjLATZxFxFDEJ9+5SoYcKdJ1XDbXjuceGoklmHG0l
	 Q+G83yYmXBJOw==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HikJxagMeWye for <yocto@lists.yoctoproject.org>;
	Thu,  4 Feb 2021 22:20:06 +0000 (UTC)
Date: Thu, 04 Feb 2021 17:20:06 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 71DBBBD022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1612477206;
	bh=GHihS6w28s7bii7rjR5o5wwdsZRc3RpfyqPzPQCqra4=;
	h=Date:From:To:Subject:From;
	b=PJyOpGvjhHXgBlKzJyfyXbJhGpHUkZdqKX1T5YvxYaPgQU/WE95T+kq7cYv8CyIvo
	 9zZBXMXeVk8kPEVxd1drm7l0rRfKNPct1jSMlbAN7+l+lGQyOpuXLYBwTzVlM0TFYQ
	 uHLMI46IeJm721c9c+MyAh5kM5y7MVHA5PO7/AGH6zGBhsQ2X3cHWoY9WJDOI+nFG9
	 CJ8SiZFWovo1QwSL3aP+/aqvrNUBPCR1ZyrHjjz6VTA1sUfvd5rDzWnDhtrQ6H3mqf
	 5n9X+WalYMkhn6ngZFoNXzzcApXhVGBCY+1pKHZjpBfe8QXf6bUZdfw0OYGlgZDl6w
	 cRWv2SR48kpSA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: yocto@lists.yoctoproject.org
Subject: RT patch for 5.4.74?
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <940a40e2c148df096a03545961bf16ec@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Is there an RT patch for 5.4.74?
(I've used patch-5.4.44-rt27.patch.)

---John
