Return-Path: <huanmateme@163.com>
Received: from m13-55.163.com (unknown [220.181.13.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC5D2E00498
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 22:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Cc:Subject:In-Reply-To:
	References:Content-Type:MIME-Version:Message-ID; bh=mLaUljtgKo1v
	jBSK4Co59vbyiatOIuzqY2/EKQM80eI=; b=kJR5PN/4CciRFjC73osYDjJmWYoW
	cTZtxICSUWQ0ODUUfIkIbhorY+pqk68NnbXp1sl889KX6qGCdqbIXn45DHfExKWw
	2sbOENqyJfR7SElLhynGwtqIk4RJxVmEY8vpO/FvN4sIYEOZ8WnQbSvkcFsO24H0
	QET/GLKC9nv/EzY=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr55 (Coremail) ; Sat, 5 Jan 2013 14:24:07 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Sat, 5 Jan 2013 14:24:07 +0800 (CST)
From: Biao  <huanmateme@163.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121219(21170.5156.5150) Copyright (c) 2002-2013 www.mailtech.cn
	163com
In-Reply-To: <CAJTo0LZYf60Sn6=jg6jmeGKWg2fpJywfPQkBgaCZGw+r3j=tvw@mail.gmail.com>
References: <2b77c4be.fa75.13c0455c02d.Coremail.huanmateme@163.com>
	<CAGfZjq4+JFT_HA-1SitqkWaxWgOztrd7XyQc7vBMfhTLauVGkw@mail.gmail.com>
	<CAJTo0LZYf60Sn6=jg6jmeGKWg2fpJywfPQkBgaCZGw+r3j=tvw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <b356f1a.567a.13c096176d7.Coremail.huanmateme@163.com>
X-CM-TRANSID: N8GowGD5n0EIx+dQ7TMaAA--.28314W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBSRubgE9otnkSjwABs9
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Where does the 'PN' is set.
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
X-List-Received-Date: Sat, 05 Jan 2013 06:24:41 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_82032_109797392.1357367047894"

------=_Part_82032_109797392.1357367047894
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit


At 2013-01-04 19:35:58,"Burton, Ross" <ross.burton@intel.com> wrote:
>On 4 January 2013 11:34, Bill Traynor <wmat@alphatroop.com> wrote:
>>> I would like to know where does the so-called 'gather' exactly happens?
>>> For example, does it mean the bitbake core get the 'PN = u-boot' by
>>> cutting of the name of 'u-boot_2011.03.bb'?
>
>If you want to know exactly where it happens, see bitbake.conf:
>
>PN = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or
>'defaultpkgname'}"
>PV = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1] or '1.0'}"
>PR = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[2] or 'r0'}"
Now i began to realize that my confusion seems due to a misunderstanding of the parsing procedure.
So the bitbake is NOT a ONE-TIME parsing file, it will be parsed again before parsing any bb file of the whole BBFILES set. 
step_1: parsing bitbake.conf, parsing pakage1.bb
step_2: parsing bitbake.conf, parsing pakage2.bb
step_n: parsing bitbake.conf, parsing pakagen.bb
Is that correct?
>
>Ross

------=_Part_82032_109797392.1357367047894
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial"><pre><br>At&nbsp;2013-01-04&nbsp;19:35:58,"Burton,&nbsp;Ross"&nbsp;&lt;ross.burton@intel.com&gt;&nbsp;wrote:
&gt;On&nbsp;4&nbsp;January&nbsp;2013&nbsp;11:34,&nbsp;Bill&nbsp;Traynor&nbsp;&lt;wmat@alphatroop.com&gt;&nbsp;wrote:
&gt;&gt;&gt;&nbsp;I&nbsp;would&nbsp;like&nbsp;to&nbsp;know&nbsp;where&nbsp;does&nbsp;the&nbsp;so-called&nbsp;'gather'&nbsp;exactly&nbsp;happens?
&gt;&gt;&gt;&nbsp;For&nbsp;example,&nbsp;does&nbsp;it&nbsp;mean&nbsp;the&nbsp;bitbake&nbsp;core&nbsp;get&nbsp;the&nbsp;'PN&nbsp;=&nbsp;u-boot'&nbsp;by
&gt;&gt;&gt;&nbsp;cutting&nbsp;of&nbsp;the&nbsp;name&nbsp;of&nbsp;'u-boot_2011.03.bb'?
&gt;
&gt;If&nbsp;you&nbsp;want&nbsp;to&nbsp;know&nbsp;exactly&nbsp;where&nbsp;it&nbsp;happens,&nbsp;see&nbsp;bitbake.conf:
&gt;
&gt;PN&nbsp;=&nbsp;"${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0]&nbsp;or
&gt;'defaultpkgname'}"
&gt;PV&nbsp;=&nbsp;"${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1]&nbsp;or&nbsp;'1.0'}"
&gt;PR&nbsp;=&nbsp;"${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[2]&nbsp;or&nbsp;'r0'}"
Now i began to realize that my confusion seems due to a misunderstanding of the parsing procedure.</pre><pre>So the bitbake is NOT a ONE-TIME parsing file, it will be parsed again before parsing any bb file of the whole BBFILES set. </pre><pre>step_1: parsing bitbake.conf, parsing pakage1.bb</pre><pre>step_2: parsing bitbake.conf, parsing pakage2.bb</pre><pre>step_n: parsing bitbake.conf, parsing pakagen.bb</pre><pre>Is that correct?</pre><pre>&gt;</pre><pre>&gt;Ross
</pre></div>

------=_Part_82032_109797392.1357367047894--
