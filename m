Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3858E00A3C; Fri, 24 Jul 2015 11:02:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95609E00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 11:02:45 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CE8AEF811D8; Fri, 24 Jul 2015 12:02:44 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 50490F811D8;
	Fri, 24 Jul 2015 12:02:44 -0600 (MDT)
Message-ID: <55B27DC9.1090307@mlbassoc.com>
Date: Fri, 24 Jul 2015 12:02:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Missing certificates
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
X-List-Received-Date: Fri, 24 Jul 2015 18:02:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I was trying to run a simple fetch from python using
         url = 'https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg'
         filedata = urllib2.urlopen(url).read()

This failed:
   Traceback (most recent call last):
   File "./edge.py", line 36, in <module>
     filedata = urllib2.urlopen(url).read()
   File "/usr/lib/python2.7/urllib2.py", line 154, in urlopen
     return opener.open(url, data, timeout)
   File "/usr/lib/python2.7/urllib2.py", line 431, in open
     response = self._open(req, data)
   File "/usr/lib/python2.7/urllib2.py", line 449, in _open
     '_open', req)
   File "/usr/lib/python2.7/urllib2.py", line 409, in _call_chain
     result = func(*args)
   File "/usr/lib/python2.7/urllib2.py", line 1240, in https_open
     context=self._context)
   File "/usr/lib/python2.7/urllib2.py", line 1197, in do_open
     raise URLError(err)
urllib2.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:581)>

I can see that it was looking for some certificates in /usr/lib/ssl/certs
but that directory is missing.

Anyone know what I might be missing (or have misconfigured)?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

