Return-Path: <daniel@haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B46E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 12:23:54 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id r6JJNkeX012968
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 19 Jul 2013 21:23:46 +0200
Received: from localhost (dast@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) with ESMTP id r6JJNkhQ012963;
	Fri, 19 Jul 2013 21:23:46 +0200
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Fri, 19 Jul 2013 21:23:46 +0200 (CEST)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: Saddam Quirem <squirem@fbdfrozen.com>
In-Reply-To: <loom.20130719T173339-251@post.gmane.org>
Message-ID: <alpine.DEB.2.00.1307192115260.3913@tvnag.unkk.fr>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
	<CA452391058F6D4E9715FB2C29D9312A01625D60@039-SN2MPN1-023.039d.mgd.msft.net>
	<loom.20130717T172709-633@post.gmane.org>
	<CA452391058F6D4E9715FB2C29D9312A01627246@039-SN2MPN1-023.039d.mgd.msft.net>
	<loom.20130718T174414-697@post.gmane.org>
	<alpine.DEB.2.00.1307181950150.21940@tvnag.unkk.fr>
	<loom.20130719T173339-251@post.gmane.org>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
X-fromdanielhimself: yes
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Enabling SFTP on libcurl package
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
X-List-Received-Date: Fri, 19 Jul 2013 19:23:56 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

On Fri, 19 Jul 2013, Saddam Quirem wrote:

> Since you're the author and maintainer of cURL, I was wondering why SSH is 
> not yet supported in the Yocto cURL package and if it will be?

Sorry, I'm the maintainer of the actual *upstream* curl project, I don't have 
anything to do with the current recipe in Yocto.

-- 

  / daniel.haxx.se

