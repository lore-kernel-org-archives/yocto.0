Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3DD7E00D5C; Thu, 28 Sep 2017 17:44:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E9F8E00D4D
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 17:44:14 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id i131so439070wma.0
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 17:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Xy0jVSNPEoTCTmAQYxkzS2FS21soz4RKcVcYb0XWUMY=;
	b=fhy/czQmvs8BsXSf0GR4dLynsjBmWIKCmC+rCM1CI96cmEbRqu+7yH1/RnqCIq9+74
	Do5mQkfcoGE8AhYNg3K0+TLVuSevKX4xfJPua1yP3GWvUXf9F19wETT8V9MpS+8fS1NT
	e3WImBa+Yktv/InlXvbyiMkyGIfRU1UO7eRPKvWO5y7tIYah8zSZRqQhDNysNutGwYk8
	s6ntxnCSb7Vbg8iAYRJbKAS3M9kRdJLlQi9JJ85kQ8PiNBzC1OJwEts5mwY+vjuv+Up5
	9UKrlsdpCRQBIIkB7Tt2Cc2iha8zgyKwrvaS4XShkfhnRK5jl2XchQ/eVqQmeXXH7ptI
	x0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Xy0jVSNPEoTCTmAQYxkzS2FS21soz4RKcVcYb0XWUMY=;
	b=gWITwJLTq228NKS5epdm4p7Ih1w1RzIFxvcHiTOvURgJjkoF+UDnPKdbym5RP9iU25
	0VuzF01LQ7No55MiUb/LaTbNF6m917fhOon5feHXuofR82tFw9YHnbnpJXGbRdQWSDKU
	1evYw6rOG/xL1soyvCNoQxZLvhn+onXbhLkPLMF9q0et8wLlI2DGcvMp/imumHU4gaJS
	EovxKH8QMEFvNqeoI8iUBpO9WpIszykdQDRxkkP4mEYzaai+9ACp5zSt/AH+riUnmmLo
	eGD8hyz3uMiTOh9TKNsEUKjcTC2HtyqOkXcNB26MR4hmFXlMUF3+IB8FIob7cBH9Br6H
	pbJw==
X-Gm-Message-State: AHPjjUjblBNLTbUfojSAFzP3GeFSRKMJbSXoGLVg2QCvfohksESFl0kL
	G6BPNKk1PoiaJoM/8m/cDuP7vh0zGn8ym3mCXSK/BQ==
X-Google-Smtp-Source: AOwi7QARSNXc1eZ4KDB48wSVgNsJ1KBzcJ+kRZRWjRyVd9bXPpjeThTdysDbo9i1eoFhPwruMXX5bxxkxFudXO47WA0=
X-Received: by 10.28.65.8 with SMTP id o8mr2709802wma.146.1506645853993; Thu,
	28 Sep 2017 17:44:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.136.204 with HTTP; Thu, 28 Sep 2017 17:44:13 -0700 (PDT)
In-Reply-To: <CAJ86T=W262WSB0Mx+ban2OkXk6_reL3j+j7wHH1Kk_dnkcPcTg@mail.gmail.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
	<CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
	<1A69A446-50D3-4FE2-AC3E-4B26099B9EB5@korgrd.com>
	<13953290.7vapLMCcyK@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=W262WSB0Mx+ban2OkXk6_reL3j+j7wHH1Kk_dnkcPcTg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 28 Sep 2017 17:44:13 -0700
Message-ID: <CAJ86T=UU_xDTNwSqR2EhLDT4zHgY8hVhMjfj=1D_+dYRkD57kg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Steve Pavao <stevep@korgrd.com>
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Fri, 29 Sep 2017 00:44:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2017 at 5:11 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Thu, Sep 28, 2017 at 3:30 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Hi Steve,
>>
>> On Friday, 29 September 2017 5:29:32 AM NZDT Steve Pavao wrote:
>>> I was unable to successfully build that recipe here, though.  I=E2=80=
=99ll check
>>> with the maintainers to ask why.
>>>
>>> All I did was clone the meta-intel-iot-middleware repo, add that layer =
to
>>> bblayers.conf, and add mdns to IMAGE_INSTALL_append to get this far.
>>
>> FYI the meta-intel-iot-middleware repository is no longer being actively
>> maintained, however coincidentally I am currently in the process of upda=
ting
>> and moving the useful pieces elsewhere. mdns wasn't on my list, however =
I have
>> just tried to fix it up, here is what I have so far:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/comm=
it/?h=3Dpaule/mdns-upgrade-1&id=3D7389dd6b1d3e69a05b8fa62673ba03b2a91073ff
>>
>> Unfortunately I hit a linking issue - the dns-sd binary gets linked to t=
he
>> unversioned libdns_sd.so symlink,
>
> If the lib isn't versioned, what does the symlink point to?

OK, so the lib is versioned (ie there is a libdns_sd.so.1 which the
symlink points to) but the problem is that libdns_sd.so.1 doesn't set
a soname. Fix would be to add:

  -Wl,-soname,libdns_sd.so.1

to the linker command line when libdns_sd.so is linked.

