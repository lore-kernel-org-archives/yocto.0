Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CCAEE00B66; Tue, 17 Jun 2014 13:54:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01C3E00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:54:45 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id dc16so9878474qab.15
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=h1GYZfAwXwYBI56BgOGP5NH8Pk/6AHnk2InMyqIYX+0=;
	b=ADig71vSQunxLKPqoET/n7ltwK2qGmSZpsRD6vO43/WJ//HkrACW7M/AoMx1RnNgr4
	m2jGtvDAv2+DjcpaNxwF8q4/MB8HZrlR04dz79kRlpXMv8XTmTHjjFd44D5iB8lEfher
	9inHrYFWAgmlfoHndGdM0nu+MpW0o+PU+EL3hvRDtoOhiZhNDsyumcuTHBvn/SYiO97u
	JoeAHhgUPQfZTf4adC7YYJSvnvnxJijbLdlFxYZCkPZomWQI7zO7ekcPrsHOyQjaBVqp
	MX+u/j7YiysWAJ9mcdTnrPdprFvLYDtMNkFVmpi8rQgU77dl/2tgQuzm4pEybBdAeJLo
	b8KQ==
X-Gm-Message-State: ALoCoQkvPAob1veIyqjoEsT93aPMjI0I37+litfalUyNtCKEdBlLiD770ES9qSfQUE8hGmjxjk2C
X-Received: by 10.140.25.37 with SMTP id 34mr38651224qgs.60.1403038485210;
	Tue, 17 Jun 2014 13:54:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Tue, 17 Jun 2014 13:54:25 -0700 (PDT)
In-Reply-To: <CACzyEJ-cuXazzEDHpiVx-ad1jMaBvFL6AX8vDk-YVbPnEJ031A@mail.gmail.com>
References: <CACzyEJ-cuXazzEDHpiVx-ad1jMaBvFL6AX8vDk-YVbPnEJ031A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Jun 2014 21:54:25 +0100
Message-ID: <CAJTo0LZo9EbHG2Nc8=5zZQMFfidMQh2fPLPyHWSOT0kC9LDmrQ@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: how to disable shell access
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
X-List-Received-Date: Tue, 17 Jun 2014 20:54:52 -0000
Content-Type: text/plain; charset=UTF-8

On 17 June 2014 21:23, Insop Song <insop.song@gmail.com> wrote:
> 2. how to block shell access but to open for debugging access
> For this, I could think of that we could block ssh access and only open console.
> Or opening ssh for a hidden port only.

The Raumfeld multi-room audio system has a neat solution for this: you
insert a USB stick with a special file to enable the SSH daemon.  The
filename is a md5sum, presumably a hash of something along the lines
of "open sesame".  This is their magic "root me" button, as root has
no password.

Ross

