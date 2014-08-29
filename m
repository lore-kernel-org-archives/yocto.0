Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B831E00798; Fri, 29 Aug 2014 04:56:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B61AE006B3
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 04:56:44 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id h136so1513758oig.5
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 04:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=y8K7ZspSfzRBtX2n7tOlwglklv5cfkI/SHOqBIduUsI=;
	b=itSp09ypVBjpSgNgXA0WnfXuBoNbEI+pH7GiHrHMI0FVCfHbO9vn/hoggpEppSHM/H
	AtF8ZS8xMl/chKMbebEsTUY2R4AeUxlORJxdYVLAzrD5Wti+GvBFHdysdngut2cLn1qH
	YX/7Tv/ML6IL7ey3VPdrQcMxYJBf5jmJ8HN9rSUwedpbGjRygy3RXj9d/ri4XSZhJr+5
	OlIxxcK+EmQYNj9AWLUKdzgarOD+Mrxcfgl/lJMlEQIOxYwuvC8DqiuM8b8yxl9+0IfJ
	4ye1E5VjyZnVuwWAG9TkEOD1/clIvU6pntisL3m8mO4pLDsYwvGdbFFcH+7CmVy5w2sz
	Re4w==
X-Gm-Message-State: ALoCoQmOEplZMLAhAXxRIooemtwO9kkEOuWc/zLpr2zAn803YRQoWPZA9t2HV8AA5+mDwUhhb0gj
X-Received: by 10.182.46.225 with SMTP id y1mr9397669obm.51.1409313403509;
	Fri, 29 Aug 2014 04:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Fri, 29 Aug 2014 04:56:22 -0700 (PDT)
In-Reply-To: <CAAVZOXv=DHRiAPa+XvUVGSVNE8PAApbeKrDpV-e22THRY8ukMg@mail.gmail.com>
References: <CAAVZOXv=DHRiAPa+XvUVGSVNE8PAApbeKrDpV-e22THRY8ukMg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 29 Aug 2014 13:56:22 +0200
Message-ID: <CAP71WjzE4TNJ1gzg0mdcBtQ5cPF4rHvJ=Mp+uFBBh_VZQEBnMw@mail.gmail.com>
To: Thomas Roos <thomas@roosesweb.de>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: bitbake svn fetch download folder conflicts
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
X-List-Received-Date: Fri, 29 Aug 2014 11:56:49 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 29, 2014 at 1:22 PM, Thomas Roos <thomas@roosesweb.de> wrote:
> Hi, I have several recipes checkout from one svn repo (same and other
> subfolders) - there are sometimes svn command conflicts. I guess it's
> because all svn data is stored in ONE FOLDER eg.
> downloads/svn/ip/reponame/folder and concurred svn command instances
> access this folder at the same time.
> Is there an solution for this?For instance an parameter to specify a
> tmp folder for an svn repo. Or global option to store svn repos
> locally by recipe names they used in.
> any help would be wonderful!
> thank you, cheers Thomas
>
> P.S: think of same svn subfolders with different revisions as well!!!


not a very helpful answer... but i have faced the same issue and just
created artificial dependencies to avoid the 2 fetch tasks to run
concurrently... e.g. if x.bb and y.bb both fetch from same SVN repo,
in y.bb:

do_fetch[depends] += "x:do_fetch"

it's a poor's man workaround... but that might help..

cheers

