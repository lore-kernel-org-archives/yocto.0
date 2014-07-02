Return-Path: <jenslucius@freenet.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CADE7E003D2; Tue,  1 Jul 2014 23:08:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jenslucius[at]freenet.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.4.92.93 listed in list.dnswl.org]
X-Greylist: delayed 890 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Jul 2014 23:08:29 PDT
Received: from mout3.freenet.de (mout3.freenet.de [195.4.92.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F160E0030B
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 23:08:29 -0700 (PDT)
Received: from [195.4.92.141] (helo=mjail1.freenet.de)
	by mout3.freenet.de with esmtpa (ID jenslucius@freenet.de) (port 25)
	(Exim 4.82 #1) id 1X2DU7-0006Ku-2t
	for yocto@yoctoproject.org; Wed, 02 Jul 2014 07:53:35 +0200
Received: from localhost ([::1]:43985 helo=mjail1.freenet.de)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim 4.82
	#1) id 1X2DU6-0006a6-V7
	for yocto@yoctoproject.org; Wed, 02 Jul 2014 07:53:35 +0200
Received: from mx10.freenet.de ([195.4.92.20]:49187)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim 4.82
	#1) id 1X2DS7-0005zV-3m; Wed, 02 Jul 2014 07:51:31 +0200
Received: from p579154b2.dip0.t-ipconnect.de ([87.145.84.178]:61697
	helo=[192.168.2.12])
	by mx10.freenet.de with esmtpsa (ID jenslucius@freenet.de)
	(TLSv1:DHE-RSA-AES128-SHA:128) (port 587) (Exim 4.82 #1)
	id 1X2DS6-0007se-Us; Wed, 02 Jul 2014 07:51:31 +0200
Message-ID: <53B39DCE.9060705@freenet.de>
Date: Wed, 02 Jul 2014 07:51:10 +0200
From: Jens Lucius <jenslucius@freenet.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Jate S <jatedev@gmail.com>, Yocto Project <yocto@yoctoproject.org>
References: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
In-Reply-To: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
X-Originated-At: 87.145.84.178!61697
X-Mailman-Approved-At: Sun, 06 Jul 2014 13:59:01 -0700
Subject: Re: python tkinter dependencies
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
X-List-Received-Date: Wed, 02 Jul 2014 06:08:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

It worked for me in my build env after trying several things.

I did setup a new yocto some while ago and actually had the same 
problems again.

There is a patch in python about tkinter (03-fix-tkinter-detection.patch).

I removed that, did a fresh rebuild of python (-c clean) and did a 
rebuild of my image (as no new image was written by building my image 
after rebuilding python).

Either of these did work for me, maybe somebody knows exactly which step :-)

Jens

Am 02.07.2014 05:41, schrieb Jate S:
> The python-tkinter module requires _tkinter. A result from a websearch
> suggested that I needed to make sure tk (from meta-oe/meta-oe) and tcl
> were installed before compiling python.
>
> I added a DEPENDS on the tk and tcl recipes to both python and
> python-tkinter in a python_2.7.3.bbappend. It did not work and was
> never built.
>
> I'm looking for tips to figure out what is going on. Thanks.
>
>
> - Jate S.


