Return-Path: <caterwaul@163.com>
Received: from m13-85.163.com (m13-85.163.com [220.181.13.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E339E013E5
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 06:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Message-ID:Subject:
	MIME-Version:Content-Type; bh=B+/Lk94pnxrJ3QC3vaW3TjL71TC6D6Fwoh
	L4sxiwYBo=; b=YV7xIUOoa3dL5p2zIdoXDZDF3/E+VnkDZhTW5i8pM+ugNwYCJA
	Ie6vFLfvv9s7utq7fF+9VN9jWg97OP6KTwUmUpuzZCvbvGlzFWmYb0EhoqMLrUxk
	0cxT4qAEnYULcDC5y1m52MQZde1jQYrG+Ca8I0kFsBhQ9/VI1sJWcGdUo=
Received: from caterwaul ( [121.18.126.91] ) by ajax-webmail-wmsvr85
	(Coremail) ; Wed, 18 Apr 2012 21:58:55 +0800 (CST)
Date: Wed, 18 Apr 2012 21:58:55 +0800 (CST)
From: caterwaul  <caterwaul@163.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <12eeb79.23ed8.136c5bfaebe.Coremail.caterwaul@163.com>
MIME-Version: 1.0
X-Originating-IP: [121.18.126.91]
X-CM-HeaderCharset: GBK
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20120307(17626.4462.4455) Copyright (c) 2002-2012 www.mailtech.cn
	163com
X-CM-CTRLDATA: UUCIwWZvb3Rlcl9odG09Mzk4Mzo4MQ==
X-CM-TRANSID: VcGowEBJV0OfyI5P0UKRAA--.21W
X-CM-SenderInfo: pfdwv2hzdxzqqrwthudrp/1tbiKBmUJE9oyzjEqwAAs6
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Fw:Re:Re: problem about package and subpackage
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
X-List-Received-Date: Wed, 18 Apr 2012 13:58:58 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_389571_1376101070.1334757535422"

------=_Part_389571_1376101070.1334757535422
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit






-------- Forwarding messages --------
From: caterwaul <caterwaul@163.com>
Date: 2012-04-18 21:57:27
To: "Gary Thomas" <gary@mlbassoc.com>
Subject: Re:Re: [yocto] problem about package and subpackage

At 2012-04-18 19:57:21,"Gary Thomas" <gary@mlbassoc.com> wrote:
>On 2012-04-18 05:29, caterwaul wrote:
>> Hi,
>>
>> I wanted to add dhcp(4.2.0) into my image. And I added "dhcp" into IMAGE_INSTALL of my image's bb file. After I runing bitbake, the dhcp package is normally fetched and compiled
>> and so on. But during do_rootfs bitbake reported as follow:
>> Processing dhcp...
>> Unable to find package dhcp (dhcp)!
>> ERROR: Function 'do_rootfs' failed
>>
>> I note that in /meta/recipes-connectivity/dhcp/dhcp4.inc the dhcp package is split into 4 subpackages(PACKAGES += "dhcp-server dhcp-client dhcp-relay dhcp-omshell"). Now If I
>> remove "dhcp" from IMAGE_INSTALL and add these 4 subpackages' name into IMAGE_INSTALL and run bitbake AGAIN, they can be normally added into my final image.
>>
>> I've tried to modify last part of dhcp4.inc as follow: But bitbake still reported "Unable to find package dhcp"
>> FILES_${PN} = ""
>> FILES_${PN} += "${sbindir}/dhcpd ${sysconfdir}/init.d/dhcp-server ${sysconfdir}/default/dhcp-server ${sysconfdir}/dhcp/dhcpd.conf"
>> FILES_${PN} += "${sbindir}/dhcrelay ${sysconfdir}/init.d/dhcp-relay ${sysconfdir}/default/dhcp-relay"
>> FILES_${PN} += "${base_sbindir}/dhclient ${base_sbindir}/dhclient-script ${sysconfdir}/dhcp/dhclient.conf"
>> FILES_${PN} += "${bindir}/omshell"
>> RDEPENDS_${PN} = "bash"
>>
>> So How should I config bitbake to get my image with dhcp by running bitbake ONLY ONCE?
>
>There is no "dhcp" package, only dhcp-client, dhcp-relay, dhcp-server.
>Pick the functionality you need and use the appropriate package(s)
>



Thank you very much. But maybe my question is not clear. What I mean is:
If I pick dhcp-server dhcp-client dhcp-relay and dhcp-omshell, bitbake will NOT start to build and report can NOT find these packages. On the other hand, if I pick dhcp, bitbake will start to build, but at do_rootfs stage it will report "Unable to find package dhcp (dhcp)!"(at this moment all dhcp-xxx packages has actually been generated there). So I want to know how to config bitbake to complete the build and produce image with whole or part of dhcp.



------=_Part_389571_1376101070.1334757535422
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><br><br><div></div><div id="divNeteaseMailCard"></div><br><div id="isForwardContent">-------- Forwarding messages --------<br>From: caterwaul &lt;caterwaul@163.com&gt;<br>Date: 2012-04-18 21:57:27<br>To:  "Gary Thomas" &lt;gary@mlbassoc.com&gt;<br>Subject: Re:Re:&nbsp;[yocto]&nbsp;problem&nbsp;about&nbsp;package&nbsp;and&nbsp;subpackage<br><div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><pre>At&nbsp;2012-04-18&nbsp;19:57:21,"Gary&nbsp;Thomas"&nbsp;&lt;<a href="mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&nbsp;wrote:
&gt;On&nbsp;2012-04-18&nbsp;05:29,&nbsp;caterwaul&nbsp;wrote:
&gt;&gt;&nbsp;Hi,
&gt;&gt;
&gt;&gt;&nbsp;I&nbsp;wanted&nbsp;to&nbsp;add&nbsp;dhcp(4.2.0)&nbsp;into&nbsp;my&nbsp;image.&nbsp;And&nbsp;I&nbsp;added&nbsp;"dhcp"&nbsp;into&nbsp;IMAGE_INSTALL&nbsp;of&nbsp;my&nbsp;image's&nbsp;bb&nbsp;file.&nbsp;After&nbsp;I&nbsp;runing&nbsp;bitbake,&nbsp;the&nbsp;dhcp&nbsp;package&nbsp;is&nbsp;normally&nbsp;fetched&nbsp;and&nbsp;compiled
&gt;&gt;&nbsp;and&nbsp;so&nbsp;on.&nbsp;But&nbsp;during&nbsp;do_rootfs&nbsp;bitbake&nbsp;reported&nbsp;as&nbsp;follow:
&gt;&gt;&nbsp;Processing&nbsp;dhcp...
&gt;&gt;&nbsp;Unable&nbsp;to&nbsp;find&nbsp;package&nbsp;dhcp&nbsp;(dhcp)!
&gt;&gt;&nbsp;ERROR:&nbsp;Function&nbsp;'do_rootfs'&nbsp;failed
&gt;&gt;
&gt;&gt;&nbsp;I&nbsp;note&nbsp;that&nbsp;in&nbsp;/meta/recipes-connectivity/dhcp/dhcp4.inc&nbsp;the&nbsp;dhcp&nbsp;package&nbsp;is&nbsp;split&nbsp;into&nbsp;4&nbsp;subpackages(PACKAGES&nbsp;+=&nbsp;"dhcp-server&nbsp;dhcp-client&nbsp;dhcp-relay&nbsp;dhcp-omshell").&nbsp;Now&nbsp;If&nbsp;I
&gt;&gt;&nbsp;remove&nbsp;"dhcp"&nbsp;from&nbsp;IMAGE_INSTALL&nbsp;and&nbsp;add&nbsp;these&nbsp;4&nbsp;subpackages'&nbsp;name&nbsp;into&nbsp;IMAGE_INSTALL&nbsp;and&nbsp;run&nbsp;bitbake&nbsp;AGAIN,&nbsp;they&nbsp;can&nbsp;be&nbsp;normally&nbsp;added&nbsp;into&nbsp;my&nbsp;final&nbsp;image.
&gt;&gt;
&gt;&gt;&nbsp;I've&nbsp;tried&nbsp;to&nbsp;modify&nbsp;last&nbsp;part&nbsp;of&nbsp;dhcp4.inc&nbsp;as&nbsp;follow:&nbsp;But&nbsp;bitbake&nbsp;still&nbsp;reported&nbsp;"Unable&nbsp;to&nbsp;find&nbsp;package&nbsp;dhcp"
&gt;&gt;&nbsp;FILES_${PN}&nbsp;=&nbsp;""
&gt;&gt;&nbsp;FILES_${PN}&nbsp;+=&nbsp;"${sbindir}/dhcpd&nbsp;${sysconfdir}/init.d/dhcp-server&nbsp;${sysconfdir}/default/dhcp-server&nbsp;${sysconfdir}/dhcp/dhcpd.conf"
&gt;&gt;&nbsp;FILES_${PN}&nbsp;+=&nbsp;"${sbindir}/dhcrelay&nbsp;${sysconfdir}/init.d/dhcp-relay&nbsp;${sysconfdir}/default/dhcp-relay"
&gt;&gt;&nbsp;FILES_${PN}&nbsp;+=&nbsp;"${base_sbindir}/dhclient&nbsp;${base_sbindir}/dhclient-script&nbsp;${sysconfdir}/dhcp/dhclient.conf"
&gt;&gt;&nbsp;FILES_${PN}&nbsp;+=&nbsp;"${bindir}/omshell"
&gt;&gt;&nbsp;RDEPENDS_${PN}&nbsp;=&nbsp;"bash"
&gt;&gt;
&gt;&gt;&nbsp;So&nbsp;How&nbsp;should&nbsp;I&nbsp;config&nbsp;bitbake&nbsp;to&nbsp;get&nbsp;my&nbsp;image&nbsp;with&nbsp;dhcp&nbsp;by&nbsp;running&nbsp;bitbake&nbsp;ONLY&nbsp;ONCE?
&gt;
&gt;There&nbsp;is&nbsp;no&nbsp;"dhcp"&nbsp;package,&nbsp;only&nbsp;dhcp-client,&nbsp;dhcp-relay,&nbsp;dhcp-server.
&gt;Pick&nbsp;the&nbsp;functionality&nbsp;you&nbsp;need&nbsp;and&nbsp;use&nbsp;the&nbsp;appropriate&nbsp;package(s)
&gt;
</pre><pre><br></pre><pre><span style="white-space: normal; ">Thank you very much. But maybe my question is not clear. What I mean is:</span><div style="white-space: normal; ">If I pick&nbsp;dhcp-server&nbsp;dhcp-client&nbsp;dhcp-relay and dhcp-omshell, bitbake will NOT start to build and report can NOT find these packages. On the other hand, if I pick dhcp, bitbake will start to build, but at do_rootfs stage it will report "Unable&nbsp;to&nbsp;find&nbsp;package&nbsp;dhcp&nbsp;(dhcp)!"(at this moment all dhcp-xxx packages has actually been generated there). So I want to know how to config bitbake to complete the build and produce image with whole or part of dhcp.</div>
</pre></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span></div></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_389571_1376101070.1334757535422--
