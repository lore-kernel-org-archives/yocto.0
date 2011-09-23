Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41DA8E004D1
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2011 18:17:08 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 23 Sep 2011 09:16:51 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 23 Sep 2011
	09:16:50 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Fri, 23 Sep 2011 09:16:28 +0800
In-Reply-To: <1316668170.17177.72.camel@localhost.localdomain>
References: <1316656573.17177.66.camel@localhost.localdomain>
	<CAEsOVNc2uOTzhxqbh4VzopYVC0-iUPBccXfNb3ey5wKZFA_VZQ@mail.gmail.com>
	<1316668170.17177.72.camel@localhost.localdomain>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1316740588.17177.76.camel@localhost.localdomain>
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
X-List-Received-Date: Fri, 23 Sep 2011 01:17:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

maybe somethings wrong, after add "INHERIT += image_types_uboot" in the
local.conf, I got that:
ERROR: cannot map 'allarch' to a linux kernel architecture

Any suggestion?

On Thu, 2011-09-22 at 13:09 +0800, 倪庆亮 wrote:
> THANKS!
> 
> On Thu, 2011-09-22 at 12:33 +0800, McClintock Matthew-B29882 wrote:
> > On Wed, Sep 21, 2011 at 8:56 PM, Ni Qingliang
> > <niqingliang@insigma.com.cn> wrote:
> > > Hello, All:
> > >
> > > when using "IMAGE_FSTYPES="ext2.gz.u-boot", I can't get what was
> > > expected.
> > >
> > > I can found it in "image_types_uboot.bbclass", but "image.bbclass" only
> > > "inherit image_types", not "image_types_uboot".
> > >
> > > what can I do? How about substitute the "inherit image_types" by
> > > "inherit image_types_uboot" in "image.bbclass"?
> >
> > You can add:
> >
> > INHERIT += "image_types_uboot"
> >
> > to your local.conf to enable these types. At some point it would be
> > good if we do this by default.
> >
> > -M
> 
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> http://niqingliang2003.wordpress.com
> 
> 

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



