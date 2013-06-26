Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE18E013B0
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 09:12:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 69FD4F811FB; Wed, 26 Jun 2013 10:12:37 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D84B5F811FA;
	Wed, 26 Jun 2013 10:12:36 -0600 (MDT)
Message-ID: <51CB12F8.5090203@mlbassoc.com>
Date: Wed, 26 Jun 2013 10:12:40 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Strange IPK naming
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
X-List-Received-Date: Wed, 26 Jun 2013 16:12:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a target machine whose name contains a '-', e.g. MACHINE="xyz-99"
When I build packages, the tmp/deploy/ipk directory is munged to be
tmp/deploy/ipk/xyz_99

Can someone tell me why this happens (where)? and can I do something
about it?  It makes it hard to set up the package database (/etc/opkg/base-feeds.conf)
automatically in my image.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

