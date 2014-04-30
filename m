Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53ADCE004EB; Wed, 30 Apr 2014 04:15:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
X-Greylist: delayed 6088 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 04:15:20 PDT
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98ED4E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 04:15:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3U9Xo2s008326
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 02:33:51 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Wed, 30 Apr 2014 02:33:50 -0700
Message-ID: <5360C37F.9010302@windriver.com>
Date: Wed, 30 Apr 2014 17:33:51 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <2019960.0Ttd8yjkFA@localhost.localdomain>
In-Reply-To: <2019960.0Ttd8yjkFA@localhost.localdomain>
X-Originating-IP: [128.224.162.187]
Subject: Re: PACKAGECONFIG and related parameters
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
X-List-Received-Date: Wed, 30 Apr 2014 11:15:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/23/2014 09:24 PM, Diego wrote:
> Hi,
>
> I'd like to update the glmark2 recipe:
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb
> to latest upstream version.
>
> The problem is the configure step is done with:
> ./waf configure --with-flavors=x11-gl,x11-glesv2
> instead of the previous release's syntax:
> ./waf configure --enable-gl --enable-glesv2
> Unfortunately:
> ./waf configure --with-flavors=x11-gl --with-flavors=x11-glesv2
> is not an accepted syntax.
>
> How can I express the PACKAGECONFIG[...] parameters, so that if both gl and
> gles2 are present I obtain "--with-flavors=x11-gl,x11-glesv2" as the configure
> parameter?
>
> Thanks,
> Diego
>

I don't think that's achievable with PACKAGECONFIG alone.
I would suggest you write a do_configure_prepend and adjust the 
configure options there.
For example, if you get '--with-flavors=x11-gl 
--with-flavors=x11-glesv2', you adjust it to 
'-with-flavors=x11-gl,x11-glesv2'.

Best Regards,
Chen Qi

