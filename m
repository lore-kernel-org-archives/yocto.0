Return-Path: <festevam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E122E00A99; Tue, 16 Dec 2014 08:06:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (festevam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5829EE008FB;
	Tue, 16 Dec 2014 08:06:29 -0800 (PST)
Received: by mail-lb0-f177.google.com with SMTP id b6so10728531lbj.8
	for <multiple recipients>; Tue, 16 Dec 2014 08:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hHxHLQGbEhT6ZTx7ZN5v+JDkxrsGlCvvL2JScolERWw=;
	b=0FBO8SCpbk+AUsvQfxG8KDhJIYcxrOaL1ZVnBdGTBgMSNhelIBjS+ElQP+sirlnO16
	Ponmipp2CuERuFZOIy3dV7jc+oTpcrEUQh6Zt6s1JR4kCAqAtMnLIu3ezseuyTn64sHf
	bNO+fV71qMaZ2CjdcmFE4Atgv6HV97z0gI/LkdtNFgcheT6RS745m74aS/xeuaRtMrDJ
	UNpdga5No4txYbhos67NVdLRZGuvvH1AlhAyeF4PeMNu8LvB+xrAFyaRVDSF6VZO3yY6
	OR17KsqX/whP3VuY55q2hUmyAVHRk5+x7oc46qeCOXPwZwnlQAUY+OKIf6H68qbH8PeB
	LXLw==
MIME-Version: 1.0
X-Received: by 10.112.38.4 with SMTP id c4mr36765779lbk.46.1418745988509; Tue,
	16 Dec 2014 08:06:28 -0800 (PST)
Received: by 10.152.179.137 with HTTP; Tue, 16 Dec 2014 08:06:28 -0800 (PST)
In-Reply-To: <7fefff1d862f4e9d8039fe81909a2de2@KCHJEXMBX02.kpit.com>
References: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
	<CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E48257EAAEC@SESTOEX04.enea.se>
	<7fefff1d862f4e9d8039fe81909a2de2@KCHJEXMBX02.kpit.com>
Date: Tue, 16 Dec 2014 14:06:28 -0200
Message-ID: <CAOMZO5AS26p6MFm3vcVDs66QWpfUv=zgcZ0tbFRPWC_2U5xrxQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
To: VIVEK VERMA <VIVEK.VERMA@kpit.com>
X-Mailman-Approved-At: Tue, 16 Dec 2014 08:53:38 -0800
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Tue, 16 Dec 2014 16:06:37 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 16, 2014 at 1:21 PM, VIVEK VERMA <VIVEK.VERMA@kpit.com> wrote:
> Hi All,
>
> I am using gstreamer to play wma files but  I am getting the error as follows.

You should have created a new thread about this issue.


> root@imx6dlsabresd:~# gst-launch -v playbin2 uri=file:///ano.wma
> Setting pipeline to PAUSED ...
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: ring-buffer-max-size = 0
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-size = -1
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-duration = -1
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: use-buffering = FALSE
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: download = FALSE
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: uri = "file:///ano.wma"
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: connection-speed = 0
> /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: source = (GstFileSrc) source
> ERROR: Pipeline doesn't want to pause.
> ERROR: from element /GstURIDecodeBin:uridecodebin0/GstFileSrc:source: Resource not found.

It can not find the file. You need to pass the full path, such as
uri=file:///home/user/ano.wma

