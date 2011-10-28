Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB77E013E0
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 20:00:26 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 28 Oct 2011 11:00:08 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 28 Oct 2011
	11:00:06 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 28 Oct 2011 10:59:20 +0800
In-Reply-To: <1319705155.10032.40.camel@localhost.localdomain>
References: <1319705155.10032.40.camel@localhost.localdomain>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1319770761.10032.44.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: Re: how to set timezone
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Oct 2011 03:00:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Is anyone there?



On Thu, 2011-10-27 at 16:45 +0800, Ni Qingliang wrote:
> Hello All:
> 
> what is the right way to set timezone?
> 
> I have added tzdata into my image, and can find some variables in the
> etc, e.g. 'TZ'.
> 
> on my archlinux, I can set TIMEZONE in the rc.conf, and used in
> rc.sysvinit (which will link the /etc/localtime using TIMEZONE).
> 
> what is the right place to locate similar setting code (e.g. link
> the /etc/localtime) in the yocto?
> 
> thanks!
> 
> 
> 
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> http://niqingliang2003.wordpress.com
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



