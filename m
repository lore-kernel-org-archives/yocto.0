Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1E3CE00B30; Thu, 10 Dec 2015 22:47:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.1 RCVD_IN_SBL RBL: Received via a relay in Spamhaus SBL
	*      [95.31.249.87 listed in zen.spamhaus.org]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.174.104.90 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.tibbo.com (smtp.tibbo.com [93.174.104.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2BF9E0088C
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 22:47:10 -0800 (PST)
Received: (qmail 26407 invoked by uid 508); 11 Dec 2015 09:47:09 +0300
Received: from 95-31-249-87.broadband.corbina.ru (HELO dvh.tibbo.net)
	(dvorkin@tibbo.com@95.31.249.87)
	by smtp.tibbo.com with SMTP; 11 Dec 2015 09:47:09 +0300
To: yocto@yoctoproject.org
References: <BY1PR03MB13398A9786969B9BF6D630BFA10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
From: Dvorkin Dmitry <dvorkin@tibbo.com>
Message-ID: <566A716C.1060904@tibbo.com>
Date: Fri, 11 Dec 2015 09:47:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <BY1PR03MB13398A9786969B9BF6D630BFA10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
Subject: systemd postinstall start service
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
X-List-Received-Date: Fri, 11 Dec 2015 06:47:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello!

I have a recipe that can be installed into image using postinstall RPM 
scriptlet only.
It's an archive wrapped with a shell script.
During the do_rootfs step this RPM is installed such a way: executional 
archive placed into /opt/.
Then during the first system load systemd runs it's postinstall scriptlet

scriptlet is simple:

/opt/my_server.bin.sh
systemctl enable my_server.service
systemctl daemon-reload
systemctl start my_server.service

In my system when systemd runs this postinstall scriptlet it's executed, 
system is loaded, service is enabled, but not started.
service state is "enabled, but inactive (died)"
During the postinstall scriptlet execution at systemd first load I see 
message that my service is stopping instead of starting.
After reboot my_server.service is enabled and started.

Looks like systemd doesn't want to start service or it stopping it 
immediately after postinstall.
What can I do to start it on first load after postinstall ?

my_service.service have such a settings:

[Unit]
Description=my_server
After=syslog.target

[Service]
Type=simple
Restart=on-failure

Thanks!

