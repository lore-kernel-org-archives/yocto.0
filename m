Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6F68E00C5F; Wed, 16 Jan 2019 11:49:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59786E00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 11:49:07 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0GJmTbf016023
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Jan 2019 11:48:40 -0800
Received: from [128.224.56.218] (128.224.56.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 16 Jan 2019 11:48:19 -0800
To: Sam Zeter <samuelzeter@gmail.com>, <yocto@yoctoproject.org>
References: <CAAShK94whbMmErVf6j7xjbjfzW7tRD4QP=tanf2c7U7Sh++Ytg@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <0c803733-b074-5d0f-fbdc-53d47b9830d4@windriver.com>
Date: Wed, 16 Jan 2019 14:48:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAAShK94whbMmErVf6j7xjbjfzW7tRD4QP=tanf2c7U7Sh++Ytg@mail.gmail.com>
X-Originating-IP: [128.224.56.218]
Subject: Re: Firewalld failing to build
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
X-List-Received-Date: Wed, 16 Jan 2019 19:49:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 1/16/19 12:47 AM, Sam Zeter wrote:
> Hello all,
> 
> I've been attempting to build firewalld by adding it through 'devtool 
> add ' and then 'devtool build firewalld'. However, I am stuck with the 
> following errors. I have no idea what could be causing this. Could 
> someone please help?
> 
> xsltproc -o ../html/firewall-cmd.html --nonet --xinclude  
> transform-html.xsl firewall-cmd.xml
> | xsltproc -o ../html/firewalld.dbus.html --nonet --xinclude  
> transform-html.xsl 
> ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.dbus.xml
> | xsltproc -o ../html/firewalld.conf.html --nonet --xinclude  
> transform-html.xsl 
> ../../../../../../../../workspace/sources/firewalld/doc/xml/firewalld.conf.xml
> | xsltproc -o ../html/firewalld.html --nonet --xinclude  
> transform-html.xsl firewalld.xml
> | 134 translated messages, 281 untranslated messages.
> | bn_IN: 293 translated messages, 122 untranslated messages.
> | ca: 415 translated messages.
> | cs: 415 translated messages.
> | da: warning: failed to load external entity "authors.xml"
> | firewall-cmd.xml:36: parser error : Failure to process entity authors
> |     &authors;
> |              ^
> | firewall-cmd.xml:36: parser error : Entity 'authors' not defined
> |     &authors;
> |              ^
> | warning: failed to load external entity "seealso.xml"
> | firewall-cmd.xml:2297: parser error : Failure to process entity seealso
> |   &seealso;
> |            ^
> | firewall-cmd.xml:2297: parser error : Entity 'seealso' not defined
> |   &seealso;
> 
> Thanks
> Sam.
> 

Hi Sam,

Can you post your recipe?

Do you have all the dependencies listed on:
    https://github.com/firewalld/firewalld

What branch & commit are you based on?

When we looked at adding a firewalld recipe 3+ years ago
it didn't work out since the package wasn't cross-compile
friendly but things have changed since then so I'm looking
forward to see what can be achieved.


-- 
# Randy MacLeod
# Wind River Linux

