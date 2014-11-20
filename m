Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A24AE008F2; Thu, 20 Nov 2014 04:03:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6F59E0087D
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:03:09 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id k14so3456965wgh.38
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:03:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=3ctlIePKhKbKtovhBKaEeQmis3njHu7iOtE0i0KYHUc=;
	b=mRmIR1rWkaGYrgmiqwN5QD+BnOif5BGg+kmZkhzekUWjV7o6ujNG086F0mN7FdZbFH
	RIOaH3VaACrEZpsOTIcF6iF5QhkDV6tKuae7rs36bGzN2tQ/ixWCAY3u+WnYErBd0Sf7
	+rmvUItKpvJNhfDW7jxF0gg2VEJWLaPee1Mnl/3PgkD4ZTA8A0qLM5dWx8f9jaZJdJh/
	wZewPWoDpf8tu3MIb7ZPAOiurHgyZLeG9zcyeerYsvzmjYbJJoDs8b978kudy2ckom+p
	dFccgUdOdCm9WkydIoxwmiNVbsfz5Sx2Y06NLH7f8vySOay178R0ff6xBfdAjpKtAtmH
	VZuQ==
X-Gm-Message-State: ALoCoQk5iTrEUZzP1TB6/W8vf9XBodP1VLw+QzLxWG26+EJOVcE1NCRhL0CX5OMJ9/n1zMF+NvaI
X-Received: by 10.194.82.74 with SMTP id g10mr40219705wjy.116.1416484988134;
	Thu, 20 Nov 2014 04:03:08 -0800 (PST)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id cq4sm3054112wjc.35.2014.11.20.04.03.07
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 04:03:07 -0800 (PST)
Date: Thu, 20 Nov 2014 13:03:05 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Laurentiu Palcu <lpalcu@gmail.com>
Message-ID: <20141120120305.GC24610@gmail.com>
References: <1413732355-15761-1-git-send-email-lpalcu@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1413732355-15761-1-git-send-email-lpalcu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: raname bbappend to work with any version in oe-core
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
X-List-Received-Date: Thu, 20 Nov 2014 12:03:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Sun, Oct 19, 2014 at 06:25:55PM +0300, Laurentiu Palcu wrote:
> Signed-off-by: Laurentiu Palcu <lpalcu@gmail.com>
> ---
>  ...bappend => gstreamer1.0-plugins-bad_%.bbappend} |    0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-multimedia/gstreamer/{gstreamer1.0-plugins-bad_1.4.0.bbappend => gstreamer1.0-plugins-bad_%.bbappend} (100%)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> similarity index 100%
> rename from recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
> rename to recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> --
> 1.7.9.5
>

A similar patch was merged. Thanks.

--
Andrei Gherzan

