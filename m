Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D8C1E00C43; Tue,  5 Apr 2016 11:55:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86582E00C27
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 11:55:08 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id v126so3423422oia.3
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 11:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=nZbxcRHq5yTj8THYoO+3fg+vQPEnc2XQu7KdbJQFta4=;
	b=q1mdhHTiwCRQ0Rc1RsMj0e7AH/v5Bbc50O1Po4NqCYNL5pKunoh9qJTMrfWQlB5Axi
	HDhM/2WUmUuRlRyf/mDwpeJRqh115kmuHS0rRqSi5wWJkVjL7lVaQStHXXJVtA2AhJlo
	MT68vQaxYBnw8sBVNZfZYI/clYVZPJ4IkhuBFXSyB8BAjBcqqinTu/9YMCbTs5lTlo9T
	xYG7i275h6Jo1Ce3CFAdzaY0Gg2gWH9zEP6SmhNuJ6wNYG5KDeyBTd1DZyQpo0T/adt2
	hnKZCwNLKjf2Bw/ENV3HhwMPvwnghZV3ZabtnAHwn2Md58XAWeTvWicoePj1KUmrq3PZ
	ZA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=nZbxcRHq5yTj8THYoO+3fg+vQPEnc2XQu7KdbJQFta4=;
	b=EMp0zYHB34K9MUBhO4iJt6U4sFGAbMhEZ53fyZWpUEXLo12s9JPXRMwUiw+OKMR1b0
	9VwQ6CqDQO6GEoh0LH7CcPr4bHyq7AU8doQVetEw8f+8+S8NvP4Oaj9Xq3j2TU2ZKZYv
	nxg5nGqIbWa7GbM2cmUJBrNc3Ub7UUqNqR+YiwwcOkMHHwT7flj6LJVNSDvuOV0342su
	hThMhJBUlcUwtcDNiRe3s1lbtS1sD8PTuvOFFPXoDvFFbjGPcemGGKulN1qmkz80L6T4
	PbbcIk32d98ncsvExN76azZaeqsNR1uPeME3xz+iYUBqGo0QG1JggoUrIUwlDeCSa0PE
	Ag+A==
X-Gm-Message-State: AD7BkJLZMRxTQQfHywbQ77xpz6swcPjPq7PCKQRklxBA/JhBNDXW+qGwHdD8rOw1mEc3ekSlWP/K/4Ivi/B9xQ==
MIME-Version: 1.0
X-Received: by 10.157.15.196 with SMTP id m4mr16110048otd.79.1459882508304;
	Tue, 05 Apr 2016 11:55:08 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Tue, 5 Apr 2016 11:55:08 -0700 (PDT)
In-Reply-To: <25644105.gyxDGl902X@rjs-zotac.streifs.net>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
Date: Tue, 5 Apr 2016 12:55:08 -0600
Message-ID: <CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Tue, 05 Apr 2016 18:55:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm hand-transcribing the error (which still exists after recopying
the source files into build/downloads):

--

if test $? -ne 0; then \
     echo "generate-posix-vars failed" ; \
     rm -f ./pybuilddir.txt ; \
     exit 1 ; \
fi
Illegal instruction
make: *** [sharedmods] Error 132
WARNING: exit code 1 from a shell command.
ERROR: oe_runmake failed
ERROR: Function failed: do_install (log file is located at
/home/ron/yocto/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/temp/log=
.do_install.10995)

--

The log above this shows no errors, but there are some warnings.

Ron Oakes

On Tue, Apr 5, 2016 at 10:50 AM, Rudolf J Streif
<rudolf.streif@gmail.com> wrote:
> Hi Ron,
>
> On Tuesday, April 05, 2016 10:37:07 AM Ronald Oakes wrote:
>> When I try to build either emulated or real 64 bit distributions on an
>> isolated system running Debian 8.0.3 (using BB_NO_NETWORK =3D "1"),
>> utilizing a downloads directory copied from a system running Centos
>> 7.2.1511, I get a failure in the do_install step for Python.
>>
>
> Could you please post the error message from the log file of the install =
task for Python?
>
>> I plan on recopying Python.tar.xz onto my isolated station and trying
>> again.  But, if this doesn't resolve the problem are there any
>> suggestions?
>>
>
> Considering that according to your info above the failure occurs during t=
he install task, the source package is most likely not the culprit. However=
, the source tarball should be named something like Python-2.7.11.tar.xz wh=
ich includes the version number.
>
>> For what it is worth, we're probably going to be moving to newer, but
>> still isolated, build stations shortly.  These new stations will be
>> running RedHat instead of Debian if that might make a difference.
>>
>
>> Thank You
>>   Ron Oakes
>>
>
>
> Best regards,
> Rudi

