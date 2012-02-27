Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95A6E00749
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 08:14:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1RGEJx9030142;
	Mon, 27 Feb 2012 16:14:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29570-06; Mon, 27 Feb 2012 16:14:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1RGEBv4030136
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 27 Feb 2012 16:14:13 GMT
Message-ID: <1330359254.4593.25.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: niqingliang@insigma.com.cn
Date: Mon, 27 Feb 2012 16:14:14 +0000
In-Reply-To: <1330319194.1086.120.camel@localhost.localdomain>
References: <1330319194.1086.120.camel@localhost.localdomain>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [glib]glib-2.0 install fail
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
X-List-Received-Date: Mon, 27 Feb 2012 16:14:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-02-27 at 13:06 +0800, Ni Qingliang wrote:
> Hi, All:
> 
> after latest update, the glib-2.0 install fail with err info:
> 
> rmdir: failed to remove
> `.../tmp/work/x86_64-linux/glib-2.0-native-1_2.30.2-r6/image/.../tmp/sysroots/x86_64-linux/usr/lib/gio/modules/': Directory not empty
> 
> I have checked that directory, there are two files:
> libgiofam.la libgiofam.so.
> 
> what's the problem? And there are not these two files on pc.

There is a patch in master which fixes this problem now.

(disabling libfam in glib-2.0)

Cheers,

Richard


