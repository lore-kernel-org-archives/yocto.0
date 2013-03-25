Return-Path: <huanmateme@163.com>
Received: from m13-104.163.com (unknown [220.181.13.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC99CE014D0
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 06:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Cc:Subject:In-Reply-To:
	References:Content-Type:MIME-Version:Message-ID; bh=6tvjWqj26Hyn
	b+QrlwIM5T+uGSjlRSnasV89FOn0Nso=; b=Xi9GLEWY/LRN4Y59BlFeCL35hkzE
	ck6U6ZRNL/avLLGyhCmAuPxpDFLmpgauwdVNz/HkM3otusZTQqD8Em1IrTQXNhMX
	EQKT+8KUUcc1Wy1xzEjjLEgBSFhFeF4i37dyNPiudRh4d9DF+nh4u/NvpZzrIS2+
	EJuSvyDE89ej8LI=
Received: from huanmateme$163.com ( [111.194.203.227] ) by
	ajax-webmail-wmsvr104 (Coremail) ; Mon, 25 Mar 2013 21:05:08 +0800 (CST)
X-Originating-IP: [111.194.203.227]
Date: Mon, 25 Mar 2013 21:05:08 +0800 (CST)
From: Biao  <huanmateme@163.com>
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20130201(21528.5249.5248) Copyright (c) 2002-2013 www.mailtech.cn
	163com
In-Reply-To: <3679852.pVsUhJRn4g@helios>
References: <22f4a24d.10498.13da1222f53.Coremail.huanmateme@163.com>
	<3679852.pVsUhJRn4g@helios>
MIME-Version: 1.0
Message-ID: <35966270.12595.13da1a6fea6.Coremail.huanmateme@163.com>
X-CM-TRANSID: aMGowEBpS0GFS1BRtwYAAA--.172W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/1tbiJw-qgFEABqhj8AACss
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto@yoctoproject.org
Subject: Re: How to install the in-tree modules into the rootfs.
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
X-List-Received-Date: Mon, 25 Mar 2013 13:05:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_279162_1847807971.1364216708774"

------=_Part_279162_1847807971.1364216708774
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit



At 2013-03-25 18:47:54,"Paul Eggleton" <paul.eggleton@linux.intel.com> wrote:
>On Monday 25 March 2013 18:40:04 Biao wrote:
>> step 1. Configure the kernel with some modules as "M".
>> step 2. Build the kernel.
>> step 3. After the building, there is a modules-*.tgz in the deploy/images
>> directory. My question is how to install it to the target rootfs. I assume
>> it is "bitbake -f -c populate_sysroot core-image-minimal-dev', but i was
>> wrong.
>
>Each module ends up as a separate package (kernel-module-modulename); there is
>also a kernel-modules package which installs all of them. In either case you
>need to add those packages to the image. For information on how to do that,
>see:
>
>http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage
Paul,
Thanks a lot for your help.
>
>Cheers,
>Paul
>
>-- 
>
>Paul Eggleton
>Intel Open Source Technology Centre

------=_Part_279162_1847807971.1364216708774
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><br><pre>At&nbsp;2013-03-25&nbsp;18:47:54,"Paul&nbsp;Eggleton"&nbsp;&lt;paul.eggleton@linux.intel.com&gt;&nbsp;wrote:
&gt;On&nbsp;Monday&nbsp;25&nbsp;March&nbsp;2013&nbsp;18:40:04&nbsp;Biao&nbsp;wrote:
&gt;&gt;&nbsp;step&nbsp;1.&nbsp;Configure&nbsp;the&nbsp;kernel&nbsp;with&nbsp;some&nbsp;modules&nbsp;as&nbsp;"M".
&gt;&gt;&nbsp;step&nbsp;2.&nbsp;Build&nbsp;the&nbsp;kernel.
&gt;&gt;&nbsp;step&nbsp;3.&nbsp;After&nbsp;the&nbsp;building,&nbsp;there&nbsp;is&nbsp;a&nbsp;modules-*.tgz&nbsp;in&nbsp;the&nbsp;deploy/images
&gt;&gt;&nbsp;directory.&nbsp;My&nbsp;question&nbsp;is&nbsp;how&nbsp;to&nbsp;install&nbsp;it&nbsp;to&nbsp;the&nbsp;target&nbsp;rootfs.&nbsp;I&nbsp;assume
&gt;&gt;&nbsp;it&nbsp;is&nbsp;"bitbake&nbsp;-f&nbsp;-c&nbsp;populate_sysroot&nbsp;core-image-minimal-dev',&nbsp;but&nbsp;i&nbsp;was
&gt;&gt;&nbsp;wrong.
&gt;
&gt;Each&nbsp;module&nbsp;ends&nbsp;up&nbsp;as&nbsp;a&nbsp;separate&nbsp;package&nbsp;(kernel-module-modulename);&nbsp;there&nbsp;is
&gt;also&nbsp;a&nbsp;kernel-modules&nbsp;package&nbsp;which&nbsp;installs&nbsp;all&nbsp;of&nbsp;them.&nbsp;In&nbsp;either&nbsp;case&nbsp;you
&gt;need&nbsp;to&nbsp;add&nbsp;those&nbsp;packages&nbsp;to&nbsp;the&nbsp;image.&nbsp;For&nbsp;information&nbsp;on&nbsp;how&nbsp;to&nbsp;do&nbsp;that,
&gt;see:
&gt;
&gt;http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage</pre><pre>Paul,</pre><pre>Thanks a lot for your help.</pre><pre>&gt;
&gt;Cheers,
&gt;Paul
&gt;
&gt;--&nbsp;
&gt;
&gt;Paul&nbsp;Eggleton
&gt;Intel&nbsp;Open&nbsp;Source&nbsp;Technology&nbsp;Centre
</pre></div>

------=_Part_279162_1847807971.1364216708774--
