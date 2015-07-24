Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C10C3E00A3C; Fri, 24 Jul 2015 12:49:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0C1AE00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 12:49:26 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B0ABFF811DE; Fri, 24 Jul 2015 13:49:25 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 12373F81188;
	Fri, 24 Jul 2015 13:49:25 -0600 (MDT)
Message-ID: <55B296CA.6000404@mlbassoc.com>
Date: Fri, 24 Jul 2015 13:49:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <55B27DC9.1090307@mlbassoc.com> <55B2926F.4010608@linux.intel.com>
In-Reply-To: <55B2926F.4010608@linux.intel.com>
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
X-List-Received-Date: Fri, 24 Jul 2015 19:49:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-07-24 13:30, Aníbal Limón wrote:
> Hi Gary,
>
> What version of python do you use?.
>
> Since 2.7.9 cert checking is enabled by default causing this kind of errors. [1]
>
> [1] https://www.python.org/dev/peps/pep-0476/
>
> Kind regards,
>      alimon

I'm using the stock python 2.7.9 from Poky/Yocto master:901be2cb69892595443ed41ab4be285932db15eb

Is there an answer for this that's a bit less intrusive?
Perhaps there could be a DISTRO or even IMAGE feature to
enable/disable this checking?

The pep you referenced mostly talks about why this was changed
and how to disable it - manually within the python code itself.
What I don't see is where/how/what to change/import to actually
let the full certificate checking happen.

>
> On 24/07/15 13:02, Gary Thomas wrote:
>> I was trying to run a simple fetch from python using
>>         url = 'https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg'
>>         filedata = urllib2.urlopen(url).read()
>>
>> This failed:
>>   Traceback (most recent call last):
>>   File "./edge.py", line 36, in <module>
>>     filedata = urllib2.urlopen(url).read()
>>   File "/usr/lib/python2.7/urllib2.py", line 154, in urlopen
>>     return opener.open(url, data, timeout)
>>   File "/usr/lib/python2.7/urllib2.py", line 431, in open
>>     response = self._open(req, data)
>>   File "/usr/lib/python2.7/urllib2.py", line 449, in _open
>>     '_open', req)
>>   File "/usr/lib/python2.7/urllib2.py", line 409, in _call_chain
>>     result = func(*args)
>>   File "/usr/lib/python2.7/urllib2.py", line 1240, in https_open
>>     context=self._context)
>>   File "/usr/lib/python2.7/urllib2.py", line 1197, in do_open
>>     raise URLError(err)
>> urllib2.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed (_ssl.c:581)>
>>
>> I can see that it was looking for some certificates in /usr/lib/ssl/certs
>> but that directory is missing.
>>
>> Anyone know what I might be missing (or have misconfigured)?
>>
>> Thanks
>>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

