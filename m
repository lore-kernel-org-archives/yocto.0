Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F310CE009B8; Mon, 27 Jul 2015 07:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFD1DE0094D
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 07:04:57 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 57917F81188; Mon, 27 Jul 2015 08:04:56 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D5C52F81188;
	Mon, 27 Jul 2015 08:04:55 -0600 (MDT)
Message-ID: <55B63A91.9000808@mlbassoc.com>
Date: Mon, 27 Jul 2015 08:05:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <55B27DC9.1090307@mlbassoc.com>
In-Reply-To: <55B27DC9.1090307@mlbassoc.com>
Subject: Re: Missing certificates
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
X-List-Received-Date: Mon, 27 Jul 2015 14:05:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-24 12:02, Gary Thomas wrote:
> I was trying to run a simple fetch from python using
>          url = 'https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg'
>          filedata = urllib2.urlopen(url).read()
>
> This failed:
>    Traceback (most recent call last):
>    File "./edge.py", line 36, in <module>
>      filedata = urllib2.urlopen(url).read()
>    File "/usr/lib/python2.7/urllib2.py", line 154, in urlopen
>      return opener.open(url, data, timeout)
>    File "/usr/lib/python2.7/urllib2.py", line 431, in open
>      response = self._open(req, data)
>    File "/usr/lib/python2.7/urllib2.py", line 449, in _open
>      '_open', req)
>    File "/usr/lib/python2.7/urllib2.py", line 409, in _call_chain
>      result = func(*args)
>    File "/usr/lib/python2.7/urllib2.py", line 1240, in https_open
>      context=self._context)
>    File "/usr/lib/python2.7/urllib2.py", line 1197, in do_open
>      raise URLError(err)
> urllib2.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:581)>
>
> I can see that it was looking for some certificates in /usr/lib/ssl/certs
> but that directory is missing.
>
> Anyone know what I might be missing (or have misconfigured)?
>
> Thanks
>

I've found a discussion about this problem on the OpenEmbedded
development list:
   http://lists.openembedded.org/pipermail/openembedded-devel/2015-July/102160.html

So the problem that this has uncovered is twofold:
1) Python (and OpenSSL) are not using the certificates that are installed by the ca-certificates package
    OpenSSL expects the certificates in /usr/lib/ssl/certs and ca-certificates uses /etc/ssl/certs
2) The certificates from ca-certificates are not immediately usable by OpenSSL since they are not
    hashed.  This is done by the 'c_rehash' program but has been explicitly disabled by a patch.
    Further exploration implies that this was disabled because not all targets will have c_rehash
    available and since the hashing is expected to be done on the target when the certificates
    are loaded/updated.  Finally, c_rehash, may or may not exist in the OpenSSL packages, depending
    on whether or not perl is available on the target (it's a perl script)

How best to solve this?  As is, python htts:// support is broken in OE-core, so I think an
off-the-shelf solution is warranted.

Perhaps the PACKAGECONFIG for openssl should default to supporting perl on the target, and hence
the c_rehash utility would be available?  Certainly the choice of where the certificates live, etc,
should be standardized.

Maybe the c_rehash can be run at package build time for ca-certificates?  This would make things work,
at least for the real CA certificates.

Ideas?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

