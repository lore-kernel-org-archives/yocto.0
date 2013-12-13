Return-Path: <daniel@haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6096E0079C;
	Fri, 13 Dec 2013 06:46:35 -0800 (PST)
Received: from giant.haxx.se (dast@localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-4.1) with ESMTP id
	rBDEkPDh017548
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 13 Dec 2013 15:46:25 +0100
Received: from localhost (dast@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) with ESMTP id rBDEkN5r017514;
	Fri, 13 Dec 2013 15:46:24 +0100
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Fri, 13 Dec 2013 15:46:23 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: Michael_E_Brown@Dell.com
In-Reply-To: <DB6E482E89290547898851B8CC9D8110013217D962@AUSX7MCPS302.AMER.DELL.COM>
Message-ID: <alpine.DEB.2.00.1312131543270.30428@tvnag.unkk.fr>
References: <DB6E482E89290547898851B8CC9D8110012F80E185@AUSX7MCPS302.AMER.DELL.COM>,
	<5294C950.2030509@yoctoproject.org>
	<DB6E482E89290547898851B8CC9D8110013217D962@AUSX7MCPS302.AMER.DELL.COM>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
X-fromdanielhimself: yes
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Git clone over http broken on git.yoctoproject.org
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
X-List-Received-Date: Fri, 13 Dec 2013 14:46:44 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

On Thu, 12 Dec 2013, Michael_E_Brown@Dell.com wrote:

> HOWEVER, if I use "https" instead of "http", it all WORKS OK. NOTE: Some 
> repos work over http, some don't. Working: meta-selinux, yocto-autobuilder, 
> for example.

You're using a HTTP proxy, right? I suspect the http vs https difference is 
then simply because git will use completely different ways to go through the 
proxies for the different protocols.

> git clone --mirror http://git.yoctoproject.org/git/poky.git
> Initialized empty Git repository in /home/michael_e_brown/yocto/poky.git/
> error: RPC failed; result=52, HTTP code = 100

I think this means that git gets a HTTP 100 continue response back but then 
nothing else, which indicates a problem in your network or proxy.

Can you use git fine over this http+proxy against other git repos out in the 
wild? Which git + libcurl versions are you using?

-- 

  / daniel.haxx.se

