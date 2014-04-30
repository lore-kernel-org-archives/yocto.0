Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CDB5E004EB; Wed, 30 Apr 2014 02:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [72.5.230.103 listed in list.dnswl.org]
X-Greylist: delayed 1176 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 02:25:51 PDT
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBBA9E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 02:25:51 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:subject:date:message-id:user-agent:in-reply-to:mime-version:content-type;
	b=iF25IMFf/SdV0C3vmadCV6xv8hbyyGarBd2QnliEwFp7iKnWT089o9PRZClnuWQjttU1A0jc7+Es
	GU9MuIR706cwou2Lrv+iH04ic7Xjs/XmZGMZrygQXrKzcc6YdjB0  
Received: from localhost.localdomain
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1398848748786402.2683790002085;
	Wed, 30 Apr 2014 02:05:48 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Apr 2014 11:05:45 +0200
Message-ID: <2326013.q8IGgAdBSl@localhost.localdomain>
User-Agent: KMail/4.12.4 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <2019960.0Ttd8yjkFA@localhost.localdomain>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Zoho-Virus-Status: 2
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
X-List-Received-Date: Wed, 30 Apr 2014 09:25:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

> I'd like to update the glmark2 recipe:
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmark
> /glmark2/glmark2_2012.12.bb to latest upstream version.
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
> gles2 are present I obtain "--with-flavors=x11-gl,x11-glesv2" as the
> configure parameter?

Hi,

Can anybody help me with that?

Thanks,
Diego


