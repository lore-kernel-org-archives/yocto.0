Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CEF14C810B1
	for <yocto@yoctoproject.org>; Fri, 10 Dec 2010 10:20:43 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGKe8t027843;
	Fri, 10 Dec 2010 16:20:40 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27321-08; Fri, 10 Dec 2010 16:20:36 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGKXNx027837
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 10 Dec 2010 16:20:34 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
Date: Fri, 10 Dec 2010 16:20:18 +0000
Message-ID: <1291998019.14420.53.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: why cp in do_install() change file permission mode?
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
X-List-Received-Date: Fri, 10 Dec 2010 16:20:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-02 at 18:16 +0800, Lu, Lianhao wrote:
> Hi fellows,
> 
> Could anyone tell me why does the cp in do_install() change the file permission mode? Thanks!
> 
> do_install () {
> 	rm -rf ${D}${installed_dir}
> 	install -d ${D}${installed_dir}
> 	cp -rp ${S}/* ${D}${installed_dir}
> }
> 
> After "bitbake xxx -c install", I found the file under
> ${D}${installed_dir} had the permission mode of 0744 while the
> corresponding file under directory ${S} had the mode of 0644. Why did
> this happen? How to avoid this kind of mode change? Thanks!

do_install and all tasks that work on the output of do_install run under
pseduo which can mean the permissions on disk might not match the real
permissions as seen within a pseduo session.

To illustrate, in a do_install do something like

chown root.root somefile 
ls -la somefile

then look at the file on disk and you'll see different owners. The
ownership works the same way as the permissions.

Cheers,

Richard

(Note Poky specific questions should be on the poky mailing list)


