Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 438F04C800C1
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 21:26:40 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 30 Jun 2011 10:26:20 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 30 Jun 2011
	10:26:19 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Date: Thu, 30 Jun 2011 10:29:42 +0800
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
X-Mailer: Evolution 3.0.2 
Message-ID: <1309400982.1876.10.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dependency gui problem
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
X-List-Received-Date: Thu, 30 Jun 2011 02:26:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

once builded, is after executed "bitbake core-image-minimal" and
generated the final image.

On Thu, 2011-06-30 at 10:18 +0800, Cui, Dexuan wrote:
> , and set env, follow cmd works normally.
> > bitbake -g -u depexp core-image-minimal
> >
> > but once builded, the cmd works abnormal, the symptom like that:
> What does "once builded" mean? 
-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



