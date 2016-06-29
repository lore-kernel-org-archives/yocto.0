Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73E71E00CFC; Wed, 29 Jun 2016 09:32:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E91AE00C56
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 09:32:12 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id u68so30784123vkf.2
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 09:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eP/k6FdyhsCVcg5UIJty3VJjxUPwACMjZEMiAq5Kzu4=;
	b=q3+xib2Vt6QkCof/svku5l3i/AXsXJ/K01RECZH+NN0ecG336AGcOzndIvOT4fAoRC
	wEiYfTV303ag3MwNBqdBr4AEUuxIND8gXKtG09fbihossazgg5j0IDvKbzsfNsbcrWEc
	OOoTfiPUzFnad5QiO6/CpVE6Hk9NF8v6Lj7kK+tj3gnFJbZUFfeDTtbr3g0v1A+4ERAY
	el1uCQzIxEjYHBPaRzmRdyxY8icgNTqRStWAnGD/+0c9pjGrD533oa1sewvvcxGow8oa
	c2uR/v+69Q/OL2EbDg6CW61dBVW9Y4DmbeM5xFD2tFT9gg2amDzcebV91KiDxXXNgkSc
	yvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eP/k6FdyhsCVcg5UIJty3VJjxUPwACMjZEMiAq5Kzu4=;
	b=YCPPtbgwGYz6jrewm3wCBjhlF6jWu9SEi673yQgUkbAwVm248ZNT31XnUVa+WUihJD
	L4nHJ6Uon7ZjKMIf/C7qAopo78M8NlAupE01IZAu+791H0mlQ6nn/miG+iU6qenzVDrG
	W3xCV/F32yaQcHEC4nBYTIKCW1yNoHzl3C8FeWHTOQsyCZJf+o4M6on+9Iq1DzWMF3hO
	9TzNybesA7nU5mj+oe2BIrjG388vmuWoSudIbSG7G3obNNZLzpO9m0g+h+cA9yQYGj1i
	v6V767zE+2oLFh1u3ivy2EywP7GlujFR7IhSPmUy8gxw9/Wu/TG42QA0Ch2wjlvKx0nJ
	igiA==
X-Gm-Message-State: ALyK8tIxnpZElagIk05uE+z6r3lHZJ5BNbBFAI/p4rgDMscm5o4Kzon6Fo4hHmALkcC309OVy7jjSFfWYhtt5Q==
X-Received: by 10.176.66.130 with SMTP id j2mr4249265uaj.120.1467217931019;
	Wed, 29 Jun 2016 09:32:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 29 Jun 2016 09:32:10 -0700 (PDT)
In-Reply-To: <CAJTo0LaNmAhf8tRro-QJLd-TqPc4Xb7g++EADeA=qr6k6iccZQ@mail.gmail.com>
References: <CAF3SDA4bvG87u7GGfw5A3+xaSZ-OSKX+HZ1+1ckzm536CfdQcA@mail.gmail.com>
	<CAJTo0LaNmAhf8tRro-QJLd-TqPc4Xb7g++EADeA=qr6k6iccZQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 29 Jun 2016 13:32:10 -0300
Message-ID: <CAF3SDA6XNCzLkLpN9q9B14rok1g2kjr7VibZmpP_6z2K28K+gA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing python scripts at image
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
X-List-Received-Date: Wed, 29 Jun 2016 16:32:16 -0000
Content-Type: text/plain; charset=UTF-8

Hiiii

I replace /usr/bin/python by /usr/bin/evn python and the problem vanished :)
I found a email suggesting this at list's archives :).

Regards,

2016-06-29 12:09 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 29 June 2016 at 15:43, Daniel. <danielhilst@gmail.com> wrote:
>>
>> It seems that Yocto inspect the first line of scripts to grab this
>> dependency but fails to map /usr/bin/python to python-core (which is
>> already installed). How to make this work right?!
>
>
> Add a RDEPENDS_${PN} += "python-core python-modules".
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

