Return-Path: <rohit.borse@einfochips.com>
Received: from out10.sjc.mx.trendmicro.com (out10.sjc.mx.trendmicro.com
	[216.99.131.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4787FE00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 04:05:06 -0700 (PDT)
Received: from relay10.sjc.mx.trendmicro.com (unknown [10.30.239.133])
	by out10.sjc.mx.trendmicro.com (Postfix) with ESMTP id A836B980448
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 11:05:03 +0000 (UTC)
Received: from pune.einfochips.com (unknown [121.241.186.85])
	by relay10.sjc.mx.trendmicro.com (Postfix) with ESMTP id 10A32980421
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 11:05:03 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by pune.einfochips.com (Postfix) with ESMTP id 443614DE0004
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 16:47:53 +0530 (IST)
X-Virus-Scanned: amavisd-new at pune.einfochips.com
Received: from pune.einfochips.com ([127.0.0.1])
	by localhost (pune.einfochips.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cv7xMPO9tXDt for <yocto@yoctoproject.org>;
	Wed, 21 Aug 2013 16:47:53 +0530 (IST)
Received: from pune.einfochips.com (pune.einfochips.com [10.110.2.12])
	by pune.einfochips.com (Postfix) with ESMTP id 21EEF4DE0001
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 16:47:53 +0530 (IST)
Date: Wed, 21 Aug 2013 16:47:53 +0530 (IST)
From: Rohit Borse <rohit.borse@einfochips.com>
To: yocto@yoctoproject.org
Message-ID: <1855197305.7654.1377083873011.JavaMail.root@pune.einfochips.com>
In-Reply-To: <1786668879.7632.1377083449738.JavaMail.root@pune.einfochips.com>
MIME-Version: 1.0
X-Originating-IP: [10.110.2.12]
X-Mailer: Zimbra 6.0.5_GA_2213.RHEL5_64 (ZimbraWebClient - FF3.0
	(Linux)/6.0.5_GA_2213.RHEL5_64)
X-TM-AS-Product-Ver: IMHS-1.0.0.1418-7.0.0.1014-20094.006
X-TM-AS-Result: No--10.6425-5.0-31-10
X-TM-AS-Result-Detail: Spam:No-Score:-10.6425-Baseline:ModeratelyHigh-Other:Lowest
X-TM-AS-URLRatingInfo: 81-21-=?utf-8?B?d3d3LmVpbmZvY2hpcHMuY29t?=
X-TM-AS-URLRatingAct: 65-Stamped
X-TMASE-MatchedRID: 3KxdcvdjdEJoFjRykldVJxcqpH7D1rtQlnrMq7Sriu1X14Hy+eYp717G
	5W/GZDkD96TYN1fO8g4+Fy+tgACoU9SzrnDNZc94Ocjnbzvq89+NfQEKGKzYvbrtDe4+j0ojIeE
	87C3wnGioTdckFDfqi2rXGKZ63tXfmh2ketXuCEfBtFDYGmaWKvwGVtfL479aKhnGrClpzofo9A
	eqG6oG9uZ06rTOGuunDzueAsqJuivSV+Xuk4c29uMyOafPLIZtv/7xdLQjXSJy0OvuIaRJ6QuVM
	ctAPCgtgD7NlsAV2tL/voIzhn8wZpxJz/b+CsHoJLEgWUxgq8K063Wh9WVqgjuUMbK1NdLP+gtH
	j7OwNO0IvPdC2hUq0Ty/SDwMSBsoUM3h/nj9H1GzCkxMfQVWFYJX+e+c8PYrm5s5pSlW/yFdVe/
	d728sM0wxfWlK0ivRdy0LCJnb3kMgsThyWkXnSQ==
X-TM-Deliver-Signature: fc20260bb746967080255abfeaf2734a
Subject: Yocto support for Bluegiga
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
X-List-Received-Date: Wed, 21 Aug 2013 11:05:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_7653_1772452006.1377083873010"

------=_Part_7653_1772452006.1377083873010
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit


Hi, 
I want to setup zero configuration network on Bluegiga-APX4 development kit. Bluegiga APX4 has inbuilt zeroconf utility, through which Local IP addressing is done automatically without DHCP. But it don't have any reference or documentation for "Creating and Advertising new service (such as printer,ssh,website etc.) on network". 
Do yocto BSP supports any such utility to advertise or publish our services on network which will also support DNS-SD? 

Thanks and Regards, 
Rohit Borse 
Mob: +91-9765323004 
www.einfochips.com 
Contact: 020-30262500 
Ext-2558 

---------------------------------------------------------------------------------------------
Notice: 
This message has been scanned by Trend Micro Mail Security scanner and is believed to be clean
---------------------------------------------------------------------------------------------

------=_Part_7653_1772452006.1377083873010
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head><style type='text/css'>p { margin: 0; }</style></head><body><div style='font-family: Arial; font-size: 10pt; color: #000000'><span><br>Hi,<br>&nbsp;&nbsp;&nbsp;&nbsp; I want to setup zero configuration network on Bluegiga-APX4 development kit. Bluegiga APX4 has inbuilt zeroconf utility, through which Local IP addressing is done automatically without DHCP. But it don't have any reference or documentation for "Creating and Advertising new service (such as printer,ssh,website etc.) on network".<br>&nbsp;Do yocto BSP supports any such utility to advertise or publish our services on network which will also support DNS-SD? <br><br><font size="2" color="#330033">Thanks and Regards, </font><font color="#330033"><br><b>Rohit Borse </b><br><font size="2">Mob: <span style="WHITE-SPACE: nowrap" class="baec5a81-e4d6-4674-97f3-e9220f0136c1">+91-9765323004</span><br>www.einfochips.com <br>Contact: 020-30262500 <br>Ext-2558 </font></font><br></span></div></body></html>
<table><tr><td bgcolor=#ffffff><font color=#000000><pre>---------------------------------------------------------------------------------------------
Notice: 
This message has been scanned by Trend Micro Mail Security scanner and is believed to be clean
---------------------------------------------------------------------------------------------</pre></font></td></tr></table>

------=_Part_7653_1772452006.1377083873010--
