Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA4B4E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 13:34:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q03LYTIY010791;
	Tue, 3 Jan 2012 21:34:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09598-10; Tue,  3 Jan 2012 21:34:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q03LYIEL010785
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 3 Jan 2012 21:34:19 GMT
Message-ID: <1325626458.3555.46.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Tue, 03 Jan 2012 21:34:18 +0000
In-Reply-To: <cover.1325607441.git.sgw@linux.intel.com>
References: <cover.1325607441.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [CONSOLIDATED PULL (meta-yocto) 0/4]
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
X-List-Received-Date: Tue, 03 Jan 2012 21:34:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-03 at 08:18 -0800, Saul Wold wrote:
> Richard,
> 
> This is the meta-yocto patches that coordiate with the oe-core changes
> you have already pulled.
> 
> Sau!
> 
> The following changes since commit f3a1a8897c78e116d7d28947a85687d0ce9d7df7:
> 
>   pseudo: ensure libs are included in package (2012-01-03 12:14:41 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/stage
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
> 
> Bruce Ashfield (2):
>   linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x
>     support
>   linux-yocto-rt/meta-yocto: add routerstationpro support
> 
> Darren Hart (2):
>   distro: Add POKY_DEFAULT_EXTRA_R* variables
>   distro: Add poky-tiny distro definition

Merged to master, thanks.

Richard


