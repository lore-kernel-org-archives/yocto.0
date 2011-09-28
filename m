Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5AB4E011BA
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 19:05:08 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 28 Sep 2011 10:04:58 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 28 Sep 2011
	10:04:57 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Wed, 28 Sep 2011 10:04:24 +0800
In-Reply-To: <CAEsOVNdthcyBsS--65CirCnoMZ7wBamUKpebvhfVE+pDmkOSoQ@mail.gmail.com>
References: <1317093523.6536.58.camel@localhost.localdomain>
	<CAEsOVNc84ON5Oxri1=eAHG74NGT9B14QYUDs8JXa9KhrG0XaSw@mail.gmail.com>
	<1317171633.6536.86.camel@localhost.localdomain>
	<CAEsOVNdthcyBsS--65CirCnoMZ7wBamUKpebvhfVE+pDmkOSoQ@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1317175465.6536.98.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ntpclient compile fail
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
X-List-Received-Date: Wed, 28 Sep 2011 02:05:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

1. sorry, I will.
2. Yes, I made a new Makefile (based on the original) as the patch of
ntpclient (which will override the original Makefile).

On Wed, 2011-09-28 at 09:50 +0800, McClintock Matthew-B29882 wrote:
> On Tue, Sep 27, 2011 at 8:00 PM, Ni Qingliang
> <niqingliang@insigma.com.cn> wrote:
> > the attachement is the bb file and Makefile(modified),
> 
> It usually best to include these attachments inline when possible.
> 
> > after 'override' CFLAGS/LDFLAGS in Makefile, I have added
> > override LDFLAGS += -Wl,--no-as-needed
> > in the Makefile to neutralize the '-Wl,--as-needed' in the original
> > LDFLAGS.
> >
> > and then the world clear.
> 
> Are you editing the source files in this package or the recipe itself?
> 
> -M

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



