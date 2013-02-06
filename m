Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E4DE00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 08:40:33 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C8CEFF8123D; Wed,  6 Feb 2013 09:40:32 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B389AF8122A;
	Wed,  6 Feb 2013 09:40:31 -0700 (MST)
Message-ID: <51128785.5060206@mlbassoc.com>
Date: Wed, 06 Feb 2013 09:40:37 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: User id/group not quite right?
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
X-List-Received-Date: Wed, 06 Feb 2013 16:40:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Just checking on the X11 user 'xuser' which should be created
with a bunch of groups via this recipe snippet:
   USERADD_PARAM_${PN} = "--create-home \
                          --groups video,tty,audio \
                          --user-group xuser"

However, when I log in as 'xuser', I don't see them?
   login: xuser
   $ id
   uid=1001(xuser) gid=1001(xuser) groups=1001(xuser)
   $ grep xuser /etc/group
   tty:x:5:demo,xuser
   audio:x:29:demo,xuser,pulse
   video:x:44:demo,xuser
   xuser:x:1001:

They do seem to be set though:
   $ python
   Python 2.7.3 (default, Jan 15 2013, 10:27:28)
   [GCC 4.7.2] on linux2
T  ype "help", "copyright", "credits" or "license" for more information.
   >>> import os
   >>> os.getgroups()
   [5, 29, 44, 1001]

Looks like the busybox 'id' applet is broken?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

