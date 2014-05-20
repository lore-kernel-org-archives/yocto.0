Return-Path: <benuvelj@iwavesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BED8E00B20; Tue, 20 May 2014 06:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=FROM_12LTRDOM,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS *  0.1 FROM_12LTRDOM From a 12-letter domain
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 May 2014 06:03:55 PDT
Received: from sip2-98.nexcess.net (unknown [207.32.180.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8D95E0073D
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 06:03:55 -0700 (PDT)
Received: (qmail 2537 invoked by uid 240); 20 May 2014 08:57:14 -0400
Message-ID: <20140520085714.499365sswejz6iay@iwavesystems.com>
Date: Tue, 20 May 2014 08:57:14 -0400
From: "Benuvel GnanaKirubakaran, Jv." <benuvelj@iwavesystems.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.7)
X-Originating-IP: 115.119.206.106
X-Remote-Browser: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36
	(KHTML, like Gecko) Ubuntu Chromium/33.0.1750.152 Chrome/33.0.1750.152
	Safari/537.36
X-Horde-Authenticated: benuvelj@iwavesystems.com
Cc: jsomash@iwavesystems.com
Subject: To Enable webserver in Yocto
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
X-List-Received-Date: Tue, 20 May 2014 13:03:59 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Hi,

Have to enable webserver in Yocto. Hence, "httpserv -p 80 -t 5 &" was used
to start the service. But with the help of this command we aren't able to
access the complete filesystem of the respective machine connected in the
network from a remote system. It throws following data while accessing in
such a way:
######################################################################
GET / HTTP/1.1
Host: 192.168.2.21
Connection: keep-alive
Cache-Control: max-age=0
Accept:
text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like
Gecko) Ubuntu Chromium/33.0.1750.152 Chrome/33.0.1750.152 Safari/537.36
Accept-Encoding: gzip,deflate,sdch
Accept-Language: en-GB,en;q=0.8,en-US;q=0.6,ta;q=0.4

EOF
######################################################################

Anticipating your assistance for solving the issue.
-- 
Regards,

Benuvel, Jv.





