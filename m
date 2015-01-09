Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C735AE00828; Fri,  9 Jan 2015 10:26:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD9DE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 10:26:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 015BDF811DD; Fri,  9 Jan 2015 11:26:37 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9A30FF811D9;
	Fri,  9 Jan 2015 11:26:37 -0700 (MST)
Message-ID: <54B01D64.4000101@mlbassoc.com>
Date: Fri, 09 Jan 2015 11:26:44 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: libtool woes
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
X-List-Received-Date: Fri, 09 Jan 2015 18:26:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build a recipe which uses libtool.  The problem
I'm having is that the program uses glib-2.0 and one of the
libraries from that package has library dependencies.  This
is giving libtool major troubles.  I get errors like this:
   | sed: can't read =/usr/lib/libffi.la: No such file or directory
   | libtool: link: `=/usr/lib/libffi.la' is not a valid libtool archive

This is coming from libgobject-2.0.la which contains this line:
   dependency_libs=' =/usr/lib/libglib-2.0.la -lpthread -L=/usr/lib =/usr/lib/libffi.la'

The odd thing is that my recipe built the last time I tried,
but admittedly that was in late 2013.

Any ideas what I might be doing wrong or how to fix this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

