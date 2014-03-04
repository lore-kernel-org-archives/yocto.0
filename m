Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60DA8E009A0
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:38:14 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id if11so4378754vcb.36
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 06:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=0Eu1uqCobF4kgRlkDpi/SkZGuYGRYpkG1eeFcXw6Rdc=;
	b=WzImJhv3YcOQEeUoNj+xi/rMC/t2T4sm4imdvkpBkvG4aDOudPiIZ03hJbW2YmMoM5
	yI6w/camCD2upLzIueGM1lTsCGLL50q8EnzzSrE+1kznKQStdDXyVSLcV8LuzFKIlPn/
	syTLEl+5TGLPHBETI1VDnTbHfeS5xxuVO7le7xtswd1+bCxZCOy4xj56uwLEA+XFo83n
	o5tu9YjKLr3z/xbA9xmXulfpq0wuouL5/P2myo2SkqPnVUrs/vhomtS4Nv2DfKfsBaxT
	KfrtSo9xWId49rGqc6DIy9asnxBd3GlJsjwcTkcjWQRjUZJD6/OEWDou1z7EeIhOLwZ3
	GdmQ==
X-Received: by 10.220.249.6 with SMTP id mi6mr2783215vcb.33.1393943893297;
	Tue, 04 Mar 2014 06:38:13 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Tue, 4 Mar 2014 06:37:33 -0800 (PST)
In-Reply-To: <1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<5315DC71.3080904@dynamicdevices.co.uk>
	<1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 4 Mar 2014 14:37:33 +0000
X-Google-Sender-Auth: ZBEFuj10mRgYAtLeGL_dIZT6ZpQ
Message-ID: <CANyK_8fGoQe1XaeU+Kt_CAiba2bUb9kKyu4KDCvXWXuzj5SBvg@mail.gmail.com>
To: Joel Parker <joelparker27@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add Packages to Recipie
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
X-List-Received-Date: Tue, 04 Mar 2014 14:38:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 4 March 2014 14:22, Joel Parker <joelparker27@yahoo.com> wrote:
>
> Yeah, that is what I tried but it gave me this :
>
> ERROR: 'httpd' in IMAGE_FEATURES is not a valid image feature.
>
> -- Joel Parker
>

IMAGE_FEATURES is for features (basically collections of packages put
together in a certain way), IMAGE_INSTALL is for packages and
packagegroups. You can use IMAGE_INSTALL_append to add to
IMAGE_INSTALL from your local.conf, but you're far better off creating
a new image recipe and setting IMAGE_INSTALL there.

You may want to read the relevant section of the documentation at
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage.

To find the names to add to IMAGE_INSTALL, you can search the recipe
index at http://layers.openembedded.org/layerindex/branch/master/recipes/.
Note that you may need to change the "Branch" selector to whatever
version of The Yocto Project you're using.

Hope this helps,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

