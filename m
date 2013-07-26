Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC9BE0152B
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:06:13 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e15so1135258vbg.3
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=zPU6ATpO7//kmO8Dcx7AmCfqWMLPdJV5JcQ6uAVMMp8=;
	b=je0TgFAxrlksGp2ydPDGH93/CMHwL4aQhpHjXkqNzTXBxGU2i+NqGyN+zNxT9Km078
	tOQr3Goam32RWDr1BMDUDp16aO05kQGOSAb3HLO7YBHy1xTGSGs9cVc5MvV80P6zC2kZ
	1WaK7B9VOtCFwBUbFNK07JjfokX0MCYJ/+Qf1xYIDPMm+imR+T3SaMonZfG32+DdwMb4
	F9rE32ZWDT2/GbjpEhoF2Ai7LYNyDMXhUIweHqOIg/ZExCNmi8qLnHSoWjVPbvtJE7Kh
	OaqXEamx+Fj1b5wkFUADvMYizP4LtTTs50t2bRyeRTf67hn/koQC+QW8hDHxp44d8nvp
	rPFA==
X-Received: by 10.52.185.101 with SMTP id fb5mr7501728vdc.1.1374836773254;
	Fri, 26 Jul 2013 04:06:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 04:05:53 -0700 (PDT)
In-Reply-To: <CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 12:05:53 +0100
Message-ID: <CAJTo0Lb4bhnj5cwySn145dosZnGxubNS5B9P_LbOqrEii5ks1Q@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
X-Gm-Message-State: ALoCoQkxopbTGEeK9rvBY/rA0cQFSEMa8WLl3ZyCrm/iXtEfzLN0g7up5XP/9W6vt8CT2rjPDfTo
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:06:14 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 11:57, Laszlo Papp <lpapp@kde.org> wrote:
> Actually, I also have problems with Debian stable? See the bugreports I
> sent. It is mentioned as "supported distribution". Yet, it does not work. I
> do not to follow the parallelism with Arch accordingly.

The words I were careful to use were "normal configuration".  A chroot
isn't "normal" and needs careful attention to get the details right
(such as a working /dev, /sys /dev/shm).  If you can't get this
configured correctly you may have more luck with a more featureful
container such as systemd-nspawn or KVM, where the guest actually
boots and can set itself up.

Ross

