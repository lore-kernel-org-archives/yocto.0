Return-Path: <nbelfin@radiodata.biz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83BA7E00985; Thu, 19 Nov 2015 01:48:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 553 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Nov 2015 01:48:26 PST
Received: from smtp.radiodata.biz (smtp.radiodata.biz [78.47.114.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA9BE007DA
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 01:48:26 -0800 (PST)
Received: from mail (p578044f8.dip0.t-ipconnect.de [87.128.68.248])
	by smtp.radiodata.biz (Postfix) with ESMTPSA id C3D9F6024A
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 10:39:10 +0100 (CET)
Received: from [192.168.3.173] (WS72.radiodata.xx [192.168.3.173])
	by mail (Postfix) with ESMTPSA id E2D8C3FD4C
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 10:46:32 +0100 (CET)
To: yocto@yoctoproject.org
From: Norbert Belfin <nbelfin@radiodata.biz>
X-Enigmail-Draft-Status: N1110
Message-ID: <564D98BE.8060809@radiodata.biz>
Date: Thu, 19 Nov 2015 10:39:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: lighttpd + mod_cgi
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
X-List-Received-Date: Thu, 19 Nov 2015 09:48:32 -0000
X-Groupsio-MsgNum: 27358
Content-Type: multipart/mixed; boundary="------------020305090608010209080403"

--------------020305090608010209080403
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

we wanted to use lighttpd with mod-cgi (for php). First thing what
happens was, that the module crashed. After a look in log.do_compile we 
found the reason.
grep output:

lighttpd-1.4.36/src/mod_cgi.c:230:50: warning: implicit declaration of function 'chunkqueue_written' [-Wimplicit-function-declaration]

The function chunkqueue_written() was removed in lighttpd version
1.4.36. The call is added by the patch
0001-mod_cgi-buffers-data-without-bound.patch which orinally was written
for version 1.4.35, in which chunkqueue_written() existed.

So our first try was to build lighttpd without this patch. mod_cgi
didn't crash, but the php-webpage is not working (with module fast-cgi
ist works perfect). It seems that no correct is sent.
Hm, okay, maybe the patch fixed more than memory problems while streaming?
Now we built an package from the lighttpd version 1.3.35, for what the
patch was written. The problems with the webpage still exists.
Has anyone used lighttpd with mod-cgi and php on yocto poky (jethro or
fido) succesfully? A workaround could be to use fast-cgi, but we want to
save RAM and boot time.

Greetings an thanks for your help


--------------020305090608010209080403
Content-Type: text/x-vcard; charset=utf-8;
 name="nbelfin.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="nbelfin.vcf"

begin:vcard
fn:Norbert Belfin
n:Belfin;Norbert
org:RadioData GmbH;Entwicklung
email;internet:nbelfin@radiodata.biz
version:2.1
end:vcard


--------------020305090608010209080403--
