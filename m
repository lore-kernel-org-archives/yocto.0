Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE36FE00873; Tue, 13 Jan 2015 06:52:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E47E00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:52:07 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id hn15so3473551igb.3
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=hEaCjvimTGNC3OkqIhT9PG+avlK87zzn3T1SeSdCGgU=;
	b=PBEdgC8qkJPwtMKGLPS770v1DaLTvlOTTJUQY+vx1+sXHbES+iKf540kMbs6wewQa1
	I5i5HIfPcINCQtJEfpi0CZ2pqwjzcCVTVhq4yw1d/IptTbfoKx9F+0efr6r8u8SAencK
	Vc0Y70uROx1FYilFpmO7r7GRwnfrRctwNU4eFHXeiT0+egR7H9fbepjFnb+VdT2fKgKJ
	iRKLCSvkhlUe1bkWdizwug0gXVzUsb1QJ8F4tcXNqVR5nWRpYXG0DJPzSnrgTfZAqPPL
	xRGVU7ikEvK0Ew+XHqos2QCkUjtjZlYc8HQ05+6MvL9bAwI6ELD0ceZ5zyGqQ+O8WLtM
	sC/w==
X-Received: by 10.107.152.144 with SMTP id a138mr3149393ioe.39.1421160726850; 
	Tue, 13 Jan 2015 06:52:06 -0800 (PST)
Received: from [192.168.141.85] ([66.49.166.169])
	by mx.google.com with ESMTPSA id kt1sm6175859igb.20.2015.01.13.06.52.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jan 2015 06:52:05 -0800 (PST)
Message-ID: <54B53112.6050302@gmail.com>
Date: Tue, 13 Jan 2015 09:52:02 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 14:52:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/13/15 09:28, Rifenbark, Scott M wrote:
> I am seriously considering dumping the PDF manuals for the 1.8 release.  The PDF output is less than good and there seems to have been no enthusiasm for this form during the past 4 years.  Comments?

I tend to generate PDFs from git://git.yoctoproject.org/yocto-docs and
read those. So as long as I can still generate these on my own I'll be
okay with whatever changes work for you.

