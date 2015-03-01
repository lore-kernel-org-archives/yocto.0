Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C18E00522; Sat, 28 Feb 2015 16:14:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.1 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA07E0043B
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 16:14:54 -0800 (PST)
Received: by labge10 with SMTP id ge10so23969217lab.12
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 16:14:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=bBXFiEzrG4OGOExGiBFvvKQ/Cn9lF3UlR6+nXwdWX+g=;
	b=R4gXckVdAGdlF8eXed/Lc0LlslSb2VH1HQxFr7IbYaJFWTghfYrsGS6GasER/LNnps
	aEygsAm/XVc1LyaKflMkb1yB/j8jxVFofgeQH5zAzxVco47IaQnh4KpdT+/d3CN8V5dG
	dYJbxePkpfDk7unx/ZMwjlSVKpc7KUykHBoZ+0qugKWyADSWtWLdO9xuhYYOiEfjgUFw
	fE5PxNSrULL7rHBA4xKqT3D52D/mJmZ+oeKerLmxWvH3Wt/0e4ri7lctSXl5kD9s4obw
	N4xWty11nQvOhZl94721hh29kbg0TEz9hVFIbu54r2coR/XpQZTN7kVq/CtEraMXWbec
	6+0g==
X-Gm-Message-State: ALoCoQkQmn8L8W7pJnhp9dWItZgFHnJA1ZUpeoB0VoNiBmc53fq1LQV2bQx87LGMBhIxxD+zKuPY
X-Received: by 10.112.155.98 with SMTP id vv2mr18732202lbb.121.1425168893600; 
	Sat, 28 Feb 2015 16:14:53 -0800 (PST)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id ba1sm1701674lab.34.2015.02.28.16.14.51
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 28 Feb 2015 16:14:51 -0800 (PST)
Date: Sun, 1 Mar 2015 01:14:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150301001450.GC22308@gmail.com>
References: <cover.1424450237.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1424450237.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Sun, 01 Mar 2015 00:14:55 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello,

On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mabäcker wrote:
> The following changes since commit d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc:
>
>   README: Github repo changed (2015-02-14 02:00:57 +0100)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_layer_prio
>
> Petter Mabäcker (1):
>   layer.conf: set high layer priority
>
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch merged to master. Thanks Petter.

--
Andrei Gherzan

