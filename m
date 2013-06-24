Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD191E01403
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 20:29:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5O3TmOE021561
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 23 Jun 2013 20:29:50 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Sun, 23 Jun 2013 20:29:46 -0700
Message-ID: <51C7BD29.6060607@windriver.com>
Date: Sun, 23 Jun 2013 23:29:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
In-Reply-To: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	zhenhua.luo@freescale.com, Darren Hart <darren.hart@intel.com>
Subject: Re: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Mon, 24 Jun 2013 03:29:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-23 7:08 PM, Insop Song wrote:
> Hi,
>
> - Question
> "How NOT to include kernel image to the rootfs?"
>
> - Background
> In our application, we use u-boot to load kernel and rootfs from nand
> flash separately.
>
> I don't want to include kernel image inside /boot as I don't need it
> over there.
> I could untar the rootfs, remove, and tar it up again, but I would like
> to find a way within the yocto framework.
>
> I was not able to find a way by looking up the recipies and googling on
> this topic.
>
> Could any one help me?

Have you tried clearing RDEPENDS_kernel-base ?

 From kernel.bbclass:

# Allow machines to override this dependency if kernel image files are
# not wanted in images as standard
RDEPENDS_kernel-base ?= "kernel-image"

Cheers,

Bruce




>
> Thank you,
>
> Insop


