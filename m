Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F79E00827; Sun, 25 Jan 2015 13:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02EB9E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 13:24:39 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id b13so5988676wgh.9
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 13:24:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=B4VP6DDNvNOkL7hzAocO0qSgEuIkFrNUmyWeCJiIR1U=;
	b=UzcfjF5tPLnW7p21xJKvaWXtcYg63fEDepP2oxeC9zHIh40f3r0RscJB0CA+n6x9Fc
	tTiWg6aS8vYlTYaAOwDm3RYNc5mcTqpaEdzuZAQMUZnIwRDI24qy+GQVqyg+eMds30C2
	E+uajSaY3DAQi5kpOZ1Z8mqZhPVguVmzCWtkCHIVYTCyolAUPSMPLMj/JJ6DLk4r5bux
	o5GNz+XvVcPh22HuspaM0lY51Yqr6MEEMM2j34/hxjQY9MVqaib8bZfg7GEWY4eQRIH8
	MZB8tSZvPp0/3EBhLTzqSkCL32mxNUQU2n1mzzre6IY0ZSp4tTOaWB2oKXnSEyO+dkUm
	3e/w==
X-Gm-Message-State: ALoCoQm259GVfj1vWk3YJTNz7bK5xKZ9v35+VXQAb+A8Jw0Plv616Snlf3dhv5aOiPLMnYOvkqiq
X-Received: by 10.180.82.10 with SMTP id e10mr16198919wiy.18.1422221077797;
	Sun, 25 Jan 2015 13:24:37 -0800 (PST)
Received: from gmail.com ([109.100.140.128])
	by mx.google.com with ESMTPSA id n6sm11646723wjy.8.2015.01.25.13.24.36
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 25 Jan 2015 13:24:37 -0800 (PST)
Date: Sun, 25 Jan 2015 23:24:30 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150125212430.GA10452@gmail.com>
References: <cover.1421360572.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1421360572.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/2] linux-raspberrypi fixes
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
X-List-Received-Date: Sun, 25 Jan 2015 21:24:54 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Jan 15, 2015 at 11:32:51PM +0100, Petter Mabäcker wrote:
> The following changes since commit 6c6f44136f7e1c97bc45be118a48bd9b1fef1072:
>
>   gstreamer1.0-plugins-bad: Making bbappend version independent (2014-11-20 12:32:36 +0100)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi_fixes
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_fixes
>
> Petter Mabäcker (2):
>   linux-raspberrypi: fix do_configure failure
>   linux-raspberrypi: faulty branch and srcrev for 3.16

Merged to master. Thanks.

--
Andrei Gherzan

