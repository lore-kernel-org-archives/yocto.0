Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7E42E00757; Sun, 15 Mar 2015 22:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4510BE006B5;
	Sun, 15 Mar 2015 22:07:51 -0700 (PDT)
Received: by igcqo1 with SMTP id qo1so31418904igc.0;
	Sun, 15 Mar 2015 22:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LO+azIBm66Z+V1uqnz2PmErJjaXFEldHOu52d5nduH8=;
	b=cAL1t2GVuWvG3qarE3gp6oazpTPx+ovM8XC5t7ZtqbSE/W4D+LBixChOUM32LXHbZl
	mOv5+koCPkn6iD7Mp4DEGvoMU78HM5s7Cpe1WMGuliHv8cQoAOByd4M+ElLUri8VMenN
	WlOC3ZvnpIQ+YJzKv7+5tr5HbpYacraraKPtLXXLf+0zQVEYxKxYUcXGsqb106aoXjS1
	Ow5DLS7CiDqCpNXBVlylJ14rZqzvqg26l5yQRzMnS6AATzAQZT2KMUBq10I6s6+F2wHi
	XQX93JQK/S2BsKGJil4zpRhPU8M2j5dzcU3a9JUBAQ/sFYq18qKpeHdEjldRlLZ7ye4S
	+2BA==
X-Received: by 10.50.126.6 with SMTP id mu6mr10697843igb.4.1426482470918; Sun,
	15 Mar 2015 22:07:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Sun, 15 Mar 2015 22:07:19 -0700 (PDT)
In-Reply-To: <CALTPfpETOT6nuGb1Yfh-urip95sK=SxHwvnZoq3c1KBJw+u2Qg@mail.gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
	<1426175606.12716.5.camel@besquive-mobl.amr.corp.intel.com>
	<CALTPfpGvW3mkeMq0ncWot-8LiUyf+c3xbi2TPfkh0CJLCzfiAQ@mail.gmail.com>
	<CALTPfpHo8gStEcBYzjTe_+x1ihxJ7HPDyDBe_ZyLh5GyvH9U-g@mail.gmail.com>
	<CALTPfpGB_fJPEiXvBzhV+QqzVhMRxuQFfRDoXJntfSjfQcTXPA@mail.gmail.com>
	<CAMKF1srYz3YXeo0dJii2H5SrT6GG4inFyPw13VYAymwjSaLO+w@mail.gmail.com>
	<CALTPfpETOT6nuGb1Yfh-urip95sK=SxHwvnZoq3c1KBJw+u2Qg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 Mar 2015 22:07:19 -0700
Message-ID: <CAMKF1sqTV=SqaU3YHk9-f2dVeKyEKWMY_TYgS_XBbKQBihPWUw@mail.gmail.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Yocto-builds] Linking of external libraries in the recipe
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
X-List-Received-Date: Mon, 16 Mar 2015 05:07:53 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 15, 2015 at 10:03 PM, Priya Agarwal
<priya_agarwal@students.iitmandi.ac.in> wrote:
> EXTRA_OECONF_append = "    LDFLAGS = "-L/usr/lib/" \
>             LIBS="-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman
> -lusdpaa_qbman -lusdpaa_syscfg" \
>             CXXFLAGS="-I/usr/include/""

you missed '=' before /usr/lib and /usr/include specs there. '=' makes
is sysroot relative

