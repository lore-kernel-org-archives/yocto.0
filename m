Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA32BE00502
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2011 20:51:46 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 23 Sep 2011 11:51:30 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 23 Sep 2011
	11:51:29 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Fri, 23 Sep 2011 11:51:07 +0800
In-Reply-To: <CAEsOVNeZK0+-KKovDG46TPnUj8GQPpRuJ+5PDzspWXbPv5KN2w@mail.gmail.com>
References: <1316656573.17177.66.camel@localhost.localdomain>
	<CAEsOVNc2uOTzhxqbh4VzopYVC0-iUPBccXfNb3ey5wKZFA_VZQ@mail.gmail.com>
	<1316668170.17177.72.camel@localhost.localdomain>
	<1316740588.17177.76.camel@localhost.localdomain>
	<CAEsOVNeZK0+-KKovDG46TPnUj8GQPpRuJ+5PDzspWXbPv5KN2w@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1316749868.17177.86.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: image_types_uboot
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
X-List-Received-Date: Fri, 23 Sep 2011 03:51:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I had modified the "image.bbclass", and can generate ext2.gz.u-boot

and have new problem, when booting, I got that:

/etc/udhcpc.d/50default: line 63: /etc/resolv.conf: No space left on
device

after login, I execute "echo -n > /etc/resolv.conf" success, and I can't
find file /var/log/messages, there is only "wtmp" in "/var/log".

On Fri, 2011-09-23 at 09:20 +0800, McClintock Matthew-B29882 wrote:
> On Thu, Sep 22, 2011 at 8:16 PM, Ni Qingliang
> <niqingliang@insigma.com.cn> wrote:
> > maybe somethings wrong, after add "INHERIT += image_types_uboot" in the
> > local.conf, I got that:
> > ERROR: cannot map 'allarch' to a linux kernel architecture
> >
> > Any suggestion?
> 
> Interesting. I have been seeing this same error and did not yet know
> what was causing it. It has not caused any problems with the actual
> build so far, but it's nice to know what is causing it. It's on my
> list and I plan on looking into it.
> 
> -M

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



