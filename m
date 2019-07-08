Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6B26E00DA3; Sun,  7 Jul 2019 18:34:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 756A6E00A93
	for <yocto@yoctoproject.org>; Sun,  7 Jul 2019 18:34:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x681YDLa008425
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 7 Jul 2019 18:34:13 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 7 Jul 2019 18:34:13 -0700
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWTqFYjb0hzeFJNuDCGfZB8=G5h1eN4b9GULgng_5YQCLw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <fa7df758-1686-90cf-3a47-bfe6e5b2450b@windriver.com>
Date: Mon, 8 Jul 2019 09:46:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWTqFYjb0hzeFJNuDCGfZB8=G5h1eN4b9GULgng_5YQCLw@mail.gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: Missing init symbolic link in rootfs
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
X-List-Received-Date: Mon, 08 Jul 2019 01:34:15 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/07/2019 07:01 AM, JH wrote:
> Hi,
>
> I built the rootfs image but it missed a symbolic link init at the /
> directory, although I added following init link manually, I should fix
> it in Yocto build. What should I fix the image build cofiguration  to
> include init link at the /?
>
> $ ls /
> bin   dev  home  lib    mnt   root  sbin  tmp  var
> boot  etc  init  media  proc  run   sys   usr
>
> $ ls -l /init
> init -> /sbin/init
>
> Thank you.
>
> Kind regards,
>
> - jupiter

/sbin/init is default location. Why do you need /init ?

Best Regards,

Chen Qi


