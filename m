Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02B02E00B20; Tue,  3 Jun 2014 08:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAE88E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 08:46:31 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id j7so5019481qaq.17
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 08:46:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=efMOR2lRa34VoVUThHGEmJEnjrz8fi15CyUQwJj6EOI=;
	b=OWy7JDW0Uk2VLnHZ6zoWAo37+3TwaL44/DLHae1Se3/SiP35iVIFt+BSUVL/4WD7S5
	vI5dWF4f5E9lVY9Th5H8Z+YJTNu/zsAE3OyX9+T10wxGVcd+I80DqaTmdMlNrp+g/AJT
	Rs6Qu3+dz+sOgbi6uY8uyeHJlaOd2hFUGOd6n0Iu2/vaiXRl+R0UMXmbphRuQZLSUc9/
	6FdIi7dV/vFYjU9NzyKHdY9wmcLRT4unANgGjZeUzZ8D1LCk7IeF3zaZ3tVjbYOeYE8f
	ptWrqE+mcT1XSa/v5wvWSpc7AY1s/cE4HvNOY/oohLG4lcSmSER/2Xn5OU8ZwamshHDi
	qkSQ==
X-Gm-Message-State: ALoCoQkTQR/DJSJc3uF4OvosocbLRBIiNFeGANLVpAQlG/vWpDvoyBhiBnIhyyXQyjGQUWjcO6PD
X-Received: by 10.140.25.37 with SMTP id 34mr58494088qgs.60.1401810390593;
	Tue, 03 Jun 2014 08:46:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Tue, 3 Jun 2014 08:46:10 -0700 (PDT)
In-Reply-To: <CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Jun 2014 16:46:10 +0100
Message-ID: <CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
To: Kashyap Gada <gada.kashyap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Tue, 03 Jun 2014 15:46:41 -0000
Content-Type: text/plain; charset=UTF-8

On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission denied

The permissions on that file don't involve +x.  Is that a fresh
checkout of poky or copied from the removable media?

Ross

