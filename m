Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E29DBE00A51; Fri, 24 Jul 2015 13:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67118E00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 13:02:26 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 24 Jul 2015 13:02:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,540,1432623600"; d="scan'208";a="529766953"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.5.54])
	([10.219.5.54])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2015 13:02:25 -0700
Message-ID: <55B299D3.8040302@linux.intel.com>
Date: Fri, 24 Jul 2015 15:02:27 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <55B27DC9.1090307@mlbassoc.com> <55B2926F.4010608@linux.intel.com>
	<55B296CA.6000404@mlbassoc.com>
In-Reply-To: <55B296CA.6000404@mlbassoc.com>
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
X-List-Received-Date: Fri, 24 Jul 2015 20:02:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 24/07/15 14:49, Gary Thomas wrote:
> On 2015-07-24 13:30, Aníbal Limón wrote:
>> Hi Gary,
>>
>> What version of python do you use?.
>>
>> Since 2.7.9 cert checking is enabled by default causing this kind of 
>> errors. [1]
>>
>> [1] https://www.python.org/dev/peps/pep-0476/
>>
>> Kind regards,
>>      alimon
>
> I'm using the stock python 2.7.9 from Poky/Yocto 
> master:901be2cb69892595443ed41ab4be285932db15eb
>
> Is there an answer for this that's a bit less intrusive?
> Perhaps there could be a DISTRO or even IMAGE feature to
> enable/disable this checking?

I don't think that Python guys include a configuration flags to disable 
this behavior because it's
the default now due to security issues.

>
> The pep you referenced mostly talks about why this was changed
> and how to disable it - manually within the python code itself.
> What I don't see is where/how/what to change/import to actually
> let the full certificate checking happen.

You can use this code for disable per urlopen call or globally [1].

Regards,
     alimon

[1] https://www.python.org/dev/peps/pep-0476/#opting-out

>
>>
>> On 24/07/15 13:02, Gary Thomas wrote:
>>> I was trying to run a simple fetch from python using
>>>         url = 
>>> 'https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg'
>>>         filedata = urllib2.urlopen(url).read()
>>>
>>> This failed:
>>>   Traceback (most recent call last):
>>>   File "./edge.py", line 36, in <module>
>>>     filedata = urllib2.urlopen(url).read()
>>>   File "/usr/lib/python2.7/urllib2.py", line 154, in urlopen
>>>     return opener.open(url, data, timeout)
>>>   File "/usr/lib/python2.7/urllib2.py", line 431, in open
>>>     response = self._open(req, data)
>>>   File "/usr/lib/python2.7/urllib2.py", line 449, in _open
>>>     '_open', req)
>>>   File "/usr/lib/python2.7/urllib2.py", line 409, in _call_chain
>>>     result = func(*args)
>>>   File "/usr/lib/python2.7/urllib2.py", line 1240, in https_open
>>>     context=self._context)
>>>   File "/usr/lib/python2.7/urllib2.py", line 1197, in do_open
>>>     raise URLError(err)
>>> urllib2.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] 
>>> certificate verify failed (_ssl.c:581)>
>>>
>>> I can see that it was looking for some certificates in 
>>> /usr/lib/ssl/certs
>>> but that directory is missing.
>>>
>>> Anyone know what I might be missing (or have misconfigured)?
>>>
>>> Thanks
>>>
>


