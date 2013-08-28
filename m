Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99D5BE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 01:35:31 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cQ0dZ0mwBz3hkNl
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:35:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3cQ0dY3bbnzbbg3
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:35:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id 1EJLWuETe7N5 for <yocto@yoctoproject.org>;
	Wed, 28 Aug 2013 10:35:24 +0200 (CEST)
X-Auth-Info: quwIJExqrVk06lEL2it1/PPaAwSHNlotzfziWVPyO5A=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:35:24 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Wed, 28 Aug 2013 08:35:24 +0000
MIME-Version: 1.0
Date: Wed, 28 Aug 2013 10:35:24 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <CAMS2kBGuQmZKUVvSvtcZepwi2ZV7b8guwnRYfNbHY2CEhyNQmw@mail.gmail.com>
References: <CAMS2kBGuQmZKUVvSvtcZepwi2ZV7b8guwnRYfNbHY2CEhyNQmw@mail.gmail.com>
Message-ID: <c1e66496426f28fccffb0d3bb1ea99bf@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.3
Subject: Re: Syntax for specifying multiple URI's in a PREMIRRORS statement?
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
X-List-Received-Date: Wed, 28 Aug 2013 08:35:33 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2013-08-27 17:19, schrieb Glenn Schmottlach:
> I'm trying to figure out the syntax for specifying more than one URI
> in a single PREMIRROR statement, e.g.
> 
> PREMIRRORS_append = "git://.*/.* file://toplevel/premirror
> ftp://ftp.acme.com/pre_mirror/foo [1] n"
> 
> So for all "git" fetches I want it to *first* look in a local
> premirror directory and if the file is not found there then try to
> fetch from an FTP server. How do you separate the two destination URIs
> to search? I tried a space ' ' and semi-colon but neither appear to
> work. Is the syntax documented somewhere. Can anyone provide a
> suggestion?
> 
> 
> Links:
> ------
> [1] ftp://ftp.acme.com/pre_mirror/foo
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi, interesting question IMHO. Istn't there also 'MIRRORS' which you can 
set as a fallback? The documentation says (in faq.xml):
"When the build system searches for source code, it first tries the 
local download directory. If that location fails, Poky tries PREMIRRORS 
the upstream source, and then MIRRORS in that order."

BR,
Lothar Rubusch

