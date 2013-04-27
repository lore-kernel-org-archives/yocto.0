Return-Path: <paul.betafive@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 915A5E0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 10:36:24 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id j6so4928668oag.37
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 10:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=Pf8LTFC0gcoKVq8yKKLWfcX6fWDjSxiid0dVsiK+9sE=;
	b=LyEcwNiXamb0K452d3JVwtTnWAUkl401d3WAMqxKlXIvgZrrXiPgSdA0bjQs4suLxX
	XY2BTOSpOv21qB7W/gVECNNuDq3KSRLl+/QiX0HMAJDi7GSrqJDQqgm5W4qdjg0utToM
	XaDdxT5MTnVC31D7FNNh1ivqIJ9Tt9Wezk+j8XPqqZj+gQMwjXb+MXTgqhEd2BdCU4h/
	lh+mHC/bk2+zWQRLOJyKzlGuUql4YA7gkJ0v40cHDXzyOyDpHcr1rg5iN4Xfd9FwMLUJ
	Jfu+sRWJt4mKZUpqiqeSPi5AEjTHoppTbKk2uS7neQ3PMX76GofX7bfHGJOtnPXeCes/
	+npg==
MIME-Version: 1.0
X-Received: by 10.60.93.74 with SMTP id cs10mr15599833oeb.21.1367084183602;
	Sat, 27 Apr 2013 10:36:23 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.76.2.72 with HTTP; Sat, 27 Apr 2013 10:36:23 -0700 (PDT)
In-Reply-To: <FC66ADE8-A836-49F2-AA2C-34137FEE9FBE@gmail.com>
References: <1367080224.63818.YahooMailNeo@web161503.mail.bf1.yahoo.com>
	<FC66ADE8-A836-49F2-AA2C-34137FEE9FBE@gmail.com>
Date: Sat, 27 Apr 2013 18:36:23 +0100
X-Google-Sender-Auth: N6-kTNIz9PHskpGHsLeMA876DFo
Message-ID: <CANyK_8cJKmMcaihOoPxoVoepioeT8KsGvXk2p=Xx-mwqoi5Prg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to clear all?
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
X-List-Received-Date: Sat, 27 Apr 2013 17:36:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 27 April 2013 18:21, Khem Raj <raj.khem@gmail.com> wrote:
>
> rm -rf tmp/
> configurations are kept outside. tmp/

You may also need to get rid of 'pseudodone' (as pseudo is kept under
'tmp' and will need rebuilding), 'cache' and 'sstate-cache'.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

