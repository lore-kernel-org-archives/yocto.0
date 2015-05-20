Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39393E005B9; Wed, 20 May 2015 08:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA5A5E0027F
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 08:37:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 20 May 2015 08:37:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,465,1427785200"; 
	d="scan'208,217";a="697831170"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.36])
	([10.219.4.36])
	by orsmga001.jf.intel.com with ESMTP; 20 May 2015 08:37:29 -0700
Message-ID: <555CAA84.30805@linux.intel.com>
Date: Wed, 20 May 2015 10:38:44 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1432112441117.48793@inedasystems.com>
In-Reply-To: <1432112441117.48793@inedasystems.com>
Subject: Re: Usage of apt-get package in yocto
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
X-List-Received-Date: Wed, 20 May 2015 15:37:31 -0000
Content-Type: multipart/alternative;
	boundary="------------030806080904070002040504"

--------------030806080904070002040504
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Hi Raghavendra,

On 20/05/15 04:01, Raghavendra Kakarla wrote:
> Hi,
>
>
> I have some requirement with apt-get in yocto genearted rootfs.
>
>
> I built the yocto source code with enabling the apt package.
>
>
> But after booting the image on my machine and run the "apt-get" command for installing some package it gives the following error.
>
>
> Could not open the file /var/lib/dpkg/status open(2: no such a file or directory).
>
> The package lists or status files could not be parsed or opened.
This error is because you need to add package-management to 
EXTRA_IMAGE_FEATURES in local.conf,

PACKAGE_CLASSES ?= "package_deb"
EXTRA_IMAGE_FEATURES = "debug-tweaks package-management"

Regards,
     alimon
>
>
> Could you please help me for resolving this issue.
>
>
> Regards,
>
> Raghavendra K.
>
>
>


--------------030806080904070002040504
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    Hi Raghavendra,<br>
    <br>
    <div class="moz-cite-prefix">On 20/05/15 04:01, Raghavendra Kakarla
      wrote:<br>
    </div>
    <blockquote cite="mid:1432112441117.48793@inedasystems.com"
      type="cite">
      <pre wrap="">Hi,


I have some requirement with apt-get in yocto genearted rootfs.


I built the yocto source code with enabling the apt package.


But after booting the image on my machine and run the "apt-get" command for installing some package it gives the following error.


Could not open the file /var/lib/dpkg/status open(2: no such a file or directory).

The package lists or status files could not be parsed or opened.</pre>
    </blockquote>
    This error is because you need to add package-management to
    EXTRA_IMAGE_FEATURES in local.conf,<br>
    <br>
    PACKAGE_CLASSES ?= "package_deb"<br>
    EXTRA_IMAGE_FEATURES = "debug-tweaks package-management"<br>
    <br>
    Regards,<br>
        alimon<br>
    <blockquote cite="mid:1432112441117.48793@inedasystems.com"
      type="cite">
      <pre wrap="">


Could you please help me for resolving this issue.


Regards,

Raghavendra K.

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------030806080904070002040504--
