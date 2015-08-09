Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A21B5E00A6D; Sun,  9 Aug 2015 14:54:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39DADE00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:54:23 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so126945178wib.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:54:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=K+HTGDV61/1KRd4nZBVcJ/n5cDn214Vbky4PWurV97c=;
	b=f+MIMi2OXJ2yK4lmBAoCi4voh6g8zZhdO9e3G9ukQ22CbYbh5hL+g2zMBrBMePmpcA
	QmmsTkqvd4mLk+HIrQhmSf70VS+C0xPoTOKEVBiCdosEigLfqP+1qle8OIKWIW7qfJnE
	sZl7xOceHvcyHmYJnUkJbpjqcOYgShOnGP2fdq6JQcVGDHRPEiFzW+WiI42e45v6D89v
	DIXSaW9xSn61VI2oliVeqevqw9jmldVRARww4Z13a5W7ixKpIpGf+N8inFm66BpNVzrW
	s96Um/tNMXQ4oMCmmyrBHc7YbdiwhPDS8Le62Nb61KkCa7e9b1HR0HRpDYbHJoBPaPww
	ImBw==
X-Gm-Message-State: ALoCoQkXvcsfBrVLy8fGL87j9JR9StV3l6A979hlj7pjTXXXDbJx9nyoM4QkFd+a3hBEaagf6lb+
X-Received: by 10.194.238.39 with SMTP id vh7mr36325131wjc.109.1439157262855; 
	Sun, 09 Aug 2015 14:54:22 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ea2sm10545573wib.2.2015.08.09.14.54.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 14:54:22 -0700 (PDT)
Date: Sun, 9 Aug 2015 23:54:19 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20150809215419.GC17962@resin>
References: <1437479130-7065-1-git-send-email-gary@mlbassoc.com>
	<CALbNGRQk7o7_+B7rjY887Bm8MxbpD1dSmGtEG0-fA87A05YoRA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRQk7o7_+B7rjY887Bm8MxbpD1dSmGtEG0-fA87A05YoRA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image: Fix sdcard image generation
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
X-List-Received-Date: Sun, 09 Aug 2015 21:54:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Aug 09, 2015 at 11:20:13PM +0200, Andreas Müller wrote:
> On Tue, Jul 21, 2015 at 1:45 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> > Recent updates to the MSDOS tools (OE-core is now at 3.0.28) have made
> > it an error to overwrite an image using mkfs.vfat.  This patch fixes
> > that problem by removing any old/stale images, thus starting from scratch.
> >
> > Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> I meant to ping on this one.

Merged to master. Thanks.

--
Andrei Gherzan

