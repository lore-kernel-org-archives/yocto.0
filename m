Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA6D4E00857; Wed, 28 Mar 2018 06:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FAF1E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:53:38 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id o5so2432406qki.11
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=StpsTUcHCBt0wEp0LpGzOi2BAk/1wM1nqkA9eIFtzww=;
	b=pF73ykZqVUwRzCUXiYNl0nzkTqFvC0qLqlM5Keh7SVBJXeSBvb73XP3cuCcubUkUfG
	MLhVqXDbpti0WlJ54Cp6tS8Uxsv0XzorydjMonZgfk0FHs8JYy0HreIpNqAiqyizUNKu
	kH+Vj9Z1TV3VGbxxGofIVV3gWPPK6b2m4Z41C7qHwXvh8ao1A7CbyB9X5de49whsHFnh
	dCyom3QUJMOUjyqIPZcMLCOlaZc5xH2iK/vr0pUSXbpNYhSC+EIGGuepxCfSYK/eW0C3
	dn95mySHdQR21cHyR3zTyta1eaR2U8PxF8PLddxihM8P22iwttRHbdYC2iHThpdmlb7A
	appA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=StpsTUcHCBt0wEp0LpGzOi2BAk/1wM1nqkA9eIFtzww=;
	b=EQFvmvBXm+boPOis/AiAJ7yT7kGpG/HjKEobCEisSLElmW/P/7ZErGYcwd8mogIEs9
	MNghD7ca1eMOvX7m1RBRqnWNdruFjOXxw9Gmf1rCbGMahoCsXz0wCGuBQjrbXUA5mu8w
	tXTCSnL/6NAJzCwM76xCmV+DoiXQ2B6yBUg6wBtt+7VyoRLlFftixf/sFs3JbCOpukNQ
	sMs5S3aYLLeCpFIiUt1P+lf+onsxadWMT1IUlYyEHztN8W5yBiqBhUYtuKc18hFtN0Ng
	oIVLmnJ/WQWmNiXujjg2qOOEa8tTJ5rAyPu1Wpmle6m889i6ig1IKdMJqOJlU1j4Y+dj
	llLg==
X-Gm-Message-State: ALQs6tBiM4q8pfxeD2d0YwOvYIFJSV1/KGmVS/9rFFu98gqUOGdVA1gl
	ghBH+KerqiutiD/JykyYuEp6Y0nZNK0qffs8izI=
X-Google-Smtp-Source: AIpwx48qvxrbBIOVKM67rg+VSTQH1GfHtLNUkHC0r0GU87709am2uCp1M0pZnJX4nHOGMe43pX5COIGjX6yBA0nMjKI=
X-Received: by 10.55.215.139 with SMTP id t11mr5160063qkt.90.1522245216850;
	Wed, 28 Mar 2018 06:53:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.130.100 with HTTP; Wed, 28 Mar 2018 06:53:36 -0700 (PDT)
In-Reply-To: <c35b19d8-7e06-57bb-12ad-3a78a6293794@intel.com>
References: <CAGAf8Lyfz2oZ9EgWmZ1km4qQn-Kdaqh_1q+jvfv1anR-HLZXiw@mail.gmail.com>
	<c35b19d8-7e06-57bb-12ad-3a78a6293794@intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Mar 2018 15:53:36 +0200
Message-ID: <CAGAf8LwSpCjP+vr=bRUQmz9V5+nHLP-1uGTzR3oAXf1j2pUryA@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ssh-copy-id is part of which package?
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
X-List-Received-Date: Wed, 28 Mar 2018 13:53:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Anuj,

This is very correct. Thank you for the answer. Anyway, I have
complicated configuration, so YOCTO copy-ssh-id does not work from
client to server, but vice versa is very OK.

In this case, server is VM, and client DUT hardware, in between there
is transparent host. Host and VM are working via ports forwarding
(unidirectionally from host to VM).

I need to dive more into this problem, but all ingredients are there for now.

Zoran
_______

On Wed, Mar 28, 2018 at 1:30 PM, Anuj Mittal <anuj.mittal@intel.com> wrote:
> Hi Zoran,
>
> On 03/28/2018 07:18 PM, Zoran Stojsavljevic wrote:
>> Hello to all,
>>
>> Seems, that command:
>> IMAGE_INSTALL_append = " openssh"
>>
>> Does install ssh, sshd, but not a ssh-copy-id?!
>>
>> Strange... ssh-copy-id should be part of the openssh!?
>>
>> http://lists.openembedded.org/pipermail/openembedded-commits/2015-January/170233.html
>>
>> root@beaglebone:/root# which ssh-copy-id
>> root@beaglebone:/root# which ssh
>> /usr/bin/ssh
>> root@beaglebone:/root# which sshd
>> /usr/sbin/sshd
>> root@beaglebone:/root#
>
> You can try:
>
> oe-pkgdata-util find-path "/*ssh-copy-id"
>
> which gives me:
>
> openssh-misc: /usr/bin/ssh-copy-id

